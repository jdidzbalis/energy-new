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
#

class Return < ActiveRecord::Base
  # attr_accessible :title, :body

  belongs_to :project
  belongs_to :user

attr_accessible :user_id, :project_id, :investment_fundinglevel, :project, :user, :state_returns

state_machine :state_returns, initial: :pending do 

    after_transition on: :active, :do => :inactive

    event :active do
  		transition any => :activated
  	end

end




end
