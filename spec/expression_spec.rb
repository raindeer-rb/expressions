# frozen_string_literal: true

require_relative '../lib/expression'

RSpec.describe ::Expressions::Expression do
  subject(:expression) { described_class.new }

  describe '.new' do
    it 'instantiates a class' do
      expect { expression }.not_to raise_error
    end
  end
end
