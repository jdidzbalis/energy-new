class RemoveReturnPerDiemToReturn < ActiveRecord::Migration
  def up
    remove_column :returns, :return_per_diem
    add_column :returns, :return_per_diem, :decimal
  end

  def down
    add_column :returns, :return_per_diem, :integer
  end
end
