def nota_mas_alta(student)
 name = student.delete_at(0)
 grades = student.map{|ele| ele.to_i}
 max_grade = grades.max
 return max_grade
end

data = open('notas.data').readlines.map(&:chomp)
data_student = data.map{|v| v.split(',')}

puts nota_mas_alta(data_student[0])