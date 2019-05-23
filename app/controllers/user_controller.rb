class UserController < ApplicationController
  def show

    user wagoners, user booking
    @user = Cocktail.find(params[:id])
  end
end
