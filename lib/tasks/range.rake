desc "Calculate range"
task :range do
  path_to_file = Rails.root + "lib/input_files/descriptive_statistics_numbers.txt"
  input = open(path_to_file).read.chomp
  numbers = input.gsub(",", "").split.map(&:to_f)

  # =====================================================================
  # Your code goes below.
  # The numbers from the file are in the array `numbers`.
  # =====================================================================

  # RANGE
  # =====

  # To find the range of a set of numbers,
  #  - Find the maximum
  #  - Find the minimum
  #  - Subtract the latter from the former
  count = 0
  range = 0
  max = numbers[0]
  min = numbers[0]
  ap "Your numbers:"
  ap "["
  numbers.each do |i|

    if i > max
      max = i
    elsif i < min
      min = i
    end
    ap "     [" + count.to_s + "]" + i.to_s + ','
    count+=1
  end
  ap "]"
  range = max - min
  ap "Range: " + range.to_s
end
