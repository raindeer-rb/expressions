# frozen_string_literal: true

require_relative 'expression'

module Expressions
  class << self
    def config
      config = Struct.new(:something)
      @config ||= config.new(true)
    end

    def configure
      yield(config)
    end
  end
end
