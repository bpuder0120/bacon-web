class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :photo_url
      t.integer :age
      t.string :email
      t.string :access_token, null: false
      t.string :uid, null: false
      t.string :phone

      t.timestamps
    end
  end
end
