require "factorise/version"
require 'prime'

module Factorise
  # return the prime factors of a number
  def factorise
    number = self.to_s.dup.to_i
    factors = []

    primes_below = Prime.take_while { |p| p <= number / 2 }

    # keep if divisible
    primes_below.each do |p|
      until number % p != 0
        factors << p
        number = number / p
      end
    end

    # if no factors (=> num is prime) return num
    if factors.length == 0
      return [self]
    else
      return factors
    end
  end

  # return the prime factors of a number as an array
  def factoriseh
    array = self.factorise
    hash = {}

    # count each factor
    array.each do |factor|
      if hash.has_key? factor
        hash[factor] += 1
      else
        hash[factor] = 1
      end
    end

    return hash
  end

  # return the non prime factors of a number (doesnt exclude primes)
  def nonprime
    num = self.to_s.dup.to_i

    # nice oneline
    return (1..num).select { |n| num % n == 0 }
  end
end

class Integer; include Factorise; end
