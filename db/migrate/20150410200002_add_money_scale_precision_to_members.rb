class AddMoneyScalePrecisionToMembers < ActiveRecord::Migration
  def self.up
    change_column :members, :money, :decimal, precision: 9, scale: 2
  end

  def self.down
    change_column :members, :money, :decimal
  end
end
