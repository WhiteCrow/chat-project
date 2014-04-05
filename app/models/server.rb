#require 'socket'
#
#class Server
#  def initialize(port, ip)
#    @server = nil
#    @connections  = {}
#    @rooms = {}
#    @clients = {}
#  end
#
#  def run
#    loop {
#      Thread.start do |client| # each client thread
#        nick_name = client.gets.chomp.to_sym
#        @connections[:clients].each do |other_name, other_client|
#          if nick_name == other_name || client == other_client
#            client.puts "This username already exist"
#            Thread.kill self
#          end
#        end
#        puts "#{nick_name} #{client}"
#        @connections[:clients][nick_name] = client
#        client.puts "Start chatting!"
#      end
#    }.join
#  end
#
#  def listen_user_messages( username, client )
#    loop {
#      msg = client.gets.chomp
#      @connections[:clients].each do |other_name, other_client|
#        unless other_name == username
#          other_client.puts "#{username.to_s}: #{msg}"
#        end
#      end
#    }
#  end
#end
#
#server = Server.new("localhost", 3000)
