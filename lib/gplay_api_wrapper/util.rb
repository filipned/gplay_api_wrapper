module GplayApiWrapper
    # Place for adding utility methods

  def to_query(qs)
      return "" if qs.empty?
      qs.map{|k,v| "#{k}=#{v}"}.join('&')
  end

end
