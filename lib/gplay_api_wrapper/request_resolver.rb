module GplayApiWrapper

  class RequestResolver

    def self.get(uri)
      response = Net::HTTP.get(uri)
      JSON.parse(response)
    end

    def self.post

    end

    def self.put

    end

    def self.delete

    end
  end
end
