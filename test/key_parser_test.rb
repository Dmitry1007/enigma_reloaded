require_relative 'test_helper'
require_relative '../lib/keys_parser'

class KeysParserTest < Minitest::Test
  attr_accessor :keys_parser

  def setup
    @keys_parser = KeysParser.new
  end

  def test_it_takes_key_and_parses_it_out_into_array
    assert_equal [41, 15, 52, 21], keys_parser.key_parse("41521")
    assert_equal [51, 18, 82, 23], keys_parser.key_parse("51823")
  end

end
