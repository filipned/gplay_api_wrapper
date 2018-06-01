module GplayApiWrapper

  class RequestResolver

    def self.get(uri)
      begin
        Net::HTTP.get_response(uri)
      rescue Net::HTTPBadRequest => e
        e
      end
    end

    def self.post

    end

    def self.put

    end

    def self.delete

    end

  end
end
