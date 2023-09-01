class BooksController < ApplicationController
  def new
    @book = Book.new
  end
  
  def create
    book = Book.new(book_params)   # 1.$2. データを受け取り新規登録するためのインスタンス作成
    book.save                      #3.     データをデータベースに保存するためのsaveメソッド実行
    redirect_to '/top'             #4.     トップ画面へリダイレクト
  end
  
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
  end
  
  private
  #ストロングパラメータ
  def list_params
    params.repuire(:book).permit(:book, :body)
  end
end
