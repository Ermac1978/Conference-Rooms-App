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
#

class ConfRoom < ActiveRecord::Base

  validates :name, presence: true
  validates :campus_id, presence: true


  scope :for_user, ->(user) { where(user: user) }

  mount_uploader :pic, PicUploader


end
