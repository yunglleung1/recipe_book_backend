# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'rest-client'
recipes = ['Apple%20Frangipan%20Tart', 'Apple%20&%20Blackberry%20Crumble', 'Bakewell%20tart', 'Bread%20and%20Butter%20Pudding', 'Beef%20Wellington',
'Baingan%20Bharta', 'Beef%20Brisket%20Pot%20Roast', 'Beef%20Sunday%20Roast',
'Braised%20Beef%20Chilli', 'Beef%20stroganoff', 'Broccoli%20&%20Stilton%20soup',
'Bean%20&%20Sausage%20Hotpot', 'Banana%20Pancakes', 'Beef%20Dumpling%20Stew', 'Beef%20and%20Mustard%20Pie', 'Beef%20and%20Oyster%20pie', 'Blackberry%20Fool',
'Battenberg%20Cake', 'Beef%20Bourguignon', 'Brie%20wrapped%20in%20prosciutto%20&%20brioche', 'Boulang', 'BeaverTails', 'Brown%20Stew%20Chicken', 'Beef%20Lo%20Mein', 'Chocolate%20Gateau',
'Chicken%20Enchilada%20Casserole', 'Cream%20Cheese%20Tart', 'Christmas%20Pudding%20Flapjack', 'Chicken%20Handi', 'Chicken%20Alfredo%20Primavera',
'Chicken%20Fajita%20Mac%20and%20Cheese', 'Cajun%20spiced%20fish%20tacos', 'Crock%20Pot%20Chicken%20Baked%20Tacos', 'Chicken%20Karaage', 'Coq%20au%20vin',
'Chilli%20prawn%20linguine', 'Clam%20chowder', 'Creamy%20Tomato%20Soup',
'Chicken%20&%20mushroom%20Hotpot', 'Chicken%20Couscous', 'Chocolate%20Avocado%20Mousse', 'Choc%20Chip%20Pecan%20Pie', 'Chocolate%20Raspberry%20Brownies', 'Chickpea%20Fajitas', 'Chicken%20Ham%20and%20Leek%20Pie', 'Chicken%20Parmentier', 'Carrot%20Cake', 'Chelsea%20Buns', 'Chocolate%20Souffle', 'Chinon%20Apple%20Tarts', 'Chicken%20Marengo', 'Canadian%20Butter%20Tarts', 'Chicken%20Basquaise', 'Callaloo%20Jamaican%20Style', 'Chicken%20Congee', 'Dal%20fry', 'Dundee%20cake',
'Duck%20Confit', 'Eton%20Mess', 'Eccles%20Cakes', 'English%20Breakfast', 'Escovitch%20Fish', 'Egg%20Drop%20Soup', 'Fish%20pie', 'French%20Lentils%20With%20Garlic%20and%20Thyme', 'Fettucine%20alfredo', 'Full%20English%20Breakfast', 'French%20Onion%20Soup', 'Flamiche', 'French%20Omelette', 'Fish%20Stew%20with%20Rouille', 'Fennel%20Dauphinoise',
'Garides%20Saganaki', 'Grilled%20Mac%20and%20Cheese%20Sandwich', 'General%20Tso\'s%20Chicken', 'Honey%20Teriyaki%20Salmon', 'Hot%20Chocolate%20Fudge',
'Hot%20and%20Sour%20Soup', 'Irish%20stew', 'Jam%20Roly-Poly', 'Jerk%20chicken%20with%20rice%20&%20peas', 'Jamaican%20Beef%20Patties', 'Kapsalon',
'Kentucky%20Fried%20Chicken', 'Katsu%20Chicken%20curry', 'Key%20Lime%20Pie',
'Kidney%20Bean%20Curry', 'Kedgeree', 'Kung%20Pao%20Chicken', 'Kung%20Po%20Prawns',
'Lamb%20tomato%20and%20sweet%20spices', 'Lamb%20Biryani', 'Lamb%20Rogan%20josh',
'Laksa%20King%20Prawn%20Noodles', 'Lamb%20Tagine', 'Lasagne', 'Lamb%20and%20Potato%20pie', 'Lancashire%20hotpot', 'Mediterranean%20Pasta%20Salad',
'Massaman%20Beef%20curry', 'Mushroom%20&%20Chestnut%20Rotolo', 'Matar%20Paneer',
'Minced%20Beef%20Pie', 'McSinghs%20Scotch%20pie', 'Madeira%20Cake', 'Montreal%20Smoked%20Meat', 'Ma%20Po%20Tofu', 'Nutty%20Chicken%20Curry', 'New%20York%20cheesecake', 'Nanaimo%20Bars', 'Osso%20Buco%20alla%20Milanese', 'Oxtail%20with%20broad%20beans', 'Pad%20See%20Ew', 'Potato%20Gratin%20with%20Chicken', 'Poutine', 'Pilchard%20puttanesca', 'Pork%20Cassoulet', 'Pancakes', 'Pumpkin%20Pie', 'Peanut%20Butter%20Cheesecake', 'Peach%20&%20Blueberry%20Grunt', 'Parkin%20Cake', 'Pear%20Tarte%20Tatin', 'Proven', 'Prawn%20&%20Fennel%20Bisque', 'Pate%20Chinois', 'Pouding%20chomeur', 'Rigatoni%20with%20fennel%20sausage%20sauce', 'Rocky%20Road%20Fudge', 'Recheado%20Masala%20Fish', 'Ribollita', 'Roasted%20Eggplant%20With%20Tahini,%20Pine%20Nuts,%20and%20Lentils', 'Rock%20Cakes', 'Ratatouille', 'Rappie%20Pie', 'Red%20Peas%20Soup', 'Roast%20fennel%20and%20aubergine%20paella', 'Spaghetti%20Bolognese', 'Spicy%20Arrabiata%20Penne', 'Smoky%20Lentil%20Chili%20with%20Squash',
'Sticky%20Toffee%20Pudding%20Ultimate', 'Spicy%20North%20African%20Potato%20Salad', 'Stovetop%20Eggplant%20With%20Harissa,%20Chickpeas,%20and%20Cumin%20Yogurt', 'Salmon%20Prawn%20Risotto', 'Salted%20Caramel%20Cheescake', 'Seafood', 'Spinach%20&%20Ricotta%20Cannelloni', 'Squash%20linguine', 'Spanish%20Tortilla', 'Steak%20and%20Kidney%20Pie', 'Sticky%20Toffee%20Pudding', 'Spotted%20Dick', 'Summer%20Pudding', 'Summer%20Pistou', 'Split%20Pea%20Soup', 'Sugar%20Pie', 'Steak%20Diane', 'Saltfish%20and%20Ackee', 'Sweet%20and%20Sour%20Pork', 'Szechuan%20Beef', 'Shrimp%20Chow%20Fun', 'Teriyaki%20Chicken%20Casserole', 'Tandoori%20chicken', 'Thai%20Green%20Curry', 'Toad%20In%20The%20Hole', 'Turkey%20Meatloaf', 'Tuna%20Nicoise', 'Tahini%20Lentils', 'Three%20Fish%20Pie', 'Treacle%20Tart', 'Tarte%20Tatin', 'Three-cheese%20souffles', 'Tourtiere', 'Timbits', 'Vegan%20Lasagna', 'Vegan%20Chocolate%20Cake', 'Vietnamese%20Grilled%20Pork%20(bun-thit-nuong)', 'Venetian%20Duck%20Ragu', 'Vegetarian%20Casserole', 'Vegetarian%20Chilli', 'White%20chocolate%20creme%20brulee', 'Wontons', 'Yaki%20Udon']

