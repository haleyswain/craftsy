require 'rails_helper'

describe "creating a new comment" do
  it "creates a new comment for a product" do
    user = FactoryGirl.create(:user)
    product = FactoryGirl.create(:product, :owner_id => user.id)
    visit new_user_session_path
    fill_in "Email", :with => "person@person.com"
    fill_in "Password", :with => "password"
    click_button "Log in"
    visit product_path(product)
    click_on "Leave a Comment About This Product"
    fill_in "comment_author", :with => "Murphy"
    fill_in "comment_content", :with => "This is the coolest thing ever"
    click_button "Create Comment"
    expect(page).to have_content("Murphy")
  end
end
