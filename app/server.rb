require 'sinatra'
require 'sinatra/partial'
require './lib/team_matcher'

class TeamFinder < Sinatra::Application

    set :public_folder, File.join(File.dirname(__FILE__), '..', 'public')

    get '/' do
      erb :index
    end

    post '/' do
      @team = params["team"].capitalize
      @department = params["department"]
      matcher_instance = TeamMatcher.new
      if @team != ""
        @result = matcher_instance.department_return(@team)
      elsif @department != ""
        @result = matcher_instance.team_return(@department)
      end
      erb :index
    end

    get '/tatiana' do
        erb :tatiana
    end

    post '/form' do
        erb :index
    end

end
