class CreateNewsDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :news_details do |t|
      t.string :source_id
      t.string :source_name
      t.string :author
      t.string :title
      t.text :description
      t.text :url
      t.text :image_url
      t.datetime :publish_at
      t.text :content

      t.timestamps
    end
  end
end
