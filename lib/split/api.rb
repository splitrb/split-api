require 'sinatra/base'
require 'split'
require 'rabl'
require 'active_support/core_ext'
require 'active_support/inflector'
require 'builder'

module Split
  class API < Sinatra::Base
    Rabl.register!
    dir = File.dirname(File.expand_path(__FILE__))

    set :views,  "#{dir}/api/views"

    get '/experiments.json' do
      @experiments = Split::Experiment.all
      render :rabl, :index, :format => :json
    end
  end
end
