require 'rails_helper'

describe 'the product view path' do
  it "displays the information about a product in the detail page" do
    user = FactoryGirl.create(:user)
    product = FactoryGirl.create(:product, :owner_id => user.id)
    visit root_path
    click_on 'Login'
    fill_in 'user_email', :with => 'person@person.com'
    fill_in 'user_password', :with => 'password'
    click_on 'Log in'
    expect(page).to have_content 'Welcome to Pretzy!'
    click_on 'Large Painting'
    expect(page).to have_content 'A large Painting of a waterfall.'
  end

  it 'displays the administrators personal craft gallery' do
    user = FactoryGirl.create(:user)
    product = FactoryGirl.create(:product, :owner_id => user.id)
    visit root_path
    click_on 'Login'
    fill_in 'user_email', :with => 'person@person.com'
    fill_in 'user_password', :with => 'password'
    click_on 'Log in'
    expect(page).to have_content 'Welcome to Pretzy!'
    click_on 'Personal Craft Gallery'
    expect(page).to have_content "Crafts You've Created"
  end
end
