class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :firstname
      t.string :lastname
      t.string :phone
      t.string :address
      t.integer :cp
      t.string :city
      t.references :tag, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
