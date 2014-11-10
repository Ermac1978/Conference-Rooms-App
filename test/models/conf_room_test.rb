# == Schema Information
#
# Table name: conf_rooms
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  location    :string(255)
#  sq_feet     :integer
#  description :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#  pic         :string(255)
#  campus_id   :integer
#  user_id     :integer
#

require 'test_helper'

class ConfRoomTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
