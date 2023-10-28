require 'socket'

server = TCPServer.new('0.0.0.0', 80)

loop do
  client = server.accept
  request = client.readpartial(2048)

  method, path, version = request.lines[0].split

  puts "#{method} #{path} #{version}"

 if path == "/healthcheck"
  response = "HTTP/1.1 200 OK\r\nContent-Length: 2\r\n\r\nOK"
else
  response = "HTTP/1.1 200 OK\r\nContent-Length: 11\r\n\r\nHello world"
end

  client.write(response)
  client.close
end
