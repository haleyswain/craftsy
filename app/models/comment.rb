class Comment < ActiveRecord::Base
  validates :content, :presence => true
  validates :product_id, :presence => true
  validates :author, :presence => true
  validates :user_id, :presence => true

  belongs_to :user
  belongs_to :product
end
