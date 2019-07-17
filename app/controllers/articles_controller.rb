class ArticlesController < ApplicationController

	def show
		@article = Article.find(params[:id])
	end
	
	def new
	end

	def create
		# render plain: params[:article].inspect
		@article = Article.new(params[:article])
 
  		@article.save
  		redirect_to @article

  	private
  		def article_params
    		params.require(:article).permit(:name, :age, :contact, :message)
  		end
	end
end
