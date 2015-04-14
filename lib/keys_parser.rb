
class KeysParser

  def key_parse(key = "12345")
    a = key[0..1].to_i
    b = key[1..2].to_i
    c = key[2..3].to_i
    d = key[3..4].to_i

    key_parse = [a, b, c, d]
  end

end

