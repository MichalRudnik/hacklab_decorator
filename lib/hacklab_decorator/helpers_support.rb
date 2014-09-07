module HacklabDecorator
  module HelpersSupport

    extend ActiveSupport::Concern
    CONTROLLER = {}

    def setup_current_controller(controller)
      # CONTROLLER[:current] = self
      # Thread.current[:current_controller] = self
      RequestStore.store[:current_controller] = self
    end


  end
end

#  HacklabDecorator::HelpersSupport::CONTROLLER
#  Thread.current[:current_controller]