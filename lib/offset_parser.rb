
class OffsetParser

  def self.date_parse(date)
    date = date.to_i * date.to_i 

    a = date.to_s[-4].to_i
    b = date.to_s[-3].to_i
    c = date.to_s[-2].to_i
    d = date.to_s[-1].to_i

    offset = [a, b, c, d]
  end

end

