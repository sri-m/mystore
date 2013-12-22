class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.text :f1
      t.boolean :f2
      t.date :f3
      t.datetime :f4
      t.decimal :f5
      t.float :f6
      t.integer :f7
      t.references :f9, index: true
      t.string :f10
      t.text :f11
      t.time :f12
      t.timestamp :f13

      t.timestamps
    end
  end
end
