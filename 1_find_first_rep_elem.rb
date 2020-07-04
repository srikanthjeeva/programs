require 'rspec'

def first_repeated_element(arr)

  return nil if arr.empty?
  hsh = Hash.new(0)
  arr.each do |elem|
    hsh[elem] = hsh[elem] += 1
    return elem if hsh[elem] > 1
  end
  return nil
end

describe "first repeated element" do
  it "returns the first repeated element" do
    arr = [1,2,3,4,1,2]
    expect(first_repeated_element(arr)).to eq(1)

    arr = [1,2,3,4,4,2]
    expect(first_repeated_element(arr)).to eq(4)
  end

  it "returns nil for empty array or no elem present" do
    arr = [1,2,3,4]
    expect(first_repeated_element(arr)).to eq(nil)

    arr = []
    expect(first_repeated_element(arr)).to eq(nil)
  end
end