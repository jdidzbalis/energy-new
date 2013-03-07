class AddReturnIndividualPerDiemToReturn < ActiveRecord::Migration
  def change
    add_column :returns, :return_individual_per_diem, :integer
  end
end
