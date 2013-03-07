class AddProjectFundingstatusToProject < ActiveRecord::Migration
  def change
    add_column :projects, :project_fundingstatus, :string
  end
end
