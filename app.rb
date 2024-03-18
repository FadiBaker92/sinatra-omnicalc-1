require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homepage)
end

get("/square/new") do
  erb(:square_new)
end

get("/square_root/new")do
  erb(:square_root_new)
end

get("/square/results") do
  erb(:square_results)
end

get("/square_root/results")do 
  erb(:square_root_results)
end
