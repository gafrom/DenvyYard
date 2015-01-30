class RemovePriceFromPlayground < ActiveRecord::Migration
  def change
    remove_column :playgrounds, :price, :integer
  end
end
