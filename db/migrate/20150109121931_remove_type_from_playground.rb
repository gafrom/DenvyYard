class RemoveTypeFromPlayground < ActiveRecord::Migration
  def change
    remove_column :playgrounds, :type, :string
  end
end
