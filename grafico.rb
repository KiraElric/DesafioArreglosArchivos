def chart(array)
  array.each do |number|
    print "|#{('*'*number)*2}\n"
  end
  puts ">#{('-'*(array.max))*2}"
  for i in (1..(array.max))
    print " #{i}"
  end
end

chart([5,3,2,5,10])