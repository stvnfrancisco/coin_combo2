require('rspec')
require('./lib/coin_combo')

describe('Fixnum#coin_combo') do
  it('it will return change when the amount is less than 5.') do
    expect((4).coin_combo()).to(eq([0,0,0,4]))
  end

  it('returns pennies and nickels for an amount greater than 5 and less than 10') do
    expect((9).coin_combo()).to(eq([0,0,1,4]))
  end

  it('returns pennies and nickels and dimes for an amount greater than 10 and less than 25') do
    expect((17).coin_combo()).to(eq([0,1,1,2]))
  end

  it('returns pennies and nickels and dimes and quarters for an amount greater than 25 and less than 100') do
    expect((41).coin_combo()).to(eq([1,1,1,1]))
  end
end
