class CreateInitialUsers < ActiveRecord::Migration
  def change
    create_table :initial_users do |t|
      t.string :email
    end
  end
end
