require 'rails_helper'

RSpec.describe 'プロフィールページ', type: :system do
  before do
    User.create!(
      name: 'Test User',
      nickname: 'test-user',
      avatar_url: 'https://avatars2.githubusercontent.com/u/0?v=4'
    )
  end

  example 'URL で指定されたユーザーの情報を表示すること' do
    visit '/test-user'
    expect(page).to have_text 'Test User'
  end
end
