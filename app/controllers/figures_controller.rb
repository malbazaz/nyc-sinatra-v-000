require 'pry'
class FiguresController < ApplicationController

  get '/figures' do
    erb :'figures/index'
  end

  get '/figures/new' do
    erb :'figures/new'
  end

  post '/figures' do

    @figure = Figure.create(name: params[:figure][:name])
    #binding.pry
    if params[:title][:name].empty?
    @figure.title_ids = params[:figure][:title_ids]
    @figure.save
    else
    @title = Title.create(name: params[:title][:name])
    @figure.title_ids << @title.id
    @figure.save
    end
    if !params[:landmark][:name].empty?
    @landmark = Landmark.create(name: params[:landmark][:name], year_completed: params[:landmark][:year_completed], figure_id: @figure.id)
    @figure.landmarks << @landmark
    @figure.save
    end
    @figure.save
    redirect to "/figures/#{@figure.id}"
  end

  get '/figures/:id' do
    @figure = Figure.find_by_id(params[:id])
    #binding.pry
  erb :'figures/show'
  end

  get '/figures/:id/edit' do
    @figure = Figure.find_by_id(params[:id])
  erb :'figures/edit'
  end

  post '/figures/:id' do
    #binding.pry
    @figure = Figure.find_by_id(params[:id])
  redirect to "/figures/#{@figure.id}"
  end

end
