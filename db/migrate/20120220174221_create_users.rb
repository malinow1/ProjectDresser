class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username,       :null => false
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :address
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end
