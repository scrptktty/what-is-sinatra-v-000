require 'sinatra'

# Uncomment the two lines below if you're on the Learn IDE!
# set :bind, ENV["HOST_IP"]
# set :port, ENV["HTTP_PORT"]

get '/' do
  "Hello, World!"
end
