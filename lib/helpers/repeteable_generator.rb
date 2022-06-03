# frozen_string_literal: true

module Faker
  class RepeteableGenerator < Faker::UniqueGenerator
    def handle_limit_exceeded
      clear
      @generator.public_send(name, *arguments)
    end
  end
end
