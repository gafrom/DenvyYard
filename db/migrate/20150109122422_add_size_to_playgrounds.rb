class AddSizeToPlaygrounds < ActiveRecord::Migration
  def change
    add_column :playgrounds, :size, :string
  end
end
