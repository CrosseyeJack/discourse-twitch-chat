# name: Twitch Chat Thingy
# about: Embedds Twitch Chat onto the site
# version: dev
# authors: Crosseye Jack
# url: https://github.com/CrosseyeJack/discourse-twitch-chat

register_asset "stylesheets/chat.scss"

after_initialize do
    module ::TwitchChat
    end
	end