local x = -101
local y = -101
local z = -101
local t = -101

local success, err = pcall(function()
  local Tele = GetPartFromPort(1, "Telescope")
  for count=1, 201 do
    x = x + 1
    y = -101
      for count=1, 201 do
        y = y + 1
        z = -101
          for count=1, 201 do
             z = z + 1
             t = -101
             for count=1, 201 do
                t = t + 1
                Tele:Configure({["ViewCoordinates"] = x..","..y..","..z..","..t..",false"})
                local res = Tele:GetCoordinate()
                print(res)
             end
          print("z"..z.." done")
          end
        print("y"..y.." done")
      end
      print("x"..x.." done")
      wait(30)
  end
end)

--print(x)
--print(countT)
print(err)
