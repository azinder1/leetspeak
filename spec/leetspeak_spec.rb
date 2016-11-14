require('rspec')
require('leetspeak')


describe('String#leetspeak') do
  it('returns a string as is when no Leetspeak rules apply') do
    expect("happy".leetspeak()).to(eq("happy"))
  end
  it('replaces every instance of e with a 3') do
    expect("beet".leetspeak()).to(eq("b33t"))
  end
  it('replaces every instance of o with a 0') do
    expect("boot".leetspeak()).to(eq("b00t"))
  end
  it('replaces every instance of I with a 1') do
    expect("Igloo".leetspeak()).to(eq("1gl00"))
  end
  it('replaces every instance of s with a z') do
    expect("boots".leetspeak()).to(eq("b00tz"))
  end
  it('does not replace the first letter when it is an s') do
    expect("sassafrass".leetspeak).to(eq("sazzafrazz"))
  end
end

# convert string into alphabetical array
# test each array element with if/elsif loop
#   e.g. if e then puts 3
# push to output array
# join array
