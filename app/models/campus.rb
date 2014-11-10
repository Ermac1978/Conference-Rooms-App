# == Schema Information
#
# Table name: campus
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  city       :string(255)
#  state      :string(255)
#  phone_num  :integer
#  zip_code   :integer
#  street_add :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Campus < ActiveRecord::Base
  validates :name, presence: true
  has_many :users
  has_many :campus

end
