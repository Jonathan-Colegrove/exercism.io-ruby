module BookKeeping
  VERSION = 3
end

class Hamming
  def self.compute(first_strand, second_strand)
    a = first_strand.chars
    b = second_strand.chars

    raise ArgumentError unless a.size == b.size

    differences = 0
    while a.size > 0
      a.shift == b.shift ? next : differences += 1
    end
    differences
  end
end
