class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :title_kn
      t.text :description
      t.text :description_kn
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
