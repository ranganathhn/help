class AddcolumnsToArticles < ActiveRecord::Migration[5.0]
  def change
  	add_column :articles, :meta_keywords, :string
  	add_column :articles, :meta_description, :string
  	add_column :articles, :slug, :string
  end
end
