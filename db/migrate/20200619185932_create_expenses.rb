class CreateExpenses < ActiveRecord::Migration[6.0]
  def change
    create_table :expenses do |t|
      t.string :kind_of_expense
      t.string :obs
      t.decimal :value

      t.timestamps
    end
  end
end
