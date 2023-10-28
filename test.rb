require 'socket'

server = TCPServer.new('0.0.0.0', 80)

loop do
  client = server.accept
  request = client.readpartial(2048)

  method, path, version = request.lines[0].split

  puts "#{method} #{path} #{version}"

  if path == "/helathcheck"
    response = "HTTP/1.1 200 OK\r\nContent-Length: 13\r\n\r\nOK!"
  else
    response = "HTTP/1.1 200 OK\r\nContent-Length: 13\r\n\r\nWell, hello there!"
  end

  client.write(response)
  client.close
end
