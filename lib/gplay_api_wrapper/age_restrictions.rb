module GplayApiWrapper
  class AgeRestrictions
    # da li uvijek prosledjivati qs za svaki endpoint
    def self.get(qs = {})
      RequestBuilder.get('age_restrictions', qs)
    end
  end
end

