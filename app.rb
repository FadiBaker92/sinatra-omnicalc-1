require "sinatra"
require "sinatra/reloader"

get("/") do
erb(:homepage)
end

get("/square/new") do
  erb(:square_new)
end
