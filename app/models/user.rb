class User < ApplicationRecord
  has_many :likes
  has_many :reviews
  has_many :comments
end
