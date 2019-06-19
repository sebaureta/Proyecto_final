class ChangeNumericFieldInMyTable < ActiveRecord::Migration[5.2]
  def self.up
    change_column :billings, :amount, :decimal, precision: 10, scale: 2
  end
end
