class CreateReservations < ActiveRecord::Migration[5.1]
  def change
    create_table :reservations do |t|
      t.integer :table_id, null: false
      t.integer :user_id, null: false
      t.date :date, null: false
      t.time :from, null: false
      t.time :to, null: false
      t.timestamps
    end

    add_index :reservations, [:table_id, :user_id]
  end
end
