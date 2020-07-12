def notas_mas_alta(students)
  max_grade = []
  students.each do |student|
    name = student.delete_at(0)
    grades = student.map{|ele| ele.to_i}
    max_grade.push([name, grades.max]) 
  end
  return max_grade
end
 
data = open('notas.data').readlines.map(&:chomp)
data_student = data.map{|v| v.split(',')}

print notas_mas_alta(data_student)