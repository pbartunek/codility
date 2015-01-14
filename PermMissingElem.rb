#!/usr/bin/env ruby

def solution(a)
  sorted = a.sort
  prev = 1

  sorted.each do |n|
    if prev != n
      return prev
    end
    prev += 1
  end

  prev
end
