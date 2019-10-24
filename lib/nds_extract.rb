$LOAD_PATH.unshift(File.dirname(__FILE__))
require_relative './directors_database'

def directors_totals(source)
  result = {}
  director_index = 0
  while director_index < source.size do
    director = source[director_index]
    result[director[:name]] = gross_for_director(director)
    director_index += 1
  end
  result
end

def gross_for_director(d)
  total = 0
  index = 0

  while index < d[:movies].length do
    total += d[:movies][index][:worldwide_gross]
    index += 1
  end

  total
end

def list_of_directors(source)
  source_index = 0 
  director_array = []
  while source_index < source.length do
    director = source[source_index][:name]
    director_array.push(director)
    source_index += 1
  end
  director_array
end

def total_gross(source) 
  index = 0
  total = 0
  while index < source.length
    total += gross_for_director(source[index])
    index += 1
  end
  total
end


