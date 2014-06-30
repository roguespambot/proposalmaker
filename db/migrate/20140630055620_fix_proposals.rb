class FixProposals < ActiveRecord::Migration
  def change
  	rename_column :fees, :type, :term
  end
end
