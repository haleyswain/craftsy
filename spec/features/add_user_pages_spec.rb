require 'rails_helper'

describe User do
  it 'creates a user account' do
    user = FactoryGirl.build(:user)
    visit root_path
    click_on 'Sign Up'
    fill_in 'user_email', :with => 'person@person.com'
    fill_in 'user_password', :with => 'password'
    fill_in 'user_password_confirmation', :with => 'password'
    click_on 'Sign up'
    expect(page).to have_content 'Welcome to Pretzy!'
  end

  it 'allows users to sign in to their account' do
    user = FactoryGirl.create(:user)
    visit root_path
    click_on 'Login'
    fill_in 'user_email', :with => 'person@person.com'
    fill_in 'user_password', :with => 'password'
    click_on 'Log in'
    expect(page).to have_content "Welcome to Pretzy!"
  end
end
