def read_data(file_name)
  data = open(file_name).read.split(',')
  array_data = data.map{ |elements| elements.to_f}
  return array_data
end

def simulation(array_data, rise, array_begin, array_end)
  array_rise = []
end

def simulation_2(array_data)
  puts (array_data.slice(0,6).map {|v| v*1.1}).reduce(0,:+).to_f.round(2)
  puts (array_data.slice(6,6).map {|v| v*1.2}).reduce(0,:+).to_f.round(2)
end

data = read_data('ventas_base.db')
simulation(data,10,1,6)


simulation_2(data)


