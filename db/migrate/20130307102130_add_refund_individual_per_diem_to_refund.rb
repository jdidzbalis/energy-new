class AddRefundIndividualPerDiemToRefund < ActiveRecord::Migration
  def change
    add_column :returns, :refund_individual_per_diem, :integer
  end
end
