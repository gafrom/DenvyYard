class AddPriceToPlayground < ActiveRecord::Migration
  def change
    add_column :playgrounds, :price, :string
  end
end
