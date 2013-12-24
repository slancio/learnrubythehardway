test = 5.0

def in_to_cm(inches)
  inches * 2.54
end

def cm_to_in(cm)
  cm / 2.54
end

def mi_to_km(miles)
  miles * 1.609
end

def km_to_mi(km)
  km / 1.609
end

def lb_to_kg(lb)
  lb * 0.453
end

def kg_to_lb(kg)
  kg / 0.453
end

puts "%d inches is %d cm.  And back to inches: %d" % [test, in_to_cm(test), cm_to_in(in_to_cm(test))]
puts "%d miles is %d km.  And back to miles: %d" % [test, mi_to_km(test), km_to_mi(mi_to_km(test))]
puts "%d pounds is %d kg.  And back to pounds: %d" % [test, lb_to_kg(test), kg_to_lb(lb_to_kg(test))]
