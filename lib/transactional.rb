require "transactional/version"
require "transactional/railtie"

module Transactional
  def transactional(*actions)
    _module = Module.new do
      actions.each do |action|
        define_method action do
          ActiveRecord::Base.transaction { super() }
        end
      end
    end

    const_set :Transactional, _module

    prepend _module
  end
end
