if pocket then
term.clear()

x, y = term.getSize() term.setCursorPos(x/2 - 1, y/2)
print("PDA")
x, y = term.getSize() term.setCursorPos(x/2 - 6, y/2 + 1)
textutils.slowPrint("#############", 6)
os.sleep(1)

term.clear()
term.setCursorPos(1, 1)
shell.run(".menu")
else
    print("You are not in a PDA(Pocket computer)!")
end
