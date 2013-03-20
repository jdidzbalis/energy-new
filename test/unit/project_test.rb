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

require 'test_helper'

class ProjectTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
