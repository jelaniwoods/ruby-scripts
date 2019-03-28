desc "Print a random fortune"
task :fortune do
  fortunes = [
    "Do not mistake temptation for opportunity",
    "A friend asks only for your time not your money",
    "Do not confuse recklessness with confidence",
    "Bide your time, for success is near",
    "Every day in your life is a special occasion"
  ]
  # =====================================================================
  # Your code goes below.
  # =====================================================================
  # ap(fortunes[(0..fortunes.length - 1).to_a.shuffle[0]])
  # output = fortunes.at(rand(5))
  index = rand(5)
  output = fortunes.at(index)
  ap output
end
