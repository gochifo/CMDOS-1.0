local Image = "wallpapers/normal.nfp"
local ImageXMas = "wallpapers/normal_xmas.nfp"
local image = paintutils.loadImage(Image)
local imagex = paintutils.loadImage(ImageXMas)
local function isChristmas()
  local dateTable = os.date("*t")
  if dateTable.month == 12 and dateTable.day == 24 then
      return true
  else
      return false
  end
end
 
while true do
  if isChristmas() then
    if image then
      term.clear()
      paintutils.drawImage(image, 1, 1)
    end
  else
    if imagex then
      term.clear()
      paintutils.drawImage(image, 1, 1)
    end
  end
  term.setTextColor(colors.white)
  term.setCursorPos(1,1)
  term.setBackgroundColor(colors.black)
  print("[]1:CraftOS. []2:DeviceMNG. []3:about    Z:[*]menu")
  if term.isColor() then
    term.setTextColor(colors.yellow)
  end
  print("----------------------------------------+---------+")
  term.setTextColor(colors.white)
  
  local choice = read()
  
  if choice == "1" then
     term.clear()
     term.setCursorPos(1,1)
     break
  elseif choice == "2" then
     shell.run("/system/DeviceMNG.lua")
     break
  elseif choice == "3" then
     shell.run("/system/about.lua")
     break
  elseif choice == "z" then
     shell.run("/system/menu.lua")
     break
     return
  end
end
