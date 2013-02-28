class AddProjectNameToProject < ActiveRecord::Migration
  def change
    add_column :projects, :project_name, :string
    add_column :projects, :project_owner, :string
    add_column :projects, :project_location, :string
    add_column :projects, :project_opdate, :date
    add_column :projects, :project_cost, :integer
    add_column :projects, :project_esavings, :integer
    add_column :projects, :project_fundlevel1, :integer
    add_column :projects, :project_fundlevel2, :integer
    add_column :projects, :project_fundlevel3, :integer
    add_column :projects, :project_fundlevel4, :integer
    add_column :projects, :project_fundlevel5, :integer
    add_column :projects, :avatar, :integer
    add_attachment :projects, :avatar
  end
end
