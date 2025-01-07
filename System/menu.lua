local speaker = peripheral.find("speaker")

while true do
  term.setCursorPos(1,3)
  if term.isColor() then
    term.setTextColor(colors.yellow)
  end
  print("                                        |         |")
  print("                                        |         |")
  print("                                        |         |")
  print("                                        |         |")
  print("                                        +---------+")
  print("                                        |         |")
  print("                                        +---------+")
  term.setTextColor(colors.white)
  term.setCursorPos(42,3)
  print("1:reboot")
  term.setCursorPos(42,4)
  print("2:shutoff")
  term.setCursorPos(42,5)
  print("3:more")
  term.setCursorPos(42,6)
  print("4:setting")
  term.setCursorPos(42,8)
  print("  close  ")
  
  local choice = read()
  
  if choice == "1" then
     term.clear()
     term.setCursorPos(1,1)
     print("Please wait...")
     sleep(1)
     term.clear()
     term.setCursorPos(1,1)
     if term.isColor() then
       term.setTextColor(colors.red)
     end
     print("Restating...")
     if speaker then
       speaker.playNote("bit", 1, 10)
       sleep(0.4)
       speaker.playNote("bit", 1, 10)
     end
     sleep(3)
     os.reboot()
     break
  elseif choice == "2" then
     term.clear()
     term.setCursorPos(1,1)
     print("Please wait...")
     sleep(1)
     term.clear()
     term.setCursorPos(1,1)
     if term.isColor() then
       term.setTextColor(colors.red)
     end
     print("shutting down...")
     if speaker then
       speaker.playNote("bit", 1, 10)
       sleep(0.4)
       speaker.playNote("bit", 1, 10)
     end
     sleep(3)
     os.shutdown()
     break
  elseif choice == "3" then          
     shell.run("/system/more.lua")
     break
  elseif choice == "close" then
     shell.run("/system/OS.lua")
     break
     return
  elseif choice == "4" then
     shell.run("/System/Settings.lua")
     break
     return
  end
end

