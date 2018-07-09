def begins_with_r(array)
    array.all? do |element|
    element.start_with?("r")
  end
end

def contain_a(array)
  array.select do |element|
    element.include?("a")
  end
end

def first_wa(array)
  array.find do |element|
  element.to_s.start_with?("wa")
end
end

def remove_non_strings(array)
  array.delete_if do |element|
    !(element.is_a? String)
  end
end

def count_elements(array)
  array.uniq.each do |element|
    element[:count] = array.count(element)
    element
  end
end

def merge_data(keys, data)
  keys.map do |key|
  key.merge(data[0][key[:first_name]].to_h)
  end
end

def find_cool(array)
  array.select do |element|
    element[:temperature] == "cool"
  end
end

def organize_schools(schools)
  locations = {}
  schools.values.each { |location| locations[location.values[0]] = [] }
  schools.each { |school, location| locations[location.values[0]] << school }
  locations
end
