class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :user_name
      t.text :description
      t.boolean :premium
      t.integer :income

      t.timestamps
    end
  end
end
