module GplayApiWrapper

  class RequestResolver

    def self.get(uri)
      Net::HTTP.get_response(uri)
    end

    def self.post

    end

    def self.put

    end

    def self.delete

    end

  end
end
