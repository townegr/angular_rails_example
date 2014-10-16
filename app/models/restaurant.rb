# == Schema Information
#
# Table name: restaurants
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#
# Indexes
#
#  index_restaurants_on_name  (name) UNIQUE
#

class Restaurant < ActiveRecord::Base
  validates :name, presence: true, uniqueness: { case_sensitive: false }
end
