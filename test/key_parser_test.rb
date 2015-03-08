require_relative 'test_helper'
require_relative '../lib/keys_parser'

class KeysParserTest < Minitest::Test
  attr_reader :keys_parser

  def setup
    @keys_parser = KeysParser.new
  end

  def test_it_exists
    assert keys_parser
  end

  def test_it_takes_key_and_parses_it_out_into_array
    assert_equal [41, 15, 52, 21], keys_parser.key_parse("41521")
  end

end
