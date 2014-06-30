class AddAmountToFees < ActiveRecord::Migration
  def change
  	add_column :fees, :amount, :float
  end
end
