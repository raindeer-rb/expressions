# frozen_string_literal: true

module Expressions
  class Expression
    def initialize
      @expressions = []
    end

    def |(expression)
      if expression.is_a?(::Expressions::Expression)
        union_expression(expression)
      else
        value?(expression) ? union_value(expression) : union_type(expression)
      end

      self
    end

    def >(expression)
      if expression.is_a?(::Expressions::Expression)
        gt_expression(expression)
      else
        value?(expression) ? gt_value(expression) : gt_type(expression)
      end

      self
    end

    def <(expression)
      if expression.is_a?(::Expressions::Expression)
        lt_expression(expression)
      else
        value?(expression) ? lt_value(expression) : lt_type(expression)
      end

      self
    end

    def >=(expression)
      if expression.is_a?(::Expressions::Expression)
        gt_or_eq_expression(expression)
      else
        value?(expression) ? gt_or_eq_value(expression) : gt_or_eq_type(expression)
      end

      self
    end

    def <=(expression)
      if expression.is_a?(::Expressions::Expression)
        lt_or_eq_expression(expression)
      else
        value?(expression) ? lt_or_eq_value(expression) : lt_or_eq_type(expression)
      end

      self
    end

    class << self
      def |(expression)
        self.new | expression
      end
    end

    private

    def value?(expression)
      !expression.instance_of?(Class)
    end

    def union_expression(expression)
      nil
    end

    def union_value(value)
      nil
    end

    def union_type(type)
      nil
    end

    def gt_expression(expression)
      nil
    end

    def gt_value(value)
      nil
    end

    def gt_type(type)
      nil
    end

    def lt_expression(expression)
      nil
    end

    def lt_value(value)
      nil
    end

    def lt_type(type)
      nil
    end

    def gt_or_et_expression(expression)
      nil
    end

    def gt_or_et_value(value)
      nil
    end

    def gt_or_et_type(type)
      nil
    end

    def lt_or_et_expression(expression)
      nil
    end

    def lt_or_et_value(value)
      nil
    end

    def lt_or_et_type(type)
      nil
    end
  end
end
