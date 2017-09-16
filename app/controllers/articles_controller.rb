class ArticlesController < InheritedResources::Base
	def index
		@articles = Article.all
	end

  private

    # def news_datum_params
    #   params.require(:article).permit(:headlines, :description, :category_id)
    # end
end

