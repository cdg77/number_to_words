require('rspec')
require('numbers')

describe('Fixnum#numbers') do
  it('returns the english equivalent for a numberical value, zero first') do
    expect(0.numbers()).to(eq("zero"))
  end

  it('returns the value back for 21 in english') do
    expect(21.numbers()).to(eq("twenty one"))
  end

end
