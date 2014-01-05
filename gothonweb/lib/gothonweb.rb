require_relative "gothonweb/version"
require "sinatra"
require "erb"

get '/' do
	greeting = "Hello, World!"
	erb :index, :locals => {:greeting => greeting}
end
