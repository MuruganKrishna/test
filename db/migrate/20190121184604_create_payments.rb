class CreatePayments < ActiveRecord::Migration[5.2]
  def change
    create_table :payments do |t|
      t.string :nameofinvest
      t.integer :cost
      t.references :company_detail, foreign_key: true

      t.timestamps
    end
  end
end
