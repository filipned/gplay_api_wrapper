module GplayApiWrapper

  class FaqItems < Base
    BASE = 'faq_items'.freeze

    def self.get(query_string = {})
      build_and_send_request('', query_string)
    end
  end
end
