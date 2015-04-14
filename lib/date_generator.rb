class DateGenerator

  def date_generate
    t = Time.new
    t.strftime "%m%d%y"
  end

end

# puts DateGenerator.new.date_generate