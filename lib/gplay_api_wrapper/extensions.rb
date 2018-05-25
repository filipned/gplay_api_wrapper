class Hash
  def to_query
    return "" if self.empty?
    self.map{|k,v| "#{k}=#{v}"}.join('&')
  end
end
