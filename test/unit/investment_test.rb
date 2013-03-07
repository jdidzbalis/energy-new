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

require 'test_helper'

class InvestmentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
