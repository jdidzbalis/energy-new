# == Schema Information
#
# Table name: projects
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Project < ActiveRecord::Base
  # attr_accessible :title, :body

	attr_accessible :avatar, :project_name, :project_owner, :project_location, :project_opdate,
				:project_cost, :project_esavings, :project_fundlevel1, :project_fundlevel2, :project_fundlevel3,
				:project_fundlevel4, :project_fundlevel5, :project_currentfunded, :project_percentcurrentfunded

  has_many :investments
  has_many :returns
  has_attached_file :avatar, :styles => { :large => "940x600#", :medium => "300x200>", :small => "200x200>" },
		:path => ":rails_root/public/system/:attachment/:id/:style/:filename",
      	:url => "/system/:attachment/:id/:style/:filename"
end
