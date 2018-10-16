class RecipeCard < ApplicationRecord
  belongs_to :recipe
  belongs_to :order
end
