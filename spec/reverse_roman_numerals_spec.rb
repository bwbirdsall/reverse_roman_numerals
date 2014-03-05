require('rspec')
require('reverse_roman_numerals')

describe('reverse_roman_numerals') do
  it('returns 1 for I') do
    reverse_roman_numerals("I").should(eq(1))
  end
  
  it('returns 9 for IX') do
    reverse_roman_numerals("IX").should(eq(9))  
  end

  it("returns 3,999 for MMMCMXCIX") do
    reverse_roman_numerals("MMMCMXCIX").should(eq(3999))
  end
end
