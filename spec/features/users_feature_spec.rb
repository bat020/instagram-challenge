require 'rails_helper'

feature 'users:' do
  before { visit '/' }
  scenario 'can sign up' do
    click_link 'sign up'
    fill_in('Username', with: 'duchamp')
    fill_in('Email', with: 'marcel@art.com')
    fill_in('Password', with: 'rmutt')
    fill_in('Password confirmation', with: 'rmutt')
    click_button('sign up')
  end
  scenario 'can log in' do

  end
  scenario 'can log out' do

  end
end
