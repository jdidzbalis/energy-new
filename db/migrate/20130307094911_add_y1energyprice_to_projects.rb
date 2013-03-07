class AddY1energypriceToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :y1energyprice, :integer
  end
end
