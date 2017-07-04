class CreateCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
      t.integer :name, null: false
      t.timestamps
    end
  end
end
