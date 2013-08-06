class Category < ActiveRecord::Base
  has_many :posts

  validates :category, presence: true, uniqueness: true
end
