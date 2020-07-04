module ApplicationHelper
  def github_link_to(user)
    link_to "@#{user.nickname}", "https://github.com/#{user.nickname}", target: '_blank', rel: 'noopener'
  end
end
