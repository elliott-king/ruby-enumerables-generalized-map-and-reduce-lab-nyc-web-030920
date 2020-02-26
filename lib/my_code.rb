# Your Code Here

def map source
  ret = []
  source.each do |val|
    # yield val
    ret << (yield val)
  end
  return ret
end

def reduce source, start=0
  # either start is index or starting value?
  memo = start
  source.each do |val|
    memo = yield(memo, val)
  end
  return memo
end
