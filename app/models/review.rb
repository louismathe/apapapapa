class Review < ApplicationRecord
  belongs_to :book
  has_many :comments
  belongs_to :user
end
