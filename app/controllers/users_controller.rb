class UsersController < ApplicationController
	def index
		@user=User.all
	end

	def new
		@user=User.new
	end

	def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      redirect_to login_path
    else
      render "new"
    end
  end

  def show
    current_user
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
