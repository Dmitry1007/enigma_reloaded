require_relative 'test_helper'
require_relative '../lib/nut_cracker'


class NutCrackerTest < Minitest::Test
  attr_reader :nut_cracker

  def setup
    @nut_cracker = NutCracker
  end

  def test_it_magically_finds_the_secret_key_and_outsmarts_z_germans
    assert_equal "13984", nut_cracker.crack("031015", "ughi6j43kcy47c7w.,fz4mbila0yqau" )
    assert_equal "15034", nut_cracker.crack("031015", "wr3 8unsmnht9nqlak1o6xx nljnsld" )
  end 

end