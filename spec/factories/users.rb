FactoryGirl.define do
  factory(:user) do
    email('person@person.com')
    password('password')
    password_confirmation('password')
    admin true
  end
end
