include ActionView::Helpers::NumberHelper
desc "Calculate monthly loan payments"
task :loan_payment do
  apr = open("lib/input_files/loan_payment_apr.txt").read
  years = open("lib/input_files/loan_payment_years.txt").read
  princ = open("lib/input_files/loan_payment_principal.txt").read
  ap "APR: " + apr.chomp
  ap "Number of Years: " + years.chomp
  ap "Principal: " + '%.1f' % princ.chomp
  ap("Principal: $#{princ.gsub(/\s+/, "")}.0")
  r = apr.to_f / 1200
  N = years.to_i * 12
  payment = (r * princ.to_f) / (1 - (1 + r)**-N)
  ap "Monthly Payment: " + '%.2f' % payment
  puts number_to_currency 123456.50

end
