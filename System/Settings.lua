while true do
  local usernameFile = "Options.txt"
  term.setCursorPos(1,3)
  if term.isColor() then
    term.setTextColor(colors.yellow)
  end
  print("-----------------                                  ")
  term.setTextColor(colors.white)
  print("Computer Settings                                  ")
  print("1:Change Username                                  ")
  if term.isColor() then
    term.setTextColor(colors.yellow)
  end
  print("-----------------                                  ")
  term.setTextColor(colors.white)
  print("close                                              ")
  if term.isColor() then
    term.setTextColor(colors.yellow)
  end
  print("-----------------                                  ")
  print("                                                   ")
  term.setTextColor(colors.white)
  term.setCursorPos(1,9)
  
  local choice = read()
  
  if choice == "1" then
    term.clear()
    term.setCursorPos(1,1)
    print("Change Username")
    local username = read()
    local file = fs.open(usernameFile, "w")
    file.write(username)
    file.close()
    print("Please Wait... It needs to restart to change")
    sleep(5)
    os.reboot()
  elseif choice == "close" then
    shell.run("/System/OS.lua")
    break
  end
end

