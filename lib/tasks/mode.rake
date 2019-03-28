desc "Calculate mode"
task :mode do
  path_to_file = Rails.root + "lib/input_files/descriptive_statistics_numbers.txt"
  input = open(path_to_file).read.chomp
  numbers = input.gsub(",", "").split.map(&:to_f)

  # =====================================================================
  # Your code goes below.
  # The numbers from the file are in the array `numbers`.
  # =====================================================================

  # MODE
  # ====
    var = 0.to_f
    freq = Hash.new(0)
    max = 0
    times = 0
    count = 0
    ap "Sorted numbers:"
    ap "["
    numbers.each do |n|
      ap "     [" + count.to_s + "] " + n.to_s + ','
      count+=1
      freq[n] += 1
      if max < freq[n]
        max = n
        times = freq[n]
      end
      var += (n - @mean.to_f)**2
    end
    ap "]"
    freq = freq.sort_by {|_key, value| -value}
    if freq.length == 1 || (freq[0][1] != freq[1][1])
      mo = freq[0][0].to_s
    else
      mo = "No Mode"
    end
    ap "Mode: " + mo
  # To find the mode of a set of numbers, I follow an approach similar to the one for minimum and maximum above.
end
