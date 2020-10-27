groups = {}
File.readlines('liste.de.mots.francais.frgut.txt').each do |str|
  sorted = str.chars.sort.join
  if groups.key?(sorted)
    groups[sorted].append(str)
  else
    groups[sorted] = [str]
  end
end
puts(groups)
