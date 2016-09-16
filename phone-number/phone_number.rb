class PhoneNumber
  attr_reader :n
  INVALID_NUMBER = '0000000000'

  def initialize(n)
    @n = n
  end

  def r
    n.gsub(/[^0-9]/, '')
  end

  def area_code
    n.gsub(/[^0-9]/, '')[0..2]
  end

  def number
    if n =~ /[a-z]/
      return INVALID_NUMBER
    end

    format { |number| number }
  end

  def to_s
    format { |number| format_with_area_code(number) }
  end

  def format
    if r.size == 11 && r.start_with?("1")
      yield r[1..-1]
    elsif r.size == 10
      yield r
    else
      INVALID_NUMBER
    end
  end

  def format_with_area_code(number)
    "(#{number[0..2]}) #{number[3..5]}-#{number[6..9]}"
  end
end
