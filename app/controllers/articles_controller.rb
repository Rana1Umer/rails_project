class ArticlesController < ApplicationController

	def show
		@article = Article.find(params[:id])
	end

	def new
	end

	def create
		byebug
		# render plain: params[:article].inspect
		@article = Article.new(article_params)
 
  		@article.save
  		redirect_to @article
  	end

  	private
  		def article_params
    		params.require(:article).permit(:name, :age, :contact, :message)
  		end
end
