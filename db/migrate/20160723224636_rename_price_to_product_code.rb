class RenamePriceToProductCode < ActiveRecord::Migration
  def change
  	rename_column :products, :price, :product_code
  end
end
