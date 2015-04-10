class Member < ActiveRecord::Base
  NAME_MAX_LENGTH = 60

  validates :name, presence: true, length: { maximum: NAME_MAX_LENGTH }
  validates :money, numericality: { greater_than_or_equal_to: 0 }

  belongs_to :recruiter, class_name: "Member"
  has_many :recruits, class_name: "Member", foreign_key: "recruiter_id"
end
