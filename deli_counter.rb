def take_a_number(currentLine,name)
  currentLine.push(name)
  puts "Welcome, #{name}. You are number #{currentLine.length} in line."
end

def now_serving(katzDeliLine)
  if (katzDeliLine.length != 0)
    nowServe = ''
    nowServe = katzDeliLine[0]
    katzDeliLine.shift()
    puts "Currently serving #{nowServe}."

  else
    puts "There is nobody waiting to be served!"
  end
end

def line(katzDeliLine)
  if (katzDeliLine.length != 0)
    i = 0
    numAddArray = []
    concatList = ''
    returnStatement = ''
    while(i<katzDeliLine.length)
      if (i == 0)
        numAddArray[i] = "#{i+1}. #{katzDeliLine[i]}"
        concatList = concatList + numAddArray[i]
        i += 1

      else
        numAddArray[i] = " #{i+1}. #{katzDeliLine[i]}"
        concatList = concatList + numAddArray[i]
        i += 1
      end

  end
  puts "The line is currently: #{concatList}"
  else
    puts "The line is currently empty."
  end
end
