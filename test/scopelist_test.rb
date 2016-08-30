require 'test_helper'

class ScopeListTest < Minitest::Test
  def test_available_scopes_should_be_an_array
    assert SomeThing.available_scopes.is_a?(Array)
  end

  def test_available_scopes_should_contain_an_array_of_scope_names
    assert_equal [:scope1], SomeThing.available_scopes
  end

  def test_available_scopes_does_not_bleed_into_other_models
    assert_equal [], SomeOtherThing.available_scopes
  end

  def test_available_scopes_cannot_be_mutated
    expected = SomeThing.available_scopes.dup
    SomeThing.available_scopes << :scope2
    assert_equal expected, SomeThing.available_scopes
    refute SomeThing.available_scopes.include?(:scope2)
  end

  def test_additional_available_scope_appends_to_the_available_scope_list
    assert_equal [:scope2, :class_method_as_a_scope], OneMoreThing.available_scopes
  end
end
