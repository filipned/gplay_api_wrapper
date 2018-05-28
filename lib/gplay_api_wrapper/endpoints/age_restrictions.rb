module GplayApiWrapper
  # Class for resolving "/apps" endpoint requests
  class AgeRestrictions < Base

    BASE = "age_restrictions"

    def self.get(qs = {})
      build_and_send_request("",qs)
    end

  end
end

