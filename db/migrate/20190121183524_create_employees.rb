class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :email
      t.string :designation
      t.references :company_detail, foreign_key: true

      t.timestamps
    end
  end
end
