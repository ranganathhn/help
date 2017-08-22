class NewsDataController < InheritedResources::Base
	def index
		@news_data = NewsDatum.all
	end

  private

    def news_datum_params
      params.require(:news_datum).permit(:headlines, :description, :category_id)
    end
end

