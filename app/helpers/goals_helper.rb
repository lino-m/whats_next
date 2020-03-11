module GoalsHelper

  def goal_or_default_image_tag(goal, options = {})
    if goal.photo.attached?
      cl_image_tag goal.photos[0].key, class: options[:class]
    else
      image_tag 'default-image-goal.jpg', class: options[:class]
    end
  end
end
