desc "Count and sort numbers"
task :count_and_sort do
  path_to_file = Rails.root + "lib/input_files/descriptive_statistics_numbers.txt"
  string_input = open(path_to_file).read.chomp
  numbers = string_input.gsub(",", "").split.map(&:to_f)

  # =====================================================================
  # Your code goes below.
  # The numbers from the file are in the array `numbers`.
  # =====================================================================
  count = 0
  ap "Your numbers:"
  ap "["
  numbers.each do |i|
    ap "     [" + count.to_s + "] " + i.to_s + ','
    count += 1
  end
  ap "]"
  ap "Count: " + count.to_s
  ap "Sorted Numbers:"
  ap "["
  c = 0
  numbers.sort.each do |n|
    ap "     [" + c.to_s + "] " + n.to_s + ','
    c += 1
  end
  ap "]"
end
