class CommentsController < ApplicationController
  http_basic_authenticate_with name: "ryotan", password: "secret", only: :destroy

  def create
    @memo = Memo.find(params[:memo_id])
    @comment = @memo.comments.create(comment_params)
    redirect_to memo_path(@memo)
  end

  def destroy
    @memo = Memo.find(params[:memo_id])
    @comment = @memo.comments.find(params[:id])
    @comment.destroy
    redirect_to memo_path(@memo)
  end

  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end

end
