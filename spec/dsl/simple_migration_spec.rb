require 'spec_helper'

describe Migrator::DSL::SimpleMigration do
  before do
    @c = Class.new do
      define_method(:one) {|x| [1111, x]}
      define_method(:two) {|x| [2222, x]}
    end
    @db = @c.new
  end

  # it "should raise for an invalid direction" do
  #   proc {Sequel.migration{}.apply(@db, :hahaha)}.must_raise(ArgumentError)
  # end

  # it "should apply the up and down directions correctly" do
  #   m = Sequel.migration do
  #     up{one(3333)}
  #     down{two(4444)}
  #   end
  #   m.apply(@db, :up).must_equal [1111, 3333]
  #   m.apply(@db, :down).must_equal [2222, 4444]
  # end

  # it "should have default up and down actions that do nothing" do
  #   m = Sequel.migration{}
  #   m.apply(@db, :up).must_equal nil
  #   m.apply(@db, :down).must_equal nil
  # end
end
