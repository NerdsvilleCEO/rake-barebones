require './lib/request_controller'

use Rack::Reloader, 0

# This allows us to serve files from public dir
run Rack::Cascade.new([Rack::File.new("public"), RequestController])
