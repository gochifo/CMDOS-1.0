term.setCursorPos(1,3)
if term.isColor() then
  term.setTextColor(colors.yellow)
end
print("----------------")
term.setTextColor(colors.white)
print("Name = CmdOS")
print("Edition = WITHST")
print("Version = 1.0")
if term.isColor() then
  term.setTextColor(colors.yellow)
end
print("----------------")
term.setTextColor(colors.white)
print("close           ")
if term.isColor() then
  term.setTextColor(colors.yellow)
end
print("----------------")
term.setTextColor(colors.white)
while (read() ~= "close") do
 term.setCursorPos(1,10)
end
shell.run("/system/os.lua")

