class ChangeColumnTypeAgain < ActiveRecord::Migration[5.2]
  def change
    change_column :children, :balance, :string
  end
end
