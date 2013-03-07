class RemoveInvestmentProjectidFromInvestment < ActiveRecord::Migration
  def change
  	remove_column :investments, :investment_userid
  	remove_column :investments, :investment_projectid
  	add_column :investments, :user_id, :integer
  	add_column :investments, :project_id, :integer
  end

  def down
  end
end
