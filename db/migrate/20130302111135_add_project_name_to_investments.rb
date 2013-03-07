class AddProjectNameToInvestments < ActiveRecord::Migration
  def change
    add_column :investments, :project_name, :string
  end
end
