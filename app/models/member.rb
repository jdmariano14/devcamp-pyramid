class Member < ActiveRecord::Base
  NAME_MAX_LENGTH = 60

  validates :name, :presence => true
end
