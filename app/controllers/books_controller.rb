class BooksController < ApplicationController
before_action :correct_user, only: [:edit, :update,:destroy]

   def index
    @book = Book.new
    #投稿欄が表示されるページで全部いるお！
    @user = current_user
    @books = Book.all

   end

     # 投稿データの保存
   def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    if @book.save
     flash[:notice] = "You have created book successfully."
     redirect_to book_path(@book.id)
    else
     @user = current_user
     @books = Book.all
     render :index
    end
   end


   def new
     @book = Book.new
   end

   def edit
    @book = Book.find(params[:id])
   if @book.user != current_user
    redirect_to book_path(@book.id)
   end
   end

   def show
    @book_new = Book.new
    @book = Book.find(params[:id])
    @user = @book.user
   end


   def update
      @book = Book.find(params[:id])
     if @book.update(book_params)
      flash[:notice] = "You have updated book successfully."
      @book.update(book_params)
      redirect_to book_path(@book.id)
     else
      render :edit
     end
   end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to books_path
  end



  private
  # ストロングパラメータ
  def book_params
    params.require(:book).permit(:title, :body)
  end

  def correct_user
    @book = Book.find(params[:id])
    @user = @book.user
    redirect_to(books_path) unless @user == current_user
  end
end
