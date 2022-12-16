# frozen_string_literal: true

module Api
  module V1
    class AuthorResource < JSONAPI::Resource
      attributes :first_name, :last_name
      has_many :courses
    end
  end
end
