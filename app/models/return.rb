# == Schema Information
#
# Table name: returns
#
#  id                      :integer          not null, primary key
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#  user_id                 :integer
#  project_id              :integer
#  investment_fundinglevel :integer
#  state_returns           :string(255)
#  return_per_diem         :decimal(, )
#

class Return < ActiveRecord::Base
  # attr_accessible :title, :body

  belongs_to :user
  belongs_to :project
  

attr_accessible :user_id, :project_id, :investment_fundinglevel, :project, :user, :state_returns, :refund_individual_per_diem

state_machine :state_returns, initial: :pending do 

    event :active do
  		transition any => :activated
  	end

end

def calculate_investor_returns
	return_per_diem = investment_fundinglevel * project.total_return_per_diem / project.project_cost
	update_attribute(:return_per_diem, return_per_diem)
end



end
