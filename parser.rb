# frozen_string_literal: true

require_relative './log'
require_relative './print_helper'
include PrintHelper

file_dir = ARGV[0]
# TODO: Some validation of the file_dir here
# regex = @"^[\w\-. ]+$";
# Check if file exists

log = Log.new(file_dir)
puts "Parsing log file '#{file_dir}':"
puts ''
puts '  *************************'
puts '  *    Most Page Views    *'
puts '  *************************'
puts ''
print_report(log.page_view_list(order: :desc))
puts ''
puts '  ********************************'
puts '  *    Most Unique Page Views    *'
puts '  ********************************'
puts ''
print_report(log.unique_page_view_list(order: :desc))
