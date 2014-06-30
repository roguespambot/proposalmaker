class CreateFees < ActiveRecord::Migration
  def change
    create_table :fees do |t|
    	t.integer :type
    	t.integer :duration
    	t.boolean :optional
    	t.string :title
    	t.text :description
    	t.timestamps
    end
  end
end
