local speaker = peripheral.find("speaker")
local monitor = peripheral.find("monitor")

while true do
  term.setCursorPos(1,3)
  if term.isColor() then
    term.setTextColor(colors.yellow)
  end
  print("-------------------")
  term.setTextColor(colors.white)
  print("Computer Drivers")
  if speaker then
    print("Speaker = True")
  else
    print("Speaker = False")
  end

  if monitor then
    print("Monitor = True")
  else
    print("Monitor = False")
  end

  if term.isColor() then
    print("Color = True")
  else
    print("Color = False")
  end

  if term.isColor() then
    term.setTextColor(colors.yellow)
  end
  print("-------------------")
  term.setTextColor(colors.white)
  print("close   refresh    ")
  if term.isColor() then
    term.setTextColor(colors.yellow)
  end
  print("-------------------")
  term.setTextColor(colors.white)
  
  local choice = read()
  
  if choice == "close" then
    shell.run("/system/os.lua")
    break
    return
  elseif choice == "refresh" then
    shell.run("/system/deviceMNG.lua")
    break
    return
  end
end

