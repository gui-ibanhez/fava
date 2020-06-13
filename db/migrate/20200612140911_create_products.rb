class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :nome
      t.string :tipo
      t.decimal :preco

      t.timestamps
    end
  end
end
