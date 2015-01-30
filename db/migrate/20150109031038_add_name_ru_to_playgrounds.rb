class AddNameRuToPlaygrounds < ActiveRecord::Migration
  def change
    add_column :playgrounds, :name_RU, :string
  end
end
