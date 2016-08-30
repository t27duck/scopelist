ActiveRecord::Schema.define do
  self.verbose = false

  create_table :some_things, :force => true do |t|
    t.timestamps
  end

  create_table :some_other_things, :force => true do |t|
    t.timestamps
  end

  create_table :one_more_things, :force => true do |t|
    t.timestamps
  end
end
