module GplayApiWrapper

  class HelpCategories < Base
    BASE = 'help_categories'.freeze

    def self.get(query_string = {})
      build_and_send_request('', query_string)
    end

    def self.get_pages_by_category(category_id, query_string = {})
      build_and_send_request("#{category_id}/pages", query_string)
    end

    def self.get_page(page_id, query_string = {})
      build_and_send_request("pages/#{page_id}", query_string)
    end
  end
end
