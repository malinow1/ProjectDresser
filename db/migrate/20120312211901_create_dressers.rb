class CreateDressers < ActiveRecord::Migration
  def change
    create_table :dressers do |t|
      t.integer :user_id
      t.integer :article_id

      t.timestamps
    end
  end
end
