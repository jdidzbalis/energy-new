class AddIndexToProjects < ActiveRecord::Migration
  def change
  	add_index :projects, :slug
  end
end
