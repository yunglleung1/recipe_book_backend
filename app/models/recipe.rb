class Recipe < ApplicationRecord
  has_many :recipe_cards
  has_many :users, through: :recipe_cards
end
