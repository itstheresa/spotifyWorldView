require 'rspotify/oauth'

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :spotify, "b9e86650cc7a4733a7e24180f5b9014a", "e47d7214bf674d5586916f70b0bc68bd", scope: 'user-read-email playlist-modify-public user-library-read user-library-modify user-top-read'
end