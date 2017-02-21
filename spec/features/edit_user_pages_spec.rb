require 'rails_helper'

describe "editing a user" do
  it "allows a user to change their password" do
  user = FactoryGirl.create(:user)
  visit root_path
  click_on 'Login'
  fill_in 'user_email', :with => 'person@person.com'
  fill_in 'user_password', :with => 'password'
  click_on 'Log in'
  expect(page).to have_content 'Welcome to Pretzy!'
  click_on 'Edit Profile'
  fill_in 'user_password', :with => 'newpassword'
  fill_in 'user_password_confirmation', :with => 'newpassword'
  fill_in 'user_current_password', :with => 'password'
  click_on 'Update'
  expect(page).to have_content "Your account has been updated successfully."
  end
end
