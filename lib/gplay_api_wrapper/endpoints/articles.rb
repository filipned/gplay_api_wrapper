module GplayApiWrapper

  class Articles < Base
    BASE = "articles"

    def self.get(qs = {})
      build_and_send_request("", qs)
    end

    def self.get_article(article_id)
      build_and_send_request(article_id, qs)
    end
  end
end

