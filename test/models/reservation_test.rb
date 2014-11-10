# == Schema Information
#
# Table name: reservations
#
#  id           :integer          not null, primary key
#  starts_at    :datetime
#  ends_at      :datetime
#  notes        :string(255)
#  event_title  :string(255)
#  created_at   :datetime
#  updated_at   :datetime
#  user_id      :integer
#  conf_room_id :integer
#

require 'test_helper'

class ReservationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
