module UsersHelper

  def avatar_or_default_image_tag(user, options = {})
    if user.avatar.attached?
      cl_image_tag user.avatar.key, class: options[:class]
    else
      image_tag 'default-avatar.jpg', class: options[:class]
    end
  end
end

# How to use this method in your code:
# <%= avatar_or_default_image_tag(current_user, class: 'avatar-lg') %>
