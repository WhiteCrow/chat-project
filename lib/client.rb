#require 'socket'
#
#class Client
#  def initialize(host, port)
#    @server = TCPSocket.open( host, port )
#  end
#
#  def send
#    @request = Thread.new do
#      loop {
#        yield
#      }
#    end
#  end
#
 # def listen
 #   @response = Thread.new do
 #     loop {
 #       puts "#{msg}"
 #     }
 #   end
 # end
#end
