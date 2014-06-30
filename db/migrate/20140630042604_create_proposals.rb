class CreateProposals < ActiveRecord::Migration
  def change
    create_table :proposals do |t|
    	t.integer :status
    	t.float :total_amount
    	t.float :total_amount_without_optional_fees
    	t.timestamps
    end
  end
end
