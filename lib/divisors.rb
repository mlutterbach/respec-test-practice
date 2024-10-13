def divisors(n)
  #   div = []
  #   (2...n).each do |num|
  #     div << num if n % num == 0
  #   end
  #   div.empty? ? "#{n} is prime" : div
  # inefficient check each and every number from 2 to n

    div = (2..Math.sqrt(n).to_i).flat_map do |num|
      if n % num == 0
        [num, n / num].uniq
      else
        []
      end
    end.uniq.sort
    div.empty? ? "#{n} is prime" : div
  end
