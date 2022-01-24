require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

    get '/' do
        erb :user_input
      end

      post '/piglatinize' do
        user_word = params["user_phrase"]
        word = PigLatinizer.new
        @piglatinized_word = word.piglatinize(user_word)
      end


end