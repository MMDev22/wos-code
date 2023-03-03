local Modo = GetPartFromPort(1, "Modem")
local life = GetPartFromPort(2, "LifeSensor")
local whitelist = {"MMCraftin", "BenTim122", "MarcoGYT"}
local onlineList = ""
local alert = false

local players = life:GetReading()

for i,v in pairs(players) do

print(i)

end


local function returnRequest(arg1, arg2)

print(arg1, arg2)
end

Modo:RealPostRequest("http://45.77.116.200:3000/?message=hi", "test", true, returnRequest)
