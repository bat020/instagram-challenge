require 'rails_helper'

feature 'pics:' do
  scenario 'main page displays headline' do
    visit '/'
    expect(page).to have_content 'MoodyGram'
  end
end
