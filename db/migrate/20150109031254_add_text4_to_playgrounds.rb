class AddText4ToPlaygrounds < ActiveRecord::Migration
  def change
    add_column :playgrounds, :text4, :string
  end
end
