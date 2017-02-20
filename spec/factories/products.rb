FactoryGirl.define do
  factory(:product) do
    name("Large Painting")
    description("A large Painting of a waterfall.")
    price 50
    country("Sweden")
  end
end
