json.extract! news_datum, :id, :headlines, :description, :category_id, :created_at, :updated_at
json.url news_datum_url(news_datum, format: :json)
