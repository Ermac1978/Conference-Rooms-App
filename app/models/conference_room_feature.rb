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

class ConferenceRoomFeature < ActiveRecord::Base
  belongs_to :conf_room
  belongs_to :feature
end
