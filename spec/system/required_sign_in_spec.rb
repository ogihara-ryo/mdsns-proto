require 'rails_helper'

RSpec.describe 'ログイン必須の画面にアクセスした場合', type: :system do
  example 'トップページにリダイレクトされること' do
    visit followees_path
    expect(current_path).to eq root_path

    visit followers_path
    expect(current_path).to eq root_path
  end
end
