
require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    erb :index
  end

  get '/posts' do
    @posts = Posts.all
    erb :index
  end

  post '/posts' do
    Post.create(params[:post])
    direct get '/posts'
  end

  get '/posts/new' do
    erb :new
  end
end
