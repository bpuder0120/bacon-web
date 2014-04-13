class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.string :name
      t.integer :amount, null: false
      t.string :image_url
      t.datetime :due_date

      t.belongs_to :user
      t.timestamps
    end
  end
end
