# == Schema Information
#
# Table name: investments
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Investment < ActiveRecord::Base
  # attr_accessible :title, :body

  belongs_to :user
  belongs_to :project
end
