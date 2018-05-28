module GplayApiWrapper

  class Util
    def self.to_query(query_string)
      return '' if query_string.empty?
      query_params = query_string.reject do |_k, v|
        (v.is_a?(Integer) && v == -1) || (v.is_a?(String) && v == '')
      end
      query_params.map do |k, v|
        "#{k}=#{v}"
      end.join('&')
    end
  end
end
