--[[
	Created by. FGFS - captain = Deniz
--]]



print("ok")local a=game.Players.LocalPlayer;local b=workspace.CurrentCamera;local c=game:GetService("RunService")local d=Instance.new("ScreenGui")d.ResetOnSpawn=false;d.Parent=a:WaitForChild("PlayerGui")local a=Instance.new("Frame")a.Size=UDim2.new(0,250,0,250)a.Position=UDim2.new(0.5,-125,0.3,0)a.BackgroundColor3=Color3.fromRGB(30,30,30)a.BorderSizePixel=2;a.Draggable=true;a.Active=true;a.ZIndex=9999;a.Parent=d;local d=Instance.new("TextLabel")d.Size=UDim2.new(0.9,0,0,30)d.BackgroundColor3=Color3.fromRGB(50,50,50)d.TextColor3=Color3.fromRGB(255,255,255)d.Font=Enum.Font.SourceSansBold;d.TextScaled=true;d.ZIndex=9999;d.Parent=a;d.Text="Aimbot [FGFS - captain]"local d=Instance.new("TextButton")d.Size=UDim2.new(0,30,0,30)d.Position=UDim2.new(1,-30,0,0)d.BackgroundColor3=Color3.fromRGB(255,50,50)d.TextColor3=Color3.fromRGB(255,255,255)d.Font=Enum.Font.SourceSansBold;d.Text="X"d.ZIndex=9999;d.Parent=a;d.MouseButton1Click:Connect(function()a.Visible=false end)local d=Instance.new("TextButton")d.Size=UDim2.new(1,0,0,40)d.Position=UDim2.new(0,0,0,40)d.BackgroundColor3=Color3.fromRGB(60,60,60)d.TextColor3=Color3.fromRGB(255,255,255)d.Font=Enum.Font.SourceSansBold;d.TextScaled=true;d.Text="Aimbot [OFF]"d.ZIndex=9999;d.Parent=a;d.MouseButton1Click:Connect(function()aimbotEnabled=not aimbotEnabled;d.Text="Aimbot ["..(aimbotEnabled and"ON"or"OFF").."]"wallAimButton.Active=aimbotEnabled;teamCheckButton.Active=aimbotEnabled;lockOnButton.Active=aimbotEnabled end)local d=Instance.new("TextLabel")d.Size=UDim2.new(1,0,0,30)d.Position=UDim2.new(0,0,0,90)d.BackgroundColor3=Color3.fromRGB(50,50,50)d.TextColor3=Color3.fromRGB(255,255,0)d.Font=Enum.Font.SourceSansBold;d.TextScaled=true;d.Text="Aimbot Customization"d.ZIndex=9999;d.Parent=a;local function d(b,b)local c=Instance.new("TextButton")c.Size=UDim2.new(1,0,0,40)c.Position=UDim2.new(0,0,0,b)c.BackgroundColor3=Color3.fromRGB(40,40,40)c.TextColor3=Color3.fromRGB(255,255,255)c.Font=Enum.Font.SourceSans;c.TextScaled=true;c.ZIndex=9999;c.Active=false;c.Parent=a;return c end;local a=false;local e=true;local f=false;wallAimButton=d("Wall Aim [OFF]",130)teamCheckButton=d("Target Enemies Only [ON]",175)lockOnButton=d("Lock-On [OFF]",220)wallAimButton.MouseButton1Click:Connect(function()a=not a;wallAimButton.Text="Wall Aim ["..(a and"ON"or"OFF").."]"end)teamCheckButton.MouseButton1Click:Connect(function()e=not e;teamCheckButton.Text="Target Enemies Only ["..(e and"ON"or"OFF").."]"end)lockOnButton.MouseButton1Click:Connect(function()f=not f;lockOnButton.Text="Lock-On ["..(f and"ON"or"OFF").."]"end)c.RenderStepped:Connect(function()if aimbotEnabled then local a=getClosestEnemy()if a then b.CFrame=CFrame.new(b.CFrame.Position,a.Position)end end end)
