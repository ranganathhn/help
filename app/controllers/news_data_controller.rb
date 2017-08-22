class NewsDataController < InheritedResources::Base

  private

    def news_datum_params
      params.require(:news_datum).permit(:headlines, :description, :category_id)
    end
end

