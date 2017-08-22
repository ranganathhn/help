class CreateNewsData < ActiveRecord::Migration[5.0]
  def change
    create_table :news_data do |t|
      t.text :headlines
      t.text :description
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
