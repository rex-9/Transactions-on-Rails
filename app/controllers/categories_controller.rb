class CategoriesController < ApplicationController
  before_action :authenticate_user!, except: :splash

  def index
    @categories = Category.where(author_id: current_user.id)
    @totals = {}
    @categories.map do |category|
      category.purchases.each do |purchase|
        if @totals["#{category.id}"] == nil
          @totals["#{category.id}"] = purchase.amount
        else
          @totals["#{category.id}"] += purchase.amount
        end
      end
    end
  end

  def show
    category = Category.find(params[:id])
    @purchases = category.purchases
  end

  def splash; end
end
