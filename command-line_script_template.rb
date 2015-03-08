#!/usr/bin/ruby

require 'optparse'

options = {}
OptionParser.new do |opts|
  opts.banner = "Usage: #{File.basename(__FILE__)} [options]\n\n"
  opts.define_head 'Script description'

  opts.separator ''
  opts.separator 'Specific options:'

  opts.on('-o', '--[no-]option', 'Option 1') do |v|
    options[:verbose] = v
  end

  opts.separator ''
  opts.separator 'Common options:'

  opts.on_tail('-v', '--[no-]verbose', 'Run verbosely') do |v|
    options[:verbose] = v
  end
  opts.on_tail('-h', '--help', 'Show this message') do
    puts opts
    exit
  end
end.parse!

# script code (using options hash)
