class CommentsController < ApplicationController
  def create
    @memo = Memo.find(params[:memo_id])
    @comment = @memo.comments.create(comment_params)
    redirect_to memo_path(@memo)
  end

  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
    
end
