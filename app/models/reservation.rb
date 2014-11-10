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

class Reservation < ActiveRecord::Base
  validates :starts_at, presence: true
  validates :ends_at, presence: true
  validates :event_title, presence: true
  validates :user_id, presence: true
  validates :conf_room_id, presence: true


end
