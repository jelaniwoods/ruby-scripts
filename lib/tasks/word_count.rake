desc "Calculate word count statistics"
task :word_count do
  path_to_text = Rails.root + "lib/input_files/word_count_text.txt"
  text = open(path_to_text).read

  path_to_special_word = Rails.root + "lib/input_files/word_count_special_word.txt"
  special_word = open(path_to_special_word).read

  # =====================================================================
  # Your code goes below.
  # The text from the file is in the variable 'text'.
  # The special word from the file is in the variable 'special_word'.
  # =====================================================================
  ap "File input: " + text
  ap "Character count (with spaces): " + text.chomp.length.to_s
  ap "Character count (without spaces): " + text.gsub(/\s+/, "").length.to_s

  c = 0
  special_word.split.each do |s|
    if s == "story"
      c+=1
    end
  end

  ap "Occurences of 'story': " + c.to_s
end
