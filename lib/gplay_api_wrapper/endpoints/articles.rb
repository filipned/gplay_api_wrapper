module GplayApiWrapper

  class Articles < Base
    BASE = 'articles'.freeze

    def self.get(query_string = {})
      build_and_send_request('', query_string)
    end

    def self.get_article(article_id)
      build_and_send_request(article_id, query_string)
    end
  end
end

