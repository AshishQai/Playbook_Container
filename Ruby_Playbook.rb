require 'net/ssh'

# Switch credentials
switch_ip = "192.168.1.104"  # Replace with your Switch IP
username = "cisco"           # Replace with your SSH username
password = "cisco"           # Replace with your SSH password
show_command = "show processes cpu"  # Change this command as needed

begin
  # Start SSH session
  Net::SSH.start(switch_ip, username, password: password) do |ssh|
    puts "Connected to switch #{switch_ip}"
    
    # Run the show command
    output = ssh.exec!(show_command)
    
    # Display the command output
    puts "Output of '#{show_command}':"
    puts output
  end
rescue StandardError => e
  puts "Error: #{e.message}"
end