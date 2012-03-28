class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.integer :company_id
      t.string :description
      t.string :size
      t.string :color
      t.string :gender
      t.string :url

      t.timestamps
    end
  end
end
