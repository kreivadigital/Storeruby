class ChangeTypeCategory < ActiveRecord::Migration[6.0]
  def change
    change_column :sales, :apncode , :integer, limit: 8

    change_column :sales, :rrp , :integer, limit: 8
  end
end
