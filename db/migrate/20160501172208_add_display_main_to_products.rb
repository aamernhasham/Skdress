class AddDisplayMainToProducts < ActiveRecord::Migration
  def change
    add_column :products, :displaymain, :boolean
  end
end
