require_relative 'test_helper'
require_relative '../lib/nut_cracker'


class NutCrackerTest < Minitest::Test
  attr_reader :nut_cracker

  def setup
    @nut_cracker = NutCracker.new
  end



end