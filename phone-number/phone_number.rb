class PhoneNumber
  attr_reader :n

  def initialize(n)
    @n = n
  end

  def number
    # If n contains letters
    if n =~ /[a-z]/
      return '0000000000'
    end

    r = @n.gsub(/[^0-9]/, '')

    if r.size == 11 && r[0] == "1"
      return r[1..-1]
    elsif r.size == 10
      return r
    else
      return '0000000000'
    end
  end

  def area_code
    return @n.gsub(/[^0-9]/, '')[0..2]
  end

  def to_s
    r = @n.gsub(/[^0-9]/, '')
    if r.size == 11 && r[0] == "1"
      a = r[1..-1]
      return "(#{a[0..2]}) #{a[3..5]}-#{a[6..9]}"
    elsif r.size == 10
      return "(#{r[0..2]}) #{r[3..5]}-#{r[6..9]}"
    else
      return '0000000000'
    end
  end

end
