katz_deli = []

def line(katz_deli)
  index = 0

  if katz_deli.length == 0
    puts "The line is currently empty."
  else
    message = "The line is currently:"

    katz_deli.each_with_index do |person, index|
      message += " #{index.to_i+1}. #{person}"
    end
    puts message
  end
end

def take_a_number(katz_deli, string)

  if katz_deli.size == 0
    katz_deli << string
    puts "Welcome, #{string}. You are number 1 in line."
  else
    katz_deli << string
    puts "Welcome, #{string}. You are number #{katz_deli.size} in line."
  end
end

def now_serving(katz_deli)
  if katz_deli.size == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{katz_deli.first}."
    katz_deli.shift
  end

end

line(katz_deli)
take_a_number(katz_deli, "sasha")
