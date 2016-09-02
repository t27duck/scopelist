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

class Parent < ActiveRecord::Base
  scope :parent_scope, -> { where(nil) }
end

class Child < Parent
  scope :child_scope, -> { where(nil) }
end

class Child2 < Parent
  scope :child2_scope, -> { where(nil) }
end

class ChildChild < Child
  scope :child_child_scope, -> { where(nil) }
end
