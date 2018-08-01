class LandmarksController < ApplicationController
  get '/landmarks' do
    erb :'landmarks/index'
  end

  get '/landmarks/new' do
    erb :'landmarks/new'
  end

  post '/landmarks' do
  #binding.pry
    @landmark = Landmark.create(name: params[:landmark][:name], year_completed: params[:landmark][:year_completed])
    #@figure.title_ids = params[:figure][:title_ids]
    redirect to "/landmarks/#{@landmark.id}"
  end

  get '/landmarks/:id' do
    @landmark = Landmark.find_by_id(params[:id])
  erb :'landmarks/show'
  end

  get '/landmarks/:id/edit' do

  erb :'landmarks/edit'
  end

  post '/landmarks/:id' do

  redirect to "/landmarks/#{@landmark.id}"
  end

end
