require 'minitest/autorun'
require 'minitest/rg'
require_relative '../engine_class.rb'

class TestEngine < MiniTest::Test

  def setup
    @turbo_engine = Engine.new(25,10)
    @treacle_engine = Engine.new(3, 50)
  end


end
