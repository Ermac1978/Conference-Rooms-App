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
#  user_id     :integer
#  pic         :string(255)
#

class ConfRoom < ActiveRecord::Base

  scope :for_user, ->(user) { where(user: user) }

  mount_uploader :pic, PicUploader

  belongs_to :user

end
