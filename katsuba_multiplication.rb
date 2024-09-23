def katsuba_multiplication(x, y)
  n = [x.to_s.length, y.to_s.length].max
  mid = n / 2

  a = x.to_s.chars.first(mid).join('').to_i
  b = x.to_s.chars[mid..].join('').to_i
  c = y.to_s.chars.first(mid).join('').to_i
  d = y.to_s.chars[mid..].join('').to_i

  puts "a:#{a} b:#{b} c:#{c} d:#{d}"

  ac = a * c
  bd = b * d
  abcd = (a + b) * (c + d)
  gauss = abcd - ac - bd

  puts "ac:#{ac} bd:#{bd} abcd:#{abcd} gauss:#{gauss}"

  result = (10**n * ac) + (10**mid * gauss) + bd

  puts result
end

katsuba_multiplication(5678**100, 1234**100)
