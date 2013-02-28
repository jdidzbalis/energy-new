# == Schema Information
#
# Table name: returns
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Return < ActiveRecord::Base
  # attr_accessible :title, :body

  belongs_to :project
  belongs_to :user
  
end
