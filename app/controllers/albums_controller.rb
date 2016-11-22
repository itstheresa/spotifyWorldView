class AlbumsController < ApplicationController
  def index
  	if !params[:album_name].empty?
     @albums = RSpotify::Album.search(params[:album_name])
    end
  end

  def show
  	@album = RSpotify::Album.find(params[:id])
  end
end
