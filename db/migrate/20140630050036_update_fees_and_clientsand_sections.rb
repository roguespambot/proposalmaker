class UpdateFeesAndClientsandSections < ActiveRecord::Migration
  def change
  	add_column :clients, :proposal_id, :integer
  	add_column :fees, :proposal_id, :integer
  	add_column :sections, :proposal_id, :integer
  end
end
