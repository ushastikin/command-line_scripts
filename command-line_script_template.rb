#!/usr/bin/ruby

# this script is base on example from
# http://ruby-doc.org/stdlib-2.2.0/libdoc/optparse/rdoc/OptionParser.html

require 'optparse'

options = {}
OptionParser.new do |opts|
  opts.banner = "Usage: #{File.basename(__FILE__)} [options]\n\n"
  opts.define_head 'Script description'

  opts.separator ''
  opts.separator 'Specific options:'

  opts.on('-fFile', '--file=FILE', 'Set file path to FILE') do |f|
    options[:file_path] = f
  end

  opts.separator ''
  opts.separator 'Common options:'

  opts.on_tail('-h', '--help', 'Show this message') do
    puts opts
    exit
  end
end.parse!

# script code (using options hash)
