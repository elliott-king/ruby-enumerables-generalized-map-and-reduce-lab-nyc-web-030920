# Your Code Here

def map source
  ret = []
  source.each do |val|
    # yield val
    ret << (yield val)
  end
  return ret
end

def reduce source, start=nil
  # either start is index or starting value?
  if start
    memo = start
    i = 0
  else
    memo = source[0]
    i = 1
  end
  while i < source.length
    val = source[i]
    memo = yield(memo, val)
    i += 1
  end

  return memo
end
