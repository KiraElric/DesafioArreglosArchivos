def nota_mas_alta(alumno)
 nombre = alumno.delete_at(0)
 notas = alumno.map{|ele| ele.to_i}
 max = notas.max
 return max
end

data = open('notas.data').readlines.map(&:chomp)
proceced = data.map{|v| v.split(',')}


proceced.each{|per| puts nota_mas_alta(per) }