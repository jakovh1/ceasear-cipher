require './script'

describe '#caesar_cipher' do
  it 'Shifts each character by 3 positions, resulting in "khoor"' do
    expect(caesar_cipher('hello', 3)).to eql('khoor')
  end

  it 'Shifts each character by 2 positions, resulting in "zab"' do
    expect(caesar_cipher('xyz', 2)).to eql('zab')
  end

  it 'A shift equal to the length of the alphabet should return the original string.' do
    expect(caesar_cipher("fullrotation", 26)).to eql("fullrotation")
  end

  it 'String with only non-alphabetic characters should remain unchanged.' do
    expect(caesar_cipher("@#$%^", 10)).to eql("@#$%^")
  end

  it 'A large negative shift should wrap around correctly (e.g., -27 is equivalent to a shift of -1).' do
    expect(caesar_cipher('abc', -27)).to eql('zab')
  end

  it '52 is a multiple of 26, so it should result in the same string.' do
    expect(caesar_cipher('hello', 52)).to eql('hello')
  end
end