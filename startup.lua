local usernameFile = "Options.txt"
local speaker = peripheral.find("speaker")

local function createUsername()
    term.clear()
    term.setCursorPos(1,1)
    print("Starting")
    term.setCursorPos(10,1)
    if term.isColor() then
      term.setTextColor(colors.yellow)
    end
    print("CmdOS")
    term.setTextColor(colors.white)
    print(" ")
    textutils.slowPrint("#################")
    term.setCursorPos(1,3)
    if term.isColor() then
      term.setTextColor(colors.green)
      print("#################")
    end
    sleep(4)
    term.clear()
    sleep(4)
    term.setTextColor(colors.white)
    term.setCursorPos(1,1)
    print("Please Wait...")
    sleep(3)
    term.setCursorPos(1,1)
    print("[*] CMDOS")
    print("[Setup = Last]")
    print("Please Create Your Username")
    local username = read()
    local file = fs.open(usernameFile, "w")
    file.write(username)
    file.close()

    print("Username set to = " .. username)
    sleep(3)
    print("Restarting...")
    sleep(5)
    os.reboot()
end

if not fs.exists(usernameFile) then
    createUsername()
else
    local file = fs.open(usernameFile, "r")
    local username = file.readAll()
    file.close()

    term.clear()
    term.setCursorPos(1,1)
    term.clear()
    term.setCursorPos(1,1)
    print("Starting")
    term.setCursorPos(10,1)
    if term.isColor() then
      term.setTextColor(colors.yellow)
    end
    print("CmdOS")
    term.setTextColor(colors.white)
    print(" ")
    textutils.slowPrint("#################")
    term.setCursorPos(1,3)
    if term.isColor() then
      term.setTextColor(colors.green)
      print("#################")
    end
    sleep(4)
    term.setTextColor(colors.white)
    term.clear()
    sleep(3)
    term.setCursorPos(1,1)
    print("Please Wait...")
    sleep(1)
    term.setCursorPos(1,1)
    print("Welcome ")
    term.setCursorPos(9,1)
    if term.isColor() then
      term.setTextColor(colors.yellow)
    end
    print(username)
    sleep(3)
    if speaker then
    speaker.playNote("bit", 1, 10)
    sleep(0.4)
      speaker.playNote("bit", 1, 5)
    end
    sleep(2)
    term.setTextColor(colors.white)
    shell.run("System/OS.lua")
    return
end
