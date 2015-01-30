class CreateMicroposts < ActiveRecord::Migration
  def change
    create_table :microposts do |t|
      t.text :header
      t.text :content
      t.references :playground, index: true

      t.timestamps
    end
  end
end
