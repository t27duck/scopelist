require "scopelist/version"

module Scopelist

  def self.included(base)
    base.class_eval do
      extend ClassMethods
      class << self
        alias_method_chain :scope, :scopelist
      end
    end
  end

  module ClassMethods
    def scope_with_scopelist(name, body, &block)
      available_scopes << name.to_sym
      scope_without_scopelist(name, body, &block)
    end

    def available_scopes
      @available_scopes ||= []
    end

    def additional_available_scope(name)
      available_scopes << name.to_sym
    end
  end
end

ActiveRecord::Base.send(:include, Scopelist)
