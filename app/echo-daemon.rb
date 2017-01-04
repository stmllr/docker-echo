require 'socket'

port = 2000

server = TCPServer.new port
loop do
  Thread.start(server.accept) do |client|
    while line = client.gets
      if line.chop === 'quit'
        client.close
        break
      end
      client.puts line.chop
    end
  end
end
