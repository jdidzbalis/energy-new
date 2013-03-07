class RemoveRefundIndividualPerDiemFromReturn < ActiveRecord::Migration
  def up
  	remove_column :projects, :refund_individual_per_diem, :integer
  	remove_column :projects, :return_individual_per_diem, :integer

  end

  def down
  end
end
