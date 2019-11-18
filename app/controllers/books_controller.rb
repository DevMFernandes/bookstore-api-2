class BooksController < ApplicationController
  def index
    render json: Book.order('title ASC')
  end

  def create
    Book.create(book_params)
  end

  def destroy
    Book.destroy(params[:id])
  end

  private
    def book_params
      params.permit(:title, :category)
    end
end
