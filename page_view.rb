# frozen_string_literal: true

# TODO: Add a DB to import logs data

class PageView
  attr_reader :page_url, :client_ip

  def initialize(page_url:, client_ip:)
    @page_url = page_url
    @client_ip = client_ip
  end
end
