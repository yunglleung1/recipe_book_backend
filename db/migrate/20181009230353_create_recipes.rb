class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      # t.integer :recipeId
      t.string :name
      t.string :ingredients
      t.string :instructions
      t.string :picture
      t.string :video

      t.timestamps
    end
  end
end
