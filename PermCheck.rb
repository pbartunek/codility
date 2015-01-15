#/usr/bin/env ruby

def solution(a)
  isPermutation = 0
  size = a.size

  if a.uniq.size == size
    sorted = a.sort

    if (((2 + size - 1).to_f / 2) * size).to_i == a.inject(:+)
      isPermutation = 1
    end
  end

  isPermutation
end
