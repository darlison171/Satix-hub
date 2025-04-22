local Players = game:GetService("Players")

local function satixHub()
    local player = Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:WaitForChild("Humanoid")

    -- Funções de automação
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

    -- Menu UI
    local function satixMenu()
        local menu = Instance.new("ScreenGui")
        menu.Name = "SatixMenu"
        menu.ResetOnSpawn = false
        menu.Parent = player:WaitForChild("PlayerGui")

        -- Botão genérico
        local function createButton(name, posY, callback)
            local button = Instance.new("TextButton")
            button.Size = UDim2.new(0.2, 0, 0.05, 0)
            button.Position = UDim2.new(0.05, 0, posY, 0)
            button.Text = name
            button.Parent = menu
            button.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
            button.TextColor3 = Color3.fromRGB(255, 255, 255)
            button.MouseButton1Click:Connect(callback)
        end

        -- Criar botões
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

    satixMenu()
end

satixHub()