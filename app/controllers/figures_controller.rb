require 'pry'
class FiguresController < ApplicationController

  get '/figures' do
    erb :'figures/index'
  end

  get '/figures/new' do
    erb :'figures/new'
  end

  post '/figures' do
  #  binding.pry
    @figure = Figure.create(name: params[:Name])
    redirect to "/figures/#{@figure.id}"
  end

  get '/figures/:id' do

  erb :'figures/show'
  end

  get '/figures/:id/edit' do

  erb :'figures/edit'
  end

  post '/figures/:id' do

  redirect to "/figures/#{@figure.id}"
  end

end
