if pocket then
	print("Welcome to the PDA_OS installation.")
	print("The installation process will begin...")
	print("--------------------------------------")
	shell.run("mkdir", "os")
	shell.run("mkdir", "programs")
	wget https://github.com/MeLlamoGamer/PDA_OS-ComputerCraft/blob/main/startup.lua startup.lua
	wget https://github.com/MeLlamoGamer/PDA_OS-ComputerCraft/blob/main/.menu .menu
	wget https://github.com/MeLlamoGamer/PDA_OS-ComputerCraft/blob/main/.back .back
	wget https://github.com/MeLlamoGamer/PDA_OS-ComputerCraft/blob/main/programs/chat.lua programs/chat.lua
	wget https://github.com/MeLlamoGamer/PDA_OS-ComputerCraft/blob/main/programs/ftpcli.lua programs/ftpcli.lua
	wget https://github.com/MeLlamoGamer/PDA_OS-ComputerCraft/blob/main/os/.apps os/.apps
	wget https://github.com/MeLlamoGamer/PDA_OS-ComputerCraft/blob/main/os/.command os/.command
	wget https://github.com/MeLlamoGamer/PDA_OS-ComputerCraft/blob/main/os/.power os/.power
	print("The installation finished successfully, rebooting...")
	os.reboot()