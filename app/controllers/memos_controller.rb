class MemosController < ApplicationController
  def index
    @memos = Memo.all
  end

  def show
    @memo = Memo.find(params[:id])
  end

  def new
    @memo = Memo.new
  end

  def create
    @memo = Memo.new(memo_params)

    if @memo.save
      redirect_to @memo
    else
      render :new
    end
  end

  private
    def memo_params
      params.require(:memo).permit(:title, :body)
    end
end
