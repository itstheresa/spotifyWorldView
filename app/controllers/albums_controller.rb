class AlbumsController < ApplicationController
  def index #controls what happens after search
  	if !params[:album_name].empty?
     @albums = RSpotify::Album.search(params[:album_name]) #utilizes Spotify search
	else
     redirect_to root_path #if nothing is entered in search bar, nothing happens
    end
  end

  def show #finds specific album from Spotify that is selected after searching
  	@album = RSpotify::Album.find(params[:id])
  end
end
