class AddReturnPerDiemToReturn < ActiveRecord::Migration
  def change
    add_column :returns, :return_per_diem, :integer
  end
end
