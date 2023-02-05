class UsersController < ApplicationController
before_action :correct_user, only: [:update,:edit]

  def index
    @user = current_user
    @users = User.all
    @book = Book.new
  end

  def edit
    @user = User.find(params[:id])
   if @user != current_user
    redirect_to user_path
   end

  end

  def show
    @book = Book.new
    @user = User.find(params[:id])
    @books = @user.books

  end


  def update
    @user = User.find(params[:id])
   if @user.update(user_params)
     flash[:notice] = "You have updated user successfully."
    redirect_to user_path(@user.id)
   else
      render:edit
   end
  end

  private

  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction )
  end

   def correct_user #自分のプロフのみ編集したい→ユーザー情報持ってくる必要あり
    @user = User.find(params[:id]) #user's information pu
    redirect_to(user_path(current_user.id)) unless @user == current_user
   end
end
