class Member < ActiveRecord::Base
  NAME_MAX_LENGTH = 60

  validates :name, presence: true, length: { maximum: NAME_MAX_LENGTH }
end
