local ip = "192.168.1.105"
local user = "cisco"
local pass = "cisco"

local commands = {
    "show ip interface brief",
    "show version",
    "show running-config",
    "show processes cpu"
}
 
for _, command in ipairs(commands) do
    local ssh_cmd = string.format(
        "sshpass -p '%s' ssh -o StrictHostKeyChecking=no %s@%s '%s'",
        pass, user, ip, command
    )
 
    local handle = io.popen(ssh_cmd)
    local result = handle:read("*a")
    handle:close()
 
    print("\n--- Output of: " .. command .. " ---")
    print(result)
end

local ip = "192.168.1.103"
local user = "cisco"
local pass = "cisco"

local commands = {
    "show ip interface brief",
    "show version",
    "show running-config",
    "show processes cpu"
}
 
for _, command in ipairs(commands) do
    local ssh_cmd = string.format(
        "sshpass -p '%s' ssh -o StrictHostKeyChecking=no %s@%s '%s'",
        pass, user, ip, command
    )
 
    local handle = io.popen(ssh_cmd)
    local result = handle:read("*a")
    handle:close()
 
    print("\n--- Output of: " .. command .. " ---")
    print(result)
end