recipes.each do |recipe|
  url = 'https://www.themealdb.com/api/json/v1/1/search.php?s=' + recipe
  res = RestClient.get(url)
  meal = JSON.parse(res)['meals'][0]

  # ingredients = []
  ingredients = ''
  list = ''
  num = 1
  while meal["strIngredient#{num}"] != nil && meal["strIngredient#{num}"] != '' do
    # byebug
    meal["strIngredient#{num}"] != nil
    list += meal["strIngredient#{num}"] + ', '
    num+=1
  end

  ingredients = list.chomp(', ')
  # byebug

  # Recipe.create(recipeId: meal['idMeal'], name: meal['strMeal'],  ingredients: ingredients, instructions: meal['strInstructions'], picture: meal['strMealThumb'],  video: meal['strYoutube'])
  Recipe.create(name: meal['strMeal'],  ingredients: ingredients, instructions: meal['strInstructions'], picture: meal['strMealThumb'],  video: meal['strYoutube'])
  # byebug
end

  User.create(name: 'Yung')
  User.create(name: 'Joeseph')
  RecipeCard.create(user_id: 1, recipe_id: 1)
  RecipeCard.create(user_id: 2, recipe_id: 1)

# name = 'Apple%20Frangipan%20Tart'
# url = 'https://www.themealdb.com/api/json/v1/1/search.php?s=' + name


# res = RestClient.get(url)
# meal = JSON.parse(res)['meals'][0]

# Recipe.create(recipeId: meal['idMeal'], name: meal['strMeal'],  ingredients:"", instructions: meal['strInstructions'], picture: meal['strMealThumb'],  video: meal['strYoutube'])

# byebug
# false

#id: meal['idMeal']
#name: meal['strMeal']
#ingredient: meal['strIngredient1'] != nil
#instructions: meal['strInstructions']
#pic: meal['strMealThumb']
#youtube: meal['strYoutube']
