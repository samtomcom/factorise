require "factorise/version"
require 'prime'

module Factorise
  # prime factors of a number
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

  # prime factors of a number as a hash
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

  # non prime factors of a number (doesnt exclude primes)
  def nonprime
    num = self.to_s.dup.to_i

    # nice oneline
    return (1..num).select { |n| num % n == 0 }
  end

  # factor pairs of a number (two numbers that multiply to get the number)
  def factorpairs
    num = self.to_s.dup.to_i
    pairs = []
    factors = num.nonprime

    # include or not include middle value
    if factors.length % 2 == 0
      firsthalf = factors.first(factors.length / 2)
    else
      firsthalf = factors.first((factors.length / 2) + 1)
    end

    # get pairs
    firsthalf.each_with_index do |factor, index|
      pairs[index] = [factor, num/factor]
    end

    return pairs
  end
end

class Integer; include Factorise; end
