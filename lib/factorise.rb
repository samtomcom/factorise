require "factorise/version"
require 'prime'

module Factorise
  def prime_factors
    number = self.to_s.dup.to_i
    factors = []

    primes_below = Prime.take_while { |p| p <= number / 2 }

    primes_below.each do |p|
      until number % p != 0
        factors << p
        number = number / p
      end
    end

    if factors.length == 0
      return [self]
    else
      return factors
    end
  end
end

class Integer
  include Factorise
end
