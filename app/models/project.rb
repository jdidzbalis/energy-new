# == Schema Information
#
# Table name: projects
#
#  id                           :integer          not null, primary key
#  created_at                   :datetime         not null
#  updated_at                   :datetime         not null
#  project_name                 :string(255)
#  project_owner                :string(255)
#  project_location             :string(255)
#  project_opdate               :date
#  project_cost                 :integer
#  project_esavings             :integer
#  project_fundlevel1           :integer
#  project_fundlevel2           :integer
#  project_fundlevel3           :integer
#  project_fundlevel4           :integer
#  project_fundlevel5           :integer
#  avatar                       :integer
#  avatar_file_name             :string(255)
#  avatar_content_type          :string(255)
#  avatar_file_size             :integer
#  avatar_updated_at            :datetime
#  project_currentfunded        :integer
#  project_percentcurrentfunded :integer
#  project_fundingstatus        :string(255)
#  project_sharesavings         :integer
#  y1savings                    :integer
#  y1energyprice                :integer
#  total_return_per_diem        :decimal(, )
#  category                     :string(255)
#

class Project < ActiveRecord::Base
  # attr_accessible :title, :body

	attr_accessible :avatar, :project_name, :project_owner, :project_location, :project_opdate,
				:project_cost, :project_esavings, :project_fundlevel1, :project_fundlevel2, :project_fundlevel3,
				:project_fundlevel4, :project_fundlevel5, :project_currentfunded, :project_percentcurrentfunded,
				:project_fundingstatus, :project_sharesavings, :y1savings, :y1energyprice, :total_return_per_diem, :category

  has_many :investments
  has_many :credits
  has_attached_file :avatar, :styles => { :large => "940x600#", :medium => "300x200#", :small => "64x64>" },
		:path => ":rails_root/public/system/:attachment/:id/:style/:filename",
      	:url => "/system/:attachment/:id/:style/:filename"

state_machine :project_fundingstatus, initial: :inprogress do 

    after_transition on: :complete, :do => :inactive

    event :complete do
  		transition any => :completed
  	end

    event :operating do
      transition any => :operational
    end

end
  
def update_current_funded
  sum = Investment.where(project_id: id).sum(:investment_fundinglevel)
  update_attribute(:project_currentfunded, sum)
end

def update_percent_current_funded
  if project_currentfunded / project_cost >= 1
  	update_attribute(:project_percentcurrentfunded, 100)
    update_attribute(:project_fundingstatus, 'completed')
   
  else
  	percent = project_currentfunded * 100 / project_cost
    update_attribute(:project_percentcurrentfunded, percent)
  
  end

end

def calculate_project_returns
  total_return = y1savings * y1energyprice * project_sharesavings / 100
  total_return_per_diem = total_return / 365
  update_attribute(:total_return_per_diem, total_return_per_diem)
end

end
