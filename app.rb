require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:square_new)
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

get("/payment/new")do
  erb(:payment)
end

get("/random/new")do
  erb(:random)
end

get("/payment/results")do
  @user_apr = params.fetch("apr").to_f 
  @present_value = params.fetch("principal").to_f
  @num_years = params.fetch("num_of_years").to_i
  @rate = @user_apr / 100
  @monthly_rate = @rate / 12
  @num_of_periods = @num_years.to_f * 12
  @numerator = @monthly_rate * @present_value
  @denominator = 1 - ((1 + @monthly_rate) ** (-@num_of_periods))
  erb(:payment_results)
end
get("/random/results")do
  @random_num = rand(params.fetch('minimum').to_f..params.fetch('maximum').to_f)
  erb(:random_results)
end
