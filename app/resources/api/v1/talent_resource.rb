# frozen_string_literal: true

module Api
  module V1
    class TalentResource < JSONAPI::Resource
      attributes :name
      has_many :courses, through: :course_talents

      filter :courses
    end
  end
end
