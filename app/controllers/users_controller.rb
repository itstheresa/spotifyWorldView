class UsersController < ApplicationController
  def spotify
  	@spotify_user = RSpotify::User.new(request.env['omniauth.auth'])
    # Now you can access user's private data, create playlists and much more
	
	#Returns albums saved in Spotify user's "Your Music" library
	@albums = @spotify_user.saved_albums

  end

  def action
  end
end
