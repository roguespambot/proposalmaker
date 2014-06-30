class RemoveCruft < ActiveRecord::Migration
  def change
  	remove_column :proposals, :total_amount
  	remove_column :proposals, :total_amount_without_optional_fees
  	remove_column :clients, :total_owed
  end
end
