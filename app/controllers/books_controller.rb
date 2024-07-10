# app/controllers/books_controller.rb
class BooksController < ApplicationController
  before_action :set_book, only: %i[show edit update destroy]

  def index
    @books = Book.all
  end

  def backlog
    @books = Book.backlog
    render :index
  end

  def reading
    @books = Book.reading
    render :index
  end

  def completed
    @books = Book.completed
    render :index
  end

  def show
  end

  def new
    @book = Book.new
  end

  def edit
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to @book, notice: 'Livro criado com sucesso.'
    else
      render :new
    end
  end

  def update
    if @book.update(book_params)
      redirect_to @book, notice: 'Livro atualizado com sucesso.'
    else
      render :edit
    end
  end

  def destroy
    @book.destroy
    redirect_to books_url, notice: 'Livro excluído com sucesso.'
  end

  private

  def set_book
    @book = Book.find(params[:id])
  end

  def book_params
    params.require(:book).permit(:title, :author, :cover_image, :status, :pdf, :review)
  end
end
