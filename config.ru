require 'sinatra'
require 'sinatra/contrib'
require 'sinatra/reloader' if development?
require 'pg'
require_relative './models/post.rb'
require_relative './controllers/post_controllers.rb'
require 'Rack'
# the ./ is because of the relative path
use Rack::Reloader
use Rack::MethodOverride
# Direct the request to the correct controller
run PostsController
