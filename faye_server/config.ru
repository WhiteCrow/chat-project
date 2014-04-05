require 'faye'
Faye::WebSocket.load_adapter('thin')

faye_server = Faye::RackAdapter.new(:mount => '/faye', :timeout => 5)
run faye_server
