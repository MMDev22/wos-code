local Modo = GetPartFromPort(1, "Modem")
local life = GetPartFromPort(2, "LifeSensor")
local whitelist = {"MMCraftin", "BenTim122", "MarcoGYT"}
local onlineList = ""
local alert = false

wait(20)

local players = life:GetReading()

for i,v in pairs(players) do

if(table.find(whitelist, i) == nil) then
alert = true
onlineList = onlineList..i.." (Unwhitelisted)\n"
else
onlineList = onlineList..i.."\n"
end

end

local function returnRequest(arg1, arg2)

print(arg1, arg2)
end

if(alert == false) then

--Modo:RealPostRequest("http://n4.danbot.host:1650/?message=Message From Kewudeb 5: Server Start Detected\n\nPlayer List:\n"..onlineList, "test", true, returnRequest)
print("test")
else

Modo:RealPostRequest("http://n4.danbot.host:1650/?message=Message From Kewudeb 5: Server Start Detected\n\nPlayer List:\n"..onlineList.."\n@everyone UNWHITELISTED PLAYER PRESENT", "test", true, returnRequest)
print("test2")
end
