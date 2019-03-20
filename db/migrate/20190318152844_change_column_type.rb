class ChangeColumnType < ActiveRecord::Migration[5.2]
  def change
    change_column :children, :age, :string
  end
end
