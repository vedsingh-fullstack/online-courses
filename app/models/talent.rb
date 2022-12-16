class Talent < ApplicationRecord
  has_many :course_talents, dependent: :destroy
  has_many :courses, through: :course_talents
end
