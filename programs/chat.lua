term.clear()
term.setCursorPos(1,1)
print("Please type your username to chat. To exit the chat type /exit.")
write("Username: ")
username = read()
peripheral.find("modem", rednet.open)
--rednet.host("chat", username)
function rvmessage()
    id, rmessage = rednet.receive()
    print(rmessage)
end

function trmessage()
    write("> ")
    tmessage = read()
    tmessageLen = string.len(tmessage)
     if tmessageLen <= 1
        then print("Message too Short!")
     end
    if tmessage == "/exit"
        then
            peripheral.find("modem", rednet.close)
            rednet.unhost("chat")
            shell.run(".back")
    else 
        rednet.broadcast(username..": "..tmessage)
    end
end
while true do
    parallel.waitForAny(rvmessage, trmessage)
end
