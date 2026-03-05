#!/bin/bash

# Define router details
ROUTER_IP="192.168.1.101"    # Change this to your router's IP
USERNAME="cisco"            # Router username
PASSWORD="cisco"            # Router password
COMMAND="show ip interface brief"  # Modify this to run any 'show' command
COMMAND1="show running-config | include username"
COMMAND2="show processes cpu"
COMMAND3="show version"
COMMAND4="show inventory"
        
# Use SSH to connect to the router and execute the command
sshpass -p "$PASSWORD" ssh -o StrictHostKeyChecking=no "$USERNAME@$ROUTER_IP" "$COMMAND"
sshpass -p "$PASSWORD" ssh -o StrictHostKeyChecking=no "$USERNAME@$ROUTER_IP" "$COMMAND1"
sshpass -p "$PASSWORD" ssh -o StrictHostKeyChecking=no "$USERNAME@$ROUTER_IP" "$COMMAND2"
sshpass -p "$PASSWORD" ssh -o StrictHostKeyChecking=no "$USERNAME@$ROUTER_IP" "$COMMAND3"
sshpass -p "$PASSWORD" ssh -o StrictHostKeyChecking=no "$USERNAME@$ROUTER_IP" "$COMMAND4"