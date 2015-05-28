require('rspec')
require('./lib/coin_combo')

describe('Fixnum#coin_combo') do
  it('returns one quarter when the user needs 25 cents in change') do
    expect((25).coin_combo()).to(eq('quarter'))
  end
end
