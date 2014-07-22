require ('rspec')
require ('roman_reverse.rb')

describe('converts roman numerals to numbers') do

  it('converts numerals to numbers') do
    roman_reverse("IV").should(eq(4))
  end
  it("converts numerals to numbers again") do
    roman_reverse("XXII").should(eq(22))
  end
  it("converts numerals to numbers again") do
    roman_reverse("MMMDXXIX").should(eq(3529))
  end
  it("converts numerals to numbers again") do
    roman_reverse("MI").should(eq(1001))
  end
end
