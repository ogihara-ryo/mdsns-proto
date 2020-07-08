require 'rails_helper'

RSpec.describe 'ユーザー詳細画面', type: :system do
  context '自分の詳細画面である場合' do
    example 'フォローボタンを表示しないこと' do
      expect(page).not_to have_button 'フォロー'
    end
  end

  context 'ログインしていない場合' do
    example 'フォローボタンを表示しないこと' do
      expect(page).not_to have_button 'フォロー'
    end
  end
end
