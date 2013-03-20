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
#  return_to_date          :decimal(, )
#

require 'test_helper'

class ReturnTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
