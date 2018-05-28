module GplayApiWrapper
  # Class for resolving "/apps" endpoint requests
  class AgeRestrictions < Base

    BASE = 'age_restrictions'.freeze

    def self.get(query_string = {})
      build_and_send_request('', query_string)
    end

  end
end

