# Your Code Here

def map source
  ret = []
  source.each do |val|
    # yield val
    ret << (yield val)
  end
  return ret
end

def reduce source start=0
  # either start is index or starting value?
  ret = start
  source.each do |val|
    ret += (yield val)
  end
  return ret
end
