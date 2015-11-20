require 'pry'

class Sieve

  def initialize(up_to_number)
    @number_range = *(2..up_to_number)
  end

  def primes
    @number_range.each do |number|
      multiple = 2
      loop do 
        @number_range.delete((number * multiple)) unless (number*multiple).nil?
        multiple +=1
        if (number*multiple) > @number_range.last
          break
        end
        end
    end
    @number_range
  end
end