# frozen_string_literal: true

module Api
  module V1
    class CourseResource < JSONAPI::Resource
      attributes :title, :description, :released_on
      has_one :author
      has_many :talents, through: :course_talents

      filter :author, :talents
    end
  end
end
