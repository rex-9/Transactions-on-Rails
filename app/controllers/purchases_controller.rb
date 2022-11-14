class PurchasesController < ApplicationController
  before_action :authenticate_user!

  def index
    @purchases = Purchase.all
  end
end
