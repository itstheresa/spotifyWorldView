class CountriesController < ApplicationController
  def index
  	if !params[:available_market].empty?
     @albums = RSpotify::Album.search(params[:available_market])
  end
end
