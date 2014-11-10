# == Schema Information
#
# Table name: conference_room_features
#
#  id           :integer          not null, primary key
#  conf_room_id :integer
#  feature_id   :integer
#  created_at   :datetime
#  updated_at   :datetime
#

require 'test_helper'

class ConferenceRoomFeatureTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
