class CreateOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|
      t.text :header
      t.text :content
      t.text :header2
      t.text :content2
      t.references :playground, index: true

      t.timestamps
    end
  end
end
