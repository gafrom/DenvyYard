class AddMinPriceToPlayground < ActiveRecord::Migration
  def change
    add_column :playgrounds, :min_price, :string
  end
end
