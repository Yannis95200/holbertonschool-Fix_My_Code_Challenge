###
# Sort integer arguments (ascending)
###

result = []

ARGV.each do |arg|
  # Skip if not an integer
  next unless arg =~ /^-?\d+$/

  # Convert to integer
  i_arg = arg.to_i

  # Insert at the correct position
  is_inserted = false
  result.each_with_index do |val, idx|
    if i_arg < val
      result.insert(idx, i_arg)
      is_inserted = true
      break
    end
  end

  # Append if not inserted (i_arg is the largest value so far)
  result << i_arg unless is_inserted
end

puts result
