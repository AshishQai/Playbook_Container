execute 'check_interfaces_and_health' do
  command <<-CMD
    sshpass -p 'cisco' ssh -o StrictHostKeyChecking=no cisco@192.168.1.101 > /tmp/router_health_status.txt << EOF
show ip interface brief
show version
show processes cpu
show ip interface brief
exit
EOF
  CMD
end

ruby_block 'print_router_health_status' do
  block do
    puts File.read('/tmp/router_health_status.txt')
  end
end