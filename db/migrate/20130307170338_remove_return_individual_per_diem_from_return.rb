class RemoveReturnIndividualPerDiemFromReturn < ActiveRecord::Migration
  def up
    remove_column :returns, :return_individual_per_diem
    remove_column :returns, :refund_individual_per_diem
  end

  def down
    add_column :returns, :return_individual_per_diem, :integer
  end
end
