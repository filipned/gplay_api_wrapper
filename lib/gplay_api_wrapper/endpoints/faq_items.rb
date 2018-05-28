module GplayApiWrapper

  class FaqItems < Base
    BASE = "faq_items"

    def self.get(qs = {})
      build_and_send_request("", qs)
    end
  end
end
