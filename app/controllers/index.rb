require 'yelp'

get '/' do
  erb :'/show'
end

get '/events' do
  # Yelp.client.configure do |config|
  # config.consumer_key = ENV["CONSUMER_KEY"]
  # config.consumer_secret = ENV["CONSUMER_SECRET"]
  # config.token = ENV["YELP_TOKEN"]
  # config.token_secret = ENV["YELP_TOKEN_SECRET"]
  # Yelp.client.search('San Francisco', { term: 'food' })
  # end
# client.search(‘Chicago’, search_params_here)
p "Hellooooooooooo"
p ENV["CONSUMER_KEY"]
p ENV["CONSUMER_SECRET"]
p ENV["YELP_TOKEN"]
p ENV["YELP_TOKEN_SECRET"]

client = Yelp::Client.new({
  consumer_key: ENV["CONSUMER_KEY"],
  consumer_secret: ENV["CONSUMER_SECRET"],
  token: ENV["YELP_TOKEN"],
  token_secret: ENV["YELP_TOKEN_SECRET"]
              })




p @answers = client.search('San Francisco')
#p @answers

    # if @answer != []
      #@answer = city.sample.uri
      #@answer = @answers[0].name
      #p @answer[0]
    #else
      # artist = 'Cher'
      # @uri = RSpotify::Artist.search(artist).sample.uri
      #return false
    # end

  erb :'/show'

end
