class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :twitter_handle
      t.string :phone_number
      t.string :email, null: false

      t.timestamps null: false
    end
  end
end
