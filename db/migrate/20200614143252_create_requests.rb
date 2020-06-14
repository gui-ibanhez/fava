class CreateRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :requests do |t|
      t.references :customer, null: false, foreign_key: true
      t.boolean :mailing
      t.text :items
      t.date :delivery_date

      t.timestamps
    end
  end
end
