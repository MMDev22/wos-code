local x = -101
local y = -101
local z = 0
local t = 0
local countT = 0

local success, err = pcall(function()
  local Tele = GetPartFromPort(1, "Telescope")
  for count=1, 201 do
    x = x + 1
    y = -101
      for count=1, 201 do
        y = y + 1
        countT = countT + 1
        --Tele:Configure({["ViewCoordinates"] = x..","..y..","..z..","..t..",false"})
        --print(JSONEncode(Tele:GetCoordinate()))
        --print(x..","..y..","..z..","..t..",false")
        --print(countT)
      end
      print(x.." done")
  end
end)

--print(x)
--print(countT)
print(err)
