#!/usr/bin/env ruby

def solution(a)

  minimal_difference = 0

  if a.size > 1
    sum_of_left = a.shift
    sum_of_right = a.inject(:+)
    minimal_difference = (sum_of_left - sum_of_right).abs

    a.each do |elem|
      sum_of_left += elem
      sum_of_right -= elem

      diff = (sum_of_left - sum_of_right).abs

      if diff < minimal_difference
        minimal_difference = diff
      end
    end
  end

  minimal_difference
end
