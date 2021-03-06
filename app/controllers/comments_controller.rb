class CommentsController < ApplicationController

	def index
		@article = Article.find(params[:article_id]);
		@comments = @article.comments.all
	end

	def create
		@article = Article.find(params[:article_id])
		@comment = @article.comments.create(comment_params)

		redirect_to article_path(@article)
	end

	def destroy
		@article = Article.find(params[:article_id])
		@comment = @article.comments.find(params[:id])
		@comment.destroy

		redirect_to article_path(@article)
	end

	# def show
	# 	@article = Article.find(params[:article_id]).
	# 	@comment = @article.comments.find(params[:id]);
	# end

	private
		def comment_params
			params.require(:comment).permit(:commenter, :body)
		end
end
