class WagonersController < ApplicationController
  def index
    @wagoners = Wagoner.all
  end
end

#   def show
#     @wagoner = Wagoner.find(params[:id])
#   end

#   def new
#     @wagoner = Wagoner.new
#   end

#   def create
#     @wagoner = Wagoner.new(wagoner_params)
#     if @wagoner.save
#       redirect_to wagoners_path(@wagoner)
#     else
#       render :new
#     end
#   end

#   def edit
#     @wagoner = Wagoner.find(params[:id])
#   end

#   def update
#     @wagoner = Wagoner.find(params[:id])
#     @wagoner.update(wagoner)
#   end

#   def delete
#     @wagoner = Wagoner.find(params[:id])
#     @wagoner.destroy
#   end

#   private

#   def wagoner_params
#     params.require(:wagoner).permit(:description, :github_name, :price)
#   end
# end
