class UserController < ApplicationController

  def show
    # users = User.where(mail: params[:mail][:password])
    users = User.find_by(mail: params[:mail], password: params[:password])
    render json: users, status: 200
  end


  def index
    # users = User.all
    # users = User.find_by(mail: params[:users][:mail])
    users = User.find_by(mail: params[:mail], password: params[:password])
    if users
      render json: users, status: 200
    else
      render nothing: true, status: 404
      # render nothing: true, status: 404
    end
    
  end


  def create
  	user = User.new(user_params)
  	if user.save
  		render json: user, status: 201, location: user
    end
  end


private
  	def user_params
  		params.require(:user).permit(:id, :name, :mail, :password)
  	end

    def user_show_params
      params.require(:user).permit(:mail, :password)
    end

end
