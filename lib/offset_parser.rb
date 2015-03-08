
class OffsetParser

  def date_parse(date)
    squared_date = date.to_i * date.to_i

    a = squared_date.to_s[-4].to_i
    b = squared_date.to_s[-3].to_i
    c = squared_date.to_s[-2].to_i
    d = squared_date.to_s[-1].to_i

    offset_parse = [a, b, c, d]
  end

end

