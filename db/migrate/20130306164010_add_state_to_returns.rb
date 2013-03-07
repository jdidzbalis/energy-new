class AddStateToReturns < ActiveRecord::Migration
  def change
    add_column :returns, :state_returns, :string
  end
end
