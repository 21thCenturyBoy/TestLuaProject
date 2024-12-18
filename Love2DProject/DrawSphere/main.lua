-- main.lua

-- 定义旋转角度
local angleX = 0
local angleY = 0

-- 定义旋转速度
local rotationSpeed = math.pi / 180 * 2  -- 每次按键旋转2度

-- 定义球体的参数
local sphere = {
    vertices = {},
    edges = {},
    latitude = 20,   -- 纬度分段数
    longitude = 20,  -- 经度分段数
    radius = 1       -- 球体半径
}

-- 初始缩放比例（会根据 FOV 动态调整）
local scale = 150  -- 初始缩放比例

-- 视距（控制观察者离球体的距离）
local distance = 3  -- 初始视距

-- 视场角（FOV）以弧度表示
local fov = math.rad(60)  -- 初始 FOV 为 60 度
local fovStep = math.rad(5)  -- 每次按键调整 5 度

-- 窗口大小
function love.load()
    love.window.setMode(800, 600)
    love.graphics.setBackgroundColor(0, 0, 0)  -- 设置黑色背景
    love.graphics.setLineWidth(2)  -- 设置线条宽度

    generateSphere()
    scale = calculateScale()
end

-- 生成球体的顶点和边
function generateSphere()
    local index = 1
    local vertexMap = {}

    -- 生成顶点
    for lat = 0, sphere.latitude do
        local theta = math.pi * lat / sphere.latitude  -- 从0到π
        for lon = 0, sphere.longitude do
            local phi = 2 * math.pi * lon / sphere.longitude  -- 从0到2π
            local x = sphere.radius * math.sin(theta) * math.cos(phi)
            local y = sphere.radius * math.sin(theta) * math.sin(phi)
            local z = sphere.radius * math.cos(theta)
            table.insert(sphere.vertices, {x = x, y = y, z = z})
            vertexMap[lat] = vertexMap[lat] or {}
            vertexMap[lat][lon] = index
            index = index + 1
        end
    end

    -- 生成边
    for lat = 0, sphere.latitude do
        for lon = 0, sphere.longitude do
            local current = vertexMap[lat][lon]
            -- 连接到下一个经度
            if lon < sphere.longitude then
                local nextLon = vertexMap[lat][lon + 1]
                table.insert(sphere.edges, {current, nextLon})
            else
                -- 连接到起始经度（闭合）
                local nextLon = vertexMap[lat][0]
                table.insert(sphere.edges, {current, nextLon})
            end

            -- 连接到下一个纬度
            if lat < sphere.latitude then
                local nextLat = vertexMap[lat + 1][lon]
                table.insert(sphere.edges, {current, nextLat})
            end
        end
    end
end

-- 计算缩放比例基于 FOV
function calculateScale()
    -- 使用简单的透视投影公式
    -- scale = (屏幕宽度 / 2) / tan(FOV / 2)
    return (love.graphics.getWidth() / 2) / math.tan(fov / 2)
end

-- 透视投影函数
function project(vertex)
    local z = vertex.z + distance
    -- 防止除以零或负数（物体在观察者后方）
    if z <= 0 then z = 0.1 end
    local projection = {
        x = (vertex.x / z) * scale + love.graphics.getWidth() / 2,
        y = (vertex.y / z) * scale + love.graphics.getHeight() / 2
    }
    return projection
end

-- 旋转矩阵，绕X轴旋转
function rotateXMatrix(angle, vertex)
    local cosA = math.cos(angle)
    local sinA = math.sin(angle)
    return {
        x = vertex.x,
        y = vertex.y * cosA - vertex.z * sinA,
        z = vertex.y * sinA + vertex.z * cosA
    }
end

-- 旋转矩阵，绕Y轴旋转
function rotateYMatrix(angle, vertex)
    local cosA = math.cos(angle)
    local sinA = math.sin(angle)
    return {
        x = vertex.x * cosA + vertex.z * sinA,
        y = vertex.y,
        z = -vertex.x * sinA + vertex.z * cosA
    }
end

-- 处理键盘输入和更新旋转角度、视距和FOV
function love.update(dt)
    -- 处理旋转
    if love.keyboard.isDown("left") then
        angleY = angleY - rotationSpeed * dt
    end
    if love.keyboard.isDown("right") then
        angleY = angleY + rotationSpeed * dt
    end
    if love.keyboard.isDown("up") then
        angleX = angleX - rotationSpeed * dt
    end
    if love.keyboard.isDown("down") then
        angleX = angleX + rotationSpeed * dt
    end

    -- 控制视距
    if love.keyboard.isDown("=") or love.keyboard.isDown("+") then  -- 按 `+` 键
        distance = distance - 0.5 * dt  -- 让观察者靠近物体
    end
    if love.keyboard.isDown("-") then  -- 按 `-` 键
        distance = distance + 0.5 * dt  -- 让观察者远离物体
    end

    -- 限制视距范围，防止视距过小或过大
    distance = math.max(1, math.min(10, distance))

    -- 控制视场角（FOV）
    if love.keyboard.isDown("a") then
        fov = fov + fovStep * dt  -- 增加 FOV，广角
    end
    if love.keyboard.isDown("d") then
        fov = fov - fovStep * dt  -- 减少 FOV，变窄
    end

    -- 限制 FOV 范围，通常 FOV 在 30 到 120 度之间
    fov = math.max(math.rad(30), math.min(math.rad(120), fov))

    -- 更新缩放比例基于当前 FOV
    scale = calculateScale()
end

-- 绘制球体
function love.draw()
    love.graphics.setColor(1, 1, 1)  -- 设置白色线条

    -- 旋转顶点
    local rotated = {}
    for i, vertex in ipairs(sphere.vertices) do
        local rX = rotateXMatrix(angleX, vertex)
        local rXY = rotateYMatrix(angleY, rX)
        rotated[i] = rXY
    end

    -- 投影顶点到屏幕
    local projected = {}
    for i, vertex in ipairs(rotated) do
        projected[i] = project(vertex)
    end

    -- 绘制边
    for _, edge in ipairs(sphere.edges) do
        local startPoint = projected[edge[1]]
        local endPoint = projected[edge[2]]
        love.graphics.line(startPoint.x, startPoint.y, endPoint.x, endPoint.y)
    end

    -- 显示当前 FOV 和视距
    love.graphics.setColor(1, 1, 1)  -- 白色文字
    love.graphics.print(string.format("FOV: %.1f°", math.deg(fov)), 10, 10)
    love.graphics.print(string.format("Distance: %.1f", distance), 10, 30)
    love.graphics.print("Controls:", 10, 50)
    love.graphics.print("Rotate: Arrow Keys", 10, 70)
    love.graphics.print("Zoom In/Out: + / -", 10, 90)
    love.graphics.print("FOV: A / D", 10, 110)
end
