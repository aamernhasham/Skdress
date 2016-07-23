class RemoveDescriptionFromProducts < ActiveRecord::Migration
  def change
  	remove_column :products, :description, :string 
  end
end
