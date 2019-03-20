class CreateChildren < ActiveRecord::Migration[5.2]
  def change
    create_table :children do |t|
      t.string :name
      t.string :image
      t.integer :age
      t.string :address
      t.string :allergies
      t.integer :balance
      t.integer :provider_id
      t.integer :parent_id
      t.timestamps
    end
  end
end
