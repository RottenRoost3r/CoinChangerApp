require 'sinatra'
require_relative "coin_changer.rb"

get '/' do
	result = result || ""
	erb :coin, locals: {result: result}
end

post '/get_change' do
  cents = params[:number_input].to_i
  result = coins(cents)
  p result.class
  p result
  erb :coin, locals: {result: result}
end

