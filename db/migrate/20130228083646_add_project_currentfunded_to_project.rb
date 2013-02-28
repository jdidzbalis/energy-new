class AddProjectCurrentfundedToProject < ActiveRecord::Migration
  def change
    add_column :projects, :project_currentfunded, :integer
    add_column :projects, :project_percentcurrentfunded, :integer
  end
end
