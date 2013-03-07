# == Schema Information
#
# Table name: investments
#
#  id                      :integer          not null, primary key
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#  investment_fundinglevel :integer
#  user_id                 :integer
#  project_id              :integer
#  project_name            :string(255)
#

class Investment < ActiveRecord::Base
  # attr_accessible :title, :body

  attr_accessible :user_id, :project_id, :investment_fundinglevel, :user, :project, :project_name

  belongs_to :user
  belongs_to :project

validates :user_id, presence: true
validates :project_id, presence: true
validates :investment_fundinglevel, presence: true



  		
end
