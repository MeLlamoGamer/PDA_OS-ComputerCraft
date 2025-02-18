term.clear()
term.setCursorPos(1,1)
print("Connecting to the server...")
-- setings:
serverId = 541 -- change this to the id of the ftpd server

peripheral.find("modem", rednet.open)
rednet.send(serverId, "$receivefiles")
local id, fileList = rednet.receive(10)
if fileList == nil then
    print("The server is busy or may not be running ATM, try again in a few minutes.")
    sleep(5)
    shell.run(".back")
    return
end
for i = 1, #fileList do
    print(fileList[i])
end

write("Select the file you want to download: ")
selectedFile = io.read()
rednet.send(serverId, selectedFile)
id2, fileExistsOrNot = rednet.receive()
if fileExistsOrNot == "$fileExists" then
    id3, name = rednet.receive()
    id4, data = rednet.receive()     
    local file = fs.open(name, "w")
    file.write(data)
    file.close()
    print("Your download was successful, it is stored in the root directory.")
    sleep(5)
    shell.run(".back")
elseif fileExistsOrNot == "$fileNotExists" then
    print("The file you selected does not exist.")
end

