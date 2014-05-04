class CommentsController < ApplicationController
  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.new(comments_params)

    if @comment.save
      redirect_to article_path(params[:article_id])
    else
      redirect_to article_path(params[:article_id]), alert: 'Comment was not successfully saved'
    end
  end

  private

  def comments_params
    params.require(:comment).permit(:body)
  end
end
