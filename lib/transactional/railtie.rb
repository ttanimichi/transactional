module Transactional
  class Railtie < Rails::Railtie
    initializer 'transactional.configure_rails_initialization' do
      ActiveSupport.on_load(:action_controller) do
        ApplicationController.send(:extend, ::Transactional)
      end
    end
  end
end
