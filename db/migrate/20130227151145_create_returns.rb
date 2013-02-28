class CreateReturns < ActiveRecord::Migration
  def change
    create_table :returns do |t|

      t.timestamps
    end
  end
end
