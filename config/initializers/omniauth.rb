require 'rspotify/oauth'

#includes client id, client secret, and the scope specified grants access to a user's "Your Music" library
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :spotify, "b9e86650cc7a4733a7e24180f5b9014a", "e47d7214bf674d5586916f70b0bc68bd", scope: 'user-library-read'
end