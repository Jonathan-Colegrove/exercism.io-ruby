class PhoneNumber
  attr_reader :n

  def initialize(n)
    @n = n
  end

  def number
    r = @n.gsub(/[^0-9]/, '')
    if r.size == 10
      return r
    else
      return '0000000000'
    end
  end
end
