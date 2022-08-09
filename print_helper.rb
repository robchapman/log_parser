# frozen_string_literal: true

require 'ascii_charts'

module PrintHelper
  def print_report(data)
    puts table_summary(data)
    puts AsciiCharts::Cartesian.new(data).draw
  end

  private

  def table_summary(data)
    table_headings = '  | View Count | Page URL '
    rows = data.map do |page_count|
      "  | - #{page_count[1]}#{' ' * (8 - page_count[1].to_s.length)} | #{page_count[0]}"
    end
    table_width = (rows + [table_headings]).max_by(&:length).length + 2
    table_end = "  +#{'-' * (table_width - 2)}+"
    # Printing table
    puts table_end
    puts spaced_table_row(table_headings, table_width)
    rows.each { |row| puts spaced_table_row(row, table_width) }
    puts table_end
  end

  def spaced_table_row(row, table_width)
    "#{row}#{' ' * (table_width - row.length)} |"
  end
end
