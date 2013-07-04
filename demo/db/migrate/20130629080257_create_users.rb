class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.integer :phone_number
      t.text :details
      t.timestamps
    end
  end
end
