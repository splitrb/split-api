require 'sinatra/base'
require 'split'
require 'json'

module Split
  class API < Sinatra::Base
    enable :sessions
    helpers Split::Helper

    get '/ab_test' do
      experiment = params[:experiment]
      control = params[:control]
      alternatives = params[:alternatives]
      alternative = ab_test(experiment, control, alternatives)
      {:alternative => alternative}.to_json
    end

    post '/finished' do
      experiment = params[:experiment]
      finished(experiment)
      200
    end
  end
end
