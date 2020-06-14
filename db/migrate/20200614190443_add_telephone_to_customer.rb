class AddTelephoneToCustomer < ActiveRecord::Migration[6.0]
  def change
    add_column :customers, :phone1, :string
    add_column :customers, :phone2, :string
    add_column :customers, :mailing, :boolean
  end
end
