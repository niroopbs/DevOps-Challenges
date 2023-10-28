require 'socket'

server = TCPServer.new('0.0.0.0', 80)

loop do
  client = server.accept
  request = client.gets

  if request
    method, path, version = request.split

    puts "#{method} #{path} #{version}"

    if path == "/healthcheck"
      response = "HTTP/1.1 200 OK\r\nContent-Length: 5\r\n\r\nOK!"
    else
      response = "HTTP/1.1 200 OK\r\nContent-Length: 24\r\n\r\nWell, hello there!"
    end

    client.print(response)
  end

  client.close
end
