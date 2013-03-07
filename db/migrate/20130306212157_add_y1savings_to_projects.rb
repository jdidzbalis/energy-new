class AddY1savingsToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :y1savings, :integer
  end
end
