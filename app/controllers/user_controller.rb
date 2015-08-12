class UserController < ApplicationController
  def create
  	user = User.new(user_params)
  	if user.save
  		render json: user, status: 201, location: user
    end
  end

private
  	def user_params
  		params.require(:user).permit(:id, :name, :mail, :password, :session)
  	end

end
