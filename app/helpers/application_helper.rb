module ApplicationHelper
  def user_info(user)
    user_avatar(user) + user_link_to(user) + github_link_to(user)
  end

  def user_avatar(user)
    link_to user do
      image_tag user.avatar_url, width: 20
    end
  end

  def user_link_to(user)
    link_to user.name, user
  end

  def github_link_to(user)
    link_to "@#{user.nickname}", "https://github.com/#{user.nickname}", target: '_blank', rel: 'noopener'
  end
end
