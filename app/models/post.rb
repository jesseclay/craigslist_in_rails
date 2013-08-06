class Post < ActiveRecord::Base
  references :category

  validates :title, presence: true
  validates :email, presence: true
  validates :content, presence: true
  validates :price, presence: true
  validates :url, presence: true
end
