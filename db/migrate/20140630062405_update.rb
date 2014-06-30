class Update < ActiveRecord::Migration
  def change
  	add_column :proposals, :client_id, :integer
  end
end
