require 'yelp'
require 'json'

get '/' do
  erb :'/show'
end

get '/events' do

client = Yelp::Client.new({
  consumer_key: ENV["CONSUMER_KEY"],
  consumer_secret: ENV["CONSUMER_SECRET"],
  token: ENV["YELP_TOKEN"],
  token_secret: ENV["YELP_TOKEN_SECRET"]
              })




@answers = client.search('San Francisco')
@result = @answers.businesses.sample.name

    # redirect "/"
  erb :'/show'

end
