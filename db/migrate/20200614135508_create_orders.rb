class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.references :customer, null: false, foreign_key: true
      t.decimal :value
      t.decimal :discount
      t.string :payment
      t.string :origin
      t.boolean :request_ahead

      t.timestamps
    end
  end
end
