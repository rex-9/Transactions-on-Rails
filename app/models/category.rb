class Category < ApplicationRecord
  has_many :category_purchases
  has_many :purchases, through: :category_purchases
end
