# name: Twitch Chat Thingy
# about: Embedds Twitch Chat onto the site
# version: dev
# authors: Crosseye Jack
# url: https://github.com/CrosseyeJack/discourse-twitch-chat


enabled_site_setting :show_twitch_chat

DiscoursePluginRegistry.serialized_current_user_fields << "enable_twitch_chat"

after_initialize do
	User.register_custom_field_type('enable_twitch_chat', :boolean)
	if SiteSetting.show_twitch_chat then
    add_to_serializer(:user, :custom_fields, false) {
      if object.custom_fields == nil then
        {}
      else
        object.custom_fields
      end
    }
  end
end

register_asset "stylesheets/chat.scss"