class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.date "day", null: false
      t.string "time", null: false
      t.bigint "customer_id", null: false
      # t.datetime "created_at", precision: 6, null: false
      # t.datetime "updated_at", precision: 6, null: false
      t.datetime "start_time", null: false
      t.boolean "is_deleted", default: false
      t.index ["customer_id"], name: "index_reservations_on_customer_id"
      t.timestamps
    end
  end
end
