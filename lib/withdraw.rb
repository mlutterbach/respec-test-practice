# An ATM ran out of 10 dollar bills and only has 100, 50 and 20 dollar bills.

# Given an amount between 40 and 10000 dollars (inclusive) and assuming that the ATM wants to use as few bills as possible,
# determinate the minimal number of 100, 50 and 20 dollar bills the ATM needs to dispense (in that order).

# Example
# For n = 250, the result should be [2, 1, 0].

# For n = 260, the result should be [2, 0, 3].

# For n = 370, the result should be [3, 1, 1].

# Input/Output
# [input] integer n Amount of money to withdraw. Assume that n is always exchangeable with [100, 50, 20] bills.
# [output] integer array An array of number of 100, 50 and 20 dollar bills needed to complete the withdraw (in that order).

def withdraw(n)
  result = [0, 0, 0]

  if n / 100 > 0 && n % 100 % 20 == 0
    result[0] = n / 100
    n %= 100
  elsif n / 100 > 0 && (n / 10) % 5 <= 4
    result[0] = (n - 50) / 100
    n = (n - 50) % 100 + 50
  end

  if n >= 50 && n % 50 == 0
    result[1] = n / 50
    n %= 50
  elsif n >= 50 && n % 50 != 0 && n % 20 != 0
    result[1] = 1
    n -= 50
  end

  result[2] = n / 20

  result
end
