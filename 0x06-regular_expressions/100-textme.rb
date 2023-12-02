#!/usr/bin/env ruby

def extract_information(log_entry)
  # Regular expression to extract relevant information
  regex = /\[from:(\S+)\] \[to:(\S+)\] \[flags:(.*?)\]/
  
  match_data = log_entry.match(regex)
  
  if match_data
    sender = match_data[1]
    receiver = match_data[2]
    flags = match_data[3]
    
    puts "#{sender},#{receiver},#{flags}"
  else
    puts "Invalid log entry format"
  end
end

# Check if an argument is provided
if ARGV.empty?
  puts "Usage: #{$0} {LOG_ENTRY}"
else
  log_entry = ARGV[0]
  extract_information(log_entry)
end
