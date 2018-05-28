module GplayApiWrapper

  class HelpCategories < Base
    BASE = "help_categories"

    def self.get(qs = {})
      build_and_send_request("", qs)
    end

    def self.get_pages_by_category(category_id, qs = {})
      build_and_send_request("#{category_id}/pages", qs)
    end

    def self.get_page(page_id, qs = {})
      build_and_send_request("pages/#{page_id}", qs)
    end
  end
end
