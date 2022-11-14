class UsersController < ApplicationController
  before_action :authenticate_user!, except: [:new, :create]
  # before_action :authorize_request, except: :create

  def splash
  end
end
