class AddUserIdToCredits < ActiveRecord::Migration
  def change
     	add_column :credits, :project_id, :integer
    	add_column :credits, :user_id, :integer
    	add_column :credits, :investment_fundinglevel, :integer
    	add_column :credits, :annual_return, :integer
  end
end
