class CategoriesController < ApplicationController
  before_action :authenticate_user!, except: :splash

  def index
    @categories = Category.all
  end

  def splash

  end
end
