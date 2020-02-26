# Your Code Here

def map source
  ret = []
  source.each do |val|
    yield val
  end

end
