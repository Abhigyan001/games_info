module ApplicationHelper
  def display_propper_flash
    if flash[:notice]
      content_tag(:div, flash[:notice], class: 'flash notice', align: 'center')
    elsif flash[:success]
      content_tag(:div, flash[:success], class: 'flash success', align: 'center')
    elsif flash[:danger]
      content_tag(:div, flash[:danger], class: 'flash danger', align: 'center')
    end
  end

  def errors_message(object)
    return unless object.errors.any?

    content_tag(:div, nil, class: 'errors') do
      content_tag(:p) do
        "You have the following #{pluralize(object.errors.count, 'error')}"
      end +
        content_tag(:ul) do
          object.errors.full_messages.each do |msg|
            concat content_tag(:li, "- #{msg}")
          end
        end
    end
  end

  def display_4articles(art, ind)
    if ind < 2
      content_tag(:div, nil, class: 'photo') do
        display_photo(art)
      end +
        content_tag(:div, nil, class: 'details') do
          display_details(art)
        end
    else
      content_tag(:div, nil, class: 'details') do
        display_details(art)
      end +
        content_tag(:div, nil, class: 'photo') do
          display_photo(art)
        end
    end
  end

  def display_photo(art)
    if art.image.attached?
      image_tag(art.image)
    else
      image_tag("https://source.unsplash.com/800x600/?{tennis},{#{art.title}}")
    end
  end

  def session_controls
    if current_user
      content_tag(:li) do
        content_tag(:span) do
          link_to "#{current_user.name}", new_article_path
        end
      end + content_tag(:li, ' | ') +
        content_tag(:li) do
          link_to 'Logout', log_out_path, method: :delete
        end
    else
      content_tag(:li) do
        link_to 'Login', log_in_path
      end + content_tag(:li, ' | ') +
        content_tag(:li) do
          link_to 'Register', sign_up_path
        end
    end
  end
end
