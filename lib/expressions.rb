# frozen_string_literal: true

require_relative 'api'

module Expressions
  def self.included(klass)
    klass.include API
    klass.include LowType if Expressions.config.type_expression
  end

  class << self
    def config
      config = Struct.new(:type_expression)
      @config ||= config.new(true)
    end

    def configure
      yield(config)
    end
  end
end
