require 'rails_helper'

describe User do
  it 'creates a user account' do
    user = FactoryGirl.build(:user)
  end
end
