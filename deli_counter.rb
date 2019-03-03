katz_deli = []

def line(katz_deli)
  if katz_deli.count > 0
    linestring = "The line is currently:"
    katz_deli.each.with_index(1) do |name, index|
      linestring += " #{index}. #{name}"
    end
  else
    linestring =  "The line is currently empty."
  end
  puts linestring
end

def take_a_number(katz_deli, person)
  katz_deli.push(person)
  puts "Welcome, #{person}. You are number #{katz_deli.count} in line."
end

def now_serving(katz_deli)
  if katz_deli.count > 0
    puts "Currently serving #{katz_deli[0]}."
    katz_deli.shift
  else
    puts "There is nobody waiting to be served!"
  end
end