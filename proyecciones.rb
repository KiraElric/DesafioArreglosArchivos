def proyecciones(data, rate, start, finish)
  percentaje = rate/100.00
  annually = data.reduce(:+)
  increase = (data.slice(start-1..finish-1).map{|amount| amount*percentaje}).reduce(:+)
  result = annually+increase
  result = sprintf( "%0.02f", result)+ "\n"
  File.write("resultados.data", result, mode: "a")
end

data = File.open('ventas_base.db').readline.chomp
File.write("resultados.data", "")
data_array = data.split(',').map{|v| v.to_f}

proyecciones(data_array, 10, 1, 6)
proyecciones(data_array, 20, 7, 12)
proyecciones(data_array, 15, 5, 12)
proyecciones(data_array, 35, 1, 3)



