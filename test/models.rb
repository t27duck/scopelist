class SomeThing < ActiveRecord::Base
  scope :scope1, -> { where(nil) }
end

class SomeOtherThing < ActiveRecord::Base
end

class OneMoreThing < ActiveRecord::Base
  scope :scope2, -> { where(nil) }

  def self.class_method_as_a_scope
  end
  additional_available_scope :class_method_as_a_scope
end
