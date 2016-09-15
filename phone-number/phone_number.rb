class PhoneNumber
  attr_reader :n

  def initialize(n)
    @n = n
  end

  def number
    @n.gsub(/[^0-9]/, '')
  end
end
