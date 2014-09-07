module HacklabDecorator

  module Decoratable

    def decorate(opt = {})
      klass = opt.fetch(:with) { |i| "#{self.class.name}Decorator".constantize }
      # klass = "#{self.class.name}Decorator".constantize
      klass.new
    end

  end

end