class AddReturnToDateToReturn < ActiveRecord::Migration
  def change
    add_column :returns, :return_to_date, :decimal
  end
end
