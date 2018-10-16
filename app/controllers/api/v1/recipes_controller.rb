class Api::V1::RecipesController < ApplicationController
  before_action :find_recipe, only: [:update]

  def index
    @recipes = Recipe.all
    render json: @recipes
  end

  def update
    @recipe.update(recipe_params)
    if @recipe.save
      render json: @recipe, status: :accepted
    else
      render json: { errors: @recipe.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def show
    # byebug
    # @recipe = Recipe.find(params[:recipeId])
    render json: find_recipe
    # render :show
  end

  private

  def recipe_params
    # params.permit(:id, :recipeId, :name, :ingredients, :instructions, :picture, :video)
    params.permit(:id, :name, :ingredients, :instructions, :picture, :video)
  end

  def find_recipe
    @recipe = Recipe.find(params[:id])
  end

end
