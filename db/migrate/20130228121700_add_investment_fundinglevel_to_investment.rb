class AddInvestmentFundinglevelToInvestment < ActiveRecord::Migration
  def change
    add_column :investments, :investment_fundinglevel, :integer
    add_column :investments, :investment_projectid, :integer
    add_column :investments, :investment_userid, :integer
  end
end
