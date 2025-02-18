if pocket then
	print("Welcome to the PDA_OS installation.")
	print("The installation process will begin...")
	print("--------------------------------------")
	print("Deleting old files...")
	shell.run("delete", "startup.lua")
	shell.run("delete", ".back")
	shell.run("delete", ".menu")
	shell.run("delete", "os")
	shell.run("delete", "programs")
	print("Creating and Downloading files...")
	sleep(3)
	shell.run("mkdir", "os")
	shell.run("mkdir", "programs")
	shell.run("wget", "https://github.com/MeLlamoGamer/PDA_OS-ComputerCraft/blob/1f9675023afa86699e29bb8fce34b39c01b1d1e1/startup.lua startup.lua")
	shell.run("wget", "https://github.com/MeLlamoGamer/PDA_OS-ComputerCraft/blob/1f9675023afa86699e29bb8fce34b39c01b1d1e1/.menu .menu")
	shell.run("wget", "https://github.com/MeLlamoGamer/PDA_OS-ComputerCraft/blob/1f9675023afa86699e29bb8fce34b39c01b1d1e1/.back .back")
	shell.run("wget", "https://github.com/MeLlamoGamer/PDA_OS-ComputerCraft/blob/1f9675023afa86699e29bb8fce34b39c01b1d1e1/programs/chat.lua programs/chat.lua")
	shell.run("wget", "https://github.com/MeLlamoGamer/PDA_OS-ComputerCraft/blob/1f9675023afa86699e29bb8fce34b39c01b1d1e1/programs/ftpcli.lua programs/ftpcli.lua")
	shell.run("wget", "https://github.com/MeLlamoGamer/PDA_OS-ComputerCraft/blob/1f9675023afa86699e29bb8fce34b39c01b1d1e1/os/.apps os/.apps")
	shell.run("wget", "https://github.com/MeLlamoGamer/PDA_OS-ComputerCraft/blob/1f9675023afa86699e29bb8fce34b39c01b1d1e1/os/.command os/.command")
	shell.run("wget", "https://github.com/MeLlamoGamer/PDA_OS-ComputerCraft/blob/1f9675023afa86699e29bb8fce34b39c01b1d1e1/os/.power os/.power")
	print("The installation finished successfully, rebooting...")
	sleep(3)
	os.reboot()
else
	print("This OS must run on a Pocket PC")
end