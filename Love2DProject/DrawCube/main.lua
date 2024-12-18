-- main.lua

-- 定义旋转角度
local angleX = 0
local angleY = 0

-- 定义旋转速度
local rotationSpeed = math.pi / 180 * 2  -- 每次按键旋转2度

-- 定义立方体的顶点（以表格形式存储，每个顶点有x, y, z坐标）
local vertices = {
    {x = -1, y = -1, z =  1},
    {x =  1, y = -1, z =  1},
    {x =  1, y =  1, z =  1},
    {x = -1, y =  1, z =  1},
    {x = -1, y = -1, z = -1},
    {x =  1, y = -1, z = -1},
    {x =  1, y =  1, z = -1},
    {x = -1, y =  1, z = -1},
}

-- 定义立方体的边（连接顶点的索引）
local edges = {
    {1, 2}, {2, 3}, {3, 4}, {4, 1},  -- 前面
    {5, 6}, {6, 7}, {7, 8}, {8, 5},  -- 后面
    {1, 5}, {2, 6}, {3, 7}, {4, 8},  -- 连接前后面
}

-- 初始缩放比例（会根据 FOV 动态调整）
local scale = 150  -- 初始缩放比例

-- 视距（控制观察者离立方体的距离）
local distance = 3  -- 初始视距

-- 视场角（FOV）以弧度表示
local fov = math.rad(60)  -- 初始 FOV 为 60 度
local fovStep = math.rad(5)  -- 每次按键调整 5 度

-- 窗口大小
function love.load()
    love.window.setMode(800, 600)
    love.graphics.setBackgroundColor(0, 0, 0)  -- 设置黑色背景
    love.graphics.setLineWidth(2)  -- 设置线条宽度
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

-- 计算缩放比例基于 FOV
function calculateScale()
    -- 使用简单的透视投影公式
    -- scale = (屏幕宽度 / 2) / tan(FOV / 2)
    return (love.graphics.getWidth() / 2) / math.tan(fov / 2)
end

-- 投影到2D屏幕（透视投影）
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

-- 处理键盘输入
function love.update(dt)
    -- 检测按键并调整旋转角度
    if love.keyboard.isDown("left") then
        angleY = angleY - rotationSpeed
    end
    if love.keyboard.isDown("right") then
        angleY = angleY + rotationSpeed
    end
    if love.keyboard.isDown("up") then
        angleX = angleX - rotationSpeed
    end
    if love.keyboard.isDown("down") then
        angleX = angleX + rotationSpeed
    end

    -- 控制视距
    if love.keyboard.isDown("=") or love.keyboard.isDown("+") then  -- 按 `+` 键
        distance = distance - 0.1  -- 让观察者靠近物体
    end
    if love.keyboard.isDown("-") then  -- 按 `-` 键
        distance = distance + 0.1  -- 让观察者远离物体
    end

    -- 限制视距范围，防止视距过小或过大
    distance = math.max(0.5, math.min(10, distance))

    -- 控制视场角（FOV）
    if love.keyboard.isDown("a") then
        fov = fov + fovStep  -- 增加 FOV，广角
    end
    if love.keyboard.isDown("d") then
        fov = fov - fovStep  -- 减少 FOV，变窄
    end

    -- 限制 FOV 范围，通常 FOV 在 30 到 120 度之间
    fov = math.max(math.rad(30), math.min(math.rad(120), fov))

    -- 更新缩放比例基于当前 FOV
    scale = calculateScale()
end

-- 绘制立方体
function love.draw()
    love.graphics.setColor(1, 1, 1)  -- 设置白色线条

    -- 旋转顶点
    local rotated = {}
    for i, vertex in ipairs(vertices) do
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
    for _, edge in ipairs(edges) do
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