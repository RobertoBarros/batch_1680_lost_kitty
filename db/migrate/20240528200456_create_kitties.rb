class CreateKitties < ActiveRecord::Migration[7.1]
  def change
    create_table :kitties do |t|
      t.string :address
      t.string :species
      t.text :description
      t.date :found_at

      t.timestamps
    end
  end
end
