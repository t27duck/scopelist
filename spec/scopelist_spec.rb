require "spec_helper"

describe '.available_scopes' do
  it 'should be an array' do
    expect(SomeThing.available_scopes).to be_a_kind_of(Array)
  end

  it 'should contain an array of scope names' do
    expect(SomeThing.available_scopes).to eq([:scope1])
  end

  it 'does not bleed into other models' do
    expect(SomeOtherThing.available_scopes).to eq([])
  end

  it 'cannot be mutated' do
    expected = SomeThing.available_scopes.dup
    SomeThing.available_scopes << :scope2
    expect(SomeThing.available_scopes).to eq(expected)
  end
end

describe '.additonal_available_scope' do
  it 'appends to the available scope list' do
    expect(OneMoreThing.available_scopes).to eq([:scope2, :class_method_as_a_scope])
  end
end
