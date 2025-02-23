local redzlib = loadstring(game:HttpGet(("https://raw.githubusercontent.com/REDzHUB/RedzLibV5/main/Source.Lua")))()

local Window = redzlib:MakeWindow({
  Title = "Test",
  SubTitle = "hello",
  SaveFolder = "Redz Config"

MinimizeButton
       Image = "http://www.roblox.com/asset/?id= 116264958159625",
       Size = {25, 25},
       Color = Color3.fromRGB(10, 10, 10),
       Corner = true,
       Stroke = false,
       StrokeColor = Color3.fromRGB(255, 0, 0)
      })

--Tabs

local Tab1 = Window:MakeTab({"Tab 1", "cool"})

--Buttons

Tab1:AddButton({"Print", function()
print("Hello World!")
end})

local Toggle1 = Tab1:AddToggle({
  Name = "Speed",
  Description = "Idk",
  Default = false
})

Tab1:AddSlider({
  Name = "Speed",
  Min = 1,
  Max = 100,
  Increase = 1,
  Default = 16,
  Callback = function(Value)
  game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
  end
})
