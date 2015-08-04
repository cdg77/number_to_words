require('rspec')
require('numbers')

describe('Fixnum#numbers') do
  it('returns the english equivalent for a numberical value') do
    expect(0.numbers()).to(eq("zero"))
  end
end
