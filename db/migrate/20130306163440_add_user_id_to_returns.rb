class AddUserIdToReturns < ActiveRecord::Migration
  def change
    add_column :returns, :user_id, :integer
    add_column :returns, :project_id, :integer
    add_column :returns, :investment_fundinglevel, :integer
  end
end
