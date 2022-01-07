class ListsController < ApplicationController
  def new
    # View に渡すインスタンス変数↓
    @list = List.new
  end

  def create
    list = List.new(list_params)

    list.save

    redirect_to '/top'

  end

  def index
    @lists = List.all
  end

  def show
  end

  def edit
  end








   private
  # ストロングパラメータ
  def list_params
    params.require(:list).permit(:title, :body)
  end

end
