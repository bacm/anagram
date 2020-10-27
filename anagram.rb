# we could use the benchmark lib instead
start = Time.now
groups = {}

# hardcoded filename that should be passed by argument
File.readlines('liste.de.mots.francais.frgut.txt').each do |str|
  s = str.strip
  sorted = s.chars.sort.join
  if groups.key?(sorted)
    groups[sorted].append(s)
  else
    groups[sorted] = [s]
  end
end

# build output array
list = []
groups.each do |key, arr|
  list.append(arr)
end

finish = Time.now

puts finish - start
puts list.to_s
