desc "Calculate mean"
task :mean do
  path_to_file = Rails.root + "lib/input_files/descriptive_statistics_numbers.txt"
  input = open(path_to_file).read.chomp
  numbers = input.gsub(",", "").split.map(&:to_f)

  # =====================================================================
  # Your code goes below.
  # The numbers from the file are in the array `numbers`.
  # =====================================================================

  # MEAN
  # ====

  # To find the mean (or average) of a set,
  #  - we sum up all the elements
  #  - then we divide the sum by the number of elements in the set
  count = 0
  max = 0
  ap "Your numbers:"
  ap "["
  numbers.each do |i|
    max+=i
    count+=1
    ap "     [" + count.to_s + "]" + i.to_s + ','
  end
  ap "]"
  max /= count
  ap "Mean: " + max.to_s
end
