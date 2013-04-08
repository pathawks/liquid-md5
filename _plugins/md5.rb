module MDhash
  def md5(input)
    Digest::MD5.hexdigest(input)
  end
end

Liquid::Template.register_filter(MDhash)
