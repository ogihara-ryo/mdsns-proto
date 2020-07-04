require 'rails_helper'

RSpec.describe 'トップページ', type: :system do
  example 'アクセスできること' do
    visit '/'
    expect(page).to have_text 'Sign in'
  end
end
