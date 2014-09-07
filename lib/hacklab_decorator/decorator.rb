module HacklabDecorator


  class Decorator

    attr_reader :object

    def initialize(object)
      @object = object
    end

    def self.delegate_all
      define_method :method_missing do |m, *args, &block|
        return super(m, *args, &block) unless object.respond_to?(m)
        object.send(m, *args, &block)
      end
    end

    def h
      RequestStore.store[:current_controller].view_context
    end

  end

end