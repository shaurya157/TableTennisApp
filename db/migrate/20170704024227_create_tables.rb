class CreateTables < ActiveRecord::Migration[5.1]
  def change
    create_table :tables do |t|
      t.integer :company_id, null: false

      t.timestamps
    end

    add_index :tables, :company_id
  end
end
