local Players = game:GetService("Players")

local function satixHub()
    local player = Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:WaitForChild("Humanoid")

    -- Funções automáticas
    local function autoFarm() while true do task.wait(1) end end
    local function autoSell() while true do task.wait(1) end end
    local function autoBuy() while true do task.wait(1) end end
    local function autoFish() while true do task.wait(1) end end
    local function autoFarmSea() while true do task.wait(1) end end
    local function autoBlock() while true do task.wait(1) end end
    local function autoAttack() while true do task.wait(1) end end
    local function autoDodge() while true do task.wait(1) end end
    local function autoHeal() while true do task.wait(1) end end
    local function autoAim() while true do task.wait(1) end end
    local function autoHitbox() while true do task.wait(1) end end

    -- Criar menu
    local function satixMenu()
        local menu = Instance.new("ScreenGui")
        menu.Name = "SatixMenu"
        menu.ResetOnSpawn = false
        menu.Parent = player:WaitForChild("PlayerGui")

        -- Criar botão genérico
        local function createButton(name, posY, callback)
            local button = Instance.new("TextButton")
            button.Size = UDim2.new(0.2, 0, 0.05, 0)
            button.Position = UDim2.new(0.05, 0, posY, 0)
            button.Text = name
            button.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
            button.TextColor3 = Color3.fromRGB(255, 255, 255)
            button.Parent = menu
            button.MouseButton1Click:Connect(callback)
        end

        -- Botões
        createButton("Auto Farm", 0.1, autoFarm)
        createButton("Auto Sell", 0.16, autoSell)
        createButton("Auto Buy", 0.22, autoBuy)
        createButton("Auto Fish", 0.28, autoFish)
        createButton("Auto Farm Sea", 0.34, autoFarmSea)
        createButton("Auto Block", 0.40, autoBlock)
        createButton("Auto Attack", 0.46, autoAttack)
        createButton("Auto Dodge", 0.52, autoDodge)
        createButton("Auto Heal", 0.58, autoHeal)
        createButton("Auto Aim", 0.64, autoAim)
        createButton("Auto Hitbox", 0.70, autoHitbox)
    end

    -- Botão para abrir o menu
    local function satixMenuButton()
        local menuButton = Instance.new("TextButton")
        menuButton.Parent = player:WaitForChild("PlayerGui")
        menuButton.Size = UDim2.new(0.15, 0, 0.05, 0)
        menuButton.Position = UDim2.new(0.8, 0, 0.05, 0)
        menuButton.Text = "Abrir Satix Hub"
        menuButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        menuButton.TextColor3 = Color3.fromRGB(255, 255, 255)

        menuButton.MouseButton1Click:Connect(function()
            satixMenu()
            menuButton:Destroy() -- remove botão após abrir o menu
        end)
    end

    satixMenuButton()
end

satixHub()