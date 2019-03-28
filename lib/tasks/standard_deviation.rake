desc "Calculate standard deviation"
task :standard_deviation do
  path_to_file = Rails.root + "lib/input_files/descriptive_statistics_numbers.txt"
  input = open(path_to_file).read.chomp
  numbers = input.gsub(",", "").split.map(&:to_f)

  # =====================================================================
  # Your code goes below.
  # The numbers from the file are in the array `numbers`.
  # =====================================================================

  # VARIANCE
  # ========
  # To find the variance of a set,
  #  - we find the mean of the set
  #  - for each number in the set,
  #    - we find the difference between the number and the mean
  #    - we square the difference
  #  - the variance is the mean of the squared differences

  # STANDARD DEVIATION
  # ==================
  # To find the standard deviation of a set,
  #  - take the square root of the variance

  mean = 0
  var = 0.to_f
  numbers.each do |n|
    mean += n
  end
  mean /= numbers.count
  ap "Sorted numbers:"
  ap numbers
  count = numbers.count
  sum = 0
  numbers.each do |num|
    sum = sum + num
  end
  mean = sum/count
  squared_differences = []

  numbers.each do |num|
    difference = num - mean
    squared_difference = difference ** 2
    squared_differences.push(squared_difference)
  end

  variance = squared_differences.sum / count

  standard_deviation = Math.sqrt(variance).to_s
  # ap "Variance: " + variance
  ap "Standard Deviation: " + standard_deviation
end
