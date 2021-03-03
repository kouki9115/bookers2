class UsersController < ApplicationController
  def new 
    @user=User.new
  end
  
  def create
    user=User.new(user_params)
    user.save
    redirect_to user_path(user.id)
  end

  def index
    @users=User.all
    @user=User.new
    @books=Book.all
    @book
  end

  def show
    @users=User.all
    @user=User.new
  end
  
  def edit
    @user=User.find(params[:id])
  end

  def destroy
     @user=User.find(params[:id])
  end
  
   private
  def user_params
    params.require(:user).permit(:name, :introduction, :profile_image_id)
  end
  
end
