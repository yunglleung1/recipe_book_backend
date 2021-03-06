class Api::V1::RecipeCardsController < ApplicationController
  before_action :find_recipe_card, only: [:update]

  def index
    @recipe_cards = RecipeCard.all
    render json: @recipe_cards
  end

  def update
    @recipe_card.update(recipe_card_params)
    if @recipe_card.save
      render json: @recipe_card, status: :accepted
    else
      render json: { errors: @recipe_card.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def show
    # byebug
    # @recipe_card = RecipeCard.find(params[:recipe_cardId])
    render json: find_recipe_card
    # render :show
  end

  def create
    @recipe_card = RecipeCard.create(recipe_card_params)
    if @recipe_card
      render json: @recipe_card, status: :accepted
    else
      render json: { errors: @recipe_card.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def destroy
    # byebug
    # console.log(recipe_card_params['id'].to_i)
    RecipeCard.delete(recipe_card_params['id'].to_i)
  end

  private

  def recipe_card_params
    params.permit(:id, :user_id, :recipe_id)
  end

  def find_recipe_card
    @recipe_card = RecipeCard.find(params[:id])
  end

end
