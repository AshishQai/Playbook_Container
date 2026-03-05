from netmiko import ConnectHandler

# Define the device details
router = {
    'device_type': 'cisco_ios',  # Change this based on your router's OS
    'host': '192.168.1.101',       # Replace with your router's IP address
    'username': 'cisco',         # Replace with your router's username
    'password': 'cisco',      # Replace with your router's password
    'secret': 'secret',          # Replace with your router's enable secret if needed
}

# Establish an SSH connection to the router
net_connect = ConnectHandler(**router)

# Enter enable mode
net_connect.enable()

# Execute the "show" command
output1 = net_connect.send_command("show ip interface brief")
output2 = net_connect.send_command("show memory statistics")
output3 = net_connect.send_command("show version")
output4 = net_connect.send_command("show ip interface brief")
output5 = net_connect.send_command("show inventory")

# Print the output
print(output1)
print(output2)
print(output3)
print(output4)
print(output5)

# Close the connection
net_connect.disconnect()