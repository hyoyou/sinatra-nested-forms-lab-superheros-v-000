require 'sinatra/base'
require 'pry'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/team' do
      #binding.pry
      @team_name = params[:team][:name]
      @team_motto = params[:team][:motto]

      @members = params[:team][:members]
      erb :team
    end

end
