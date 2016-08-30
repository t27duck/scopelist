require "scopelist/version"

module Scopelist

  def self.included(base)
    base.class_eval do
      extend ClassMethods
    end
  end

  def self.prepended(base)
    class << base
      prepend PrependedClassMethods
    end
  end

  module PrependedClassMethods
    def scope(name, body, &block)
      additional_available_scope name
      super
    end
  end

  module ClassMethods
    def available_scopes
      @available_scopes ||= []
      @available_scopes.dup
    end

    def additional_available_scope(name)
      @available_scopes ||= []
      @available_scopes << name.to_sym
    end
  end
end

ActiveRecord::Base.send(:include, Scopelist)
ActiveRecord::Base.send(:prepend, Scopelist)
