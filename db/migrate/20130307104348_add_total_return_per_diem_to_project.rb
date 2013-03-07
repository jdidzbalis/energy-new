class AddTotalReturnPerDiemToProject < ActiveRecord::Migration
  def change
    remove_column :projects, :total_return_per_diem, :integer
    add_column :projects, :total_return_per_diem, :decimal

  end
end
