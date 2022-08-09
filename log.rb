# frozen_string_literal: true

# Log takes a log directory as an argument and returns a Log object.

require_relative './page_view'

class Log
  attr_reader :views

  def initialize(file_dir)
    @views = []
    File.read(file_dir).split("\n").each do |line|
      # TODO: Add a DB to import logs data
      # @views << PageView.new(
      #   page_url: line.split(" ")[0],
      #   client_ip: line.split(" ")[1]
      # )
      @views << {
        page_url: line.split(' ')[0],
        client_ip: line.split(' ')[1]
      }
    end
  end

  # list of page visits returned as array
  def page_view_list(order: :desc)
    @page_view_list ||= begin
      list = sort_by_count(@views)
      list.reverse! if order == :desc
      list
    end
  end

  # list of unique page visits returned as array
  def unique_page_view_list(order: :desc)
    @unique_page_view_list ||= begin
      list = sort_by_count(@views.uniq)
      list.reverse! if order == :desc
      list
    end
  end

  private

  def sort_by_count(list)
    list.group_by { |view| view[:page_url] }
        .map { |page, views| [page, views.count] }
        .sort_by { |_page, count| count }
  end
end
