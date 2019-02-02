class CreateAsserts < ActiveRecord::Migration[5.2]
  def change
    create_table :asserts do |t|
      t.string :equipment_name
      t.integer :equipment_price
      t.references :company_detail, foreign_key: true

      t.timestamps
    end
  end
end
