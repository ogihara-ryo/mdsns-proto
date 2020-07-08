require 'rails_helper'

RSpec.describe 'ユーザー詳細画面', type: :system do
  before do
    FactoryBot.create(:user, nickname: 'follower')
  end

  example 'フォロー/フォロー解除できること' do
    sign_in
    expect(page).to have_content 'test-user'

    visit '/follower'
    click_on 'フォロー'
    expect(page).to have_content 'フォロワー(1)'

    click_on 'フォロー解除'
    expect(page).to have_content 'フォロワー(0)'
  end

  context '自分の詳細画面である場合' do
    example 'フォローボタンを表示しないこと' do
      sign_in
      expect(page).to have_content 'test-user'
      visit '/test-user'
      expect(page).not_to have_button 'フォロー'
    end
  end

  context 'ログインしていない場合' do
    example 'フォローボタンを表示しないこと' do
      visit '/follower'
      expect(page).not_to have_button 'フォロー'
    end
  end
end
