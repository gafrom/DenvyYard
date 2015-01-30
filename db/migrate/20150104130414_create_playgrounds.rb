class CreatePlaygrounds < ActiveRecord::Migration
  def change
    create_table :playgrounds do |t|
      t.string :name
      t.integer :price
      t.string :text1
      t.string :text2
      t.string :text3
      t.integer :year
      t.string :type

      t.timestamps
    end
  end
end
