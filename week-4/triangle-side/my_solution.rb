# I worked on this challenge [Jon Chen with Jack Huang].


# Your Solution Below

def valid_triangle?(a, b, c)
  # Your code goes here!

  if zero_sides(a,b,c)
    false
  elsif impossible_tri(a,b,c)
    false
  elsif same_sides(a,b,c)
    true
  elsif pythag_triple(a,b,c)
    true
  else
    false
  end
  # if a == b && b == c
  #   true
  # elsif a <= 0 || b <= 0 || c <= 0
  #   false
  # elsif ((a + b) <= c) || ((a + c) <= b) || ((b + c) <= a)
  #   false
  # elsif a == b || a == c || b == c
  #   true
  # elsif (a**2 + b**2 == c**2) || (a**2 + c**2 == b**2) || (b**2 + c**2 == a**2)
  #   true
  # else
  #   false
  # end
end

def zero_sides (a,b,c)
  a <= 0 || b <= 0 || c <= 0
end

def impossible_tri(a,b,c)
  ((a + b) <= c) || ((a + c) <= b) || ((b + c) <= a)
end

def same_sides (a,b,c)
  a == b || a == c || b == c
  # a == b && b == c
end

def pythag_triple (a,b,c)
  (a**2 + b**2 == c**2) || (a**2 + c**2 == b**2) || (b**2 + c**2 == a**2)
end
