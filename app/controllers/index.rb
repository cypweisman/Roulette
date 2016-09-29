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

params = {
  category_filter: 'nightlife'
}
response = client.search('Chicago', params)

# response = client.search('Chicago')
@result = response.businesses.sample.name
# if @result.categories
# @result = @answers.businesses.sample
# @result.categories

    # redirect "/"
  erb :'/show'

end
