peripheral.find("modem", rednet.open)
rednet.close("left")
gpsPosX, gpsPosY, gpsPosZ = gps.locate()
towerName = "Arcy-V"

function receiveConnection()
    cellID, cmd = rednet.receive()
    if cmd == "$getAntID" then
        print("Got request from "..cellID)
        sendAntID()
    else
    --   print(cmd)
    end
end

function sendAntID()
    rednet.send(cellID, towerName)
    rednet.send(cellID, gpsPosX)
    rednet.send(cellID, gpsPosY)
    rednet.send(cellID, gpsPosZ)
    print("Sent Tower GPS and Name to "..cellID)
end

function sendDebug()
    cellID2, dbgmsg = rednet.receive()
    if dbgmsg == "$getdbginfo" then
        rednet.send(cellID2, "Not implemented")
    end
end

while true do
parallel.waitForAny(receiveConnection, sendDebug)
end
