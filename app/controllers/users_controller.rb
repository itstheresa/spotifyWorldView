# Part of New Functionality: Retrieves information after logging into Spotify
class UsersController < ApplicationController
  def spotify
  	# Allows access to user's data on Spotify
  	spotify_user = RSpotify::User.new(request.env['omniauth.auth'])
  	# Saves user so token can be automatically refreshed and user doesn't need to keep logging back in
	hash = spotify_user.to_hash
	@spotify_user = RSpotify::User.new(hash)
	# Returns albums saved in Spotify user's "Your Music" library
	@albums = @spotify_user.saved_albums

  end
end
