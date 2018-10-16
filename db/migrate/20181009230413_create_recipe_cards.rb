class CreateRecipeCards < ActiveRecord::Migration[5.2]
  def change
    create_table :recipe_cards do |t|
      t.integer :userId
      t.integer :recipeId

      t.timestamps
    end
  end
end
