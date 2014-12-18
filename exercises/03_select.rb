def select(items, &block)
  result = []

  items.each do |item|
    # if the block returns true for item
    # append to result
    if block.call(item)
      result << item
    end
  end

  result
end


# Similiar but next level to what we did yesterday in ruby-intro-to-enumerable-part-a
# word.length >



# ------ code above this line ------

require 'rspec/autorun'

RSpec.describe '#select' do
  it 'returns an array of words shorter than the given length' do
    input = ['a', 'big', 'black', 'bear', 'is', 'running']

    expect(select(input) { |word| word.length < 3}).to eq(['a', 'is'])
    expect(select(input) { |word| word.length < 4}).to eq(['a', 'big', 'is'])
  end

  it 'returns an empty array when given an empty array, regardless of the provided block' do
    expect(select([]) { |word| word.length < 3}).to eq([])
  end
end
