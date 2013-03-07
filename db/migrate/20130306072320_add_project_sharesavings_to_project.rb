class AddProjectSharesavingsToProject < ActiveRecord::Migration
  def change
    add_column :projects, :project_sharesavings, :integer
  end
end
