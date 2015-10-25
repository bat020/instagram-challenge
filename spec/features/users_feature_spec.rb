require 'rails_helper'

feature 'users:' do
  before { visit '/' }
  scenario 'can sign up' do
    sign_up
    expect(page).to have_content 'duchamp'
    expect(page).to have_link 'log out'
  end
  scenario 'can log out' do
    sign_up
    log_out
    expect(page).not_to have_content 'duchamp'
    expect(page).to have_link 'log in'
  end
  scenario 'can log in' do
    sign_up
    log_out
    log_in
    expect(page).to have_content 'duchamp'
    expect(page).to have_link 'log out'
  end
end

def sign_up
  click_link 'sign up'
  fill_in('Username', with: 'duchamp')
  fill_in('Email', with: 'marcel@art.com')
  fill_in('Password', with: 'rmuttrmutt')
  fill_in('Password confirmation', with: 'rmuttrmutt')
  click_button('sign up')
end

def log_out
  click_link 'log out'
end

def log_in
  click_link 'log in'
  fill_in('Username', with: 'duchamp')
  fill_in('Password', with: 'rmutt')
  click_button('log in')
end
