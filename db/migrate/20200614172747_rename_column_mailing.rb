class RenameColumnMailing < ActiveRecord::Migration[6.0]
  def change
    rename_column :requests, :mailing, :delivery
  end
end
