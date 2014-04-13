class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.float :amount
      t.string :item

      t.belongs_to :goal
      t.belongs_to :user
    end
  end
end
