require 'rspec'

def find_all_duplicates(arr)
  arr.select.with_index do |elem, i|
    i != arr.index(elem)
  end
end

a = [1,2,3,4,1,2]
puts find_all_duplicates(a)


describe "Find all duplicates" do
  it "returns all duplicate elements" do
    a = [1,2,3,4,1,2]
    expect(find_all_duplicates(a)).to eq([1,2])

    a = [1,2,3,4,2,4]
    expect(find_all_duplicates(a)).to eq([2,4])
  end

  it "returns nil if there is no duplicate" do
    a = []
    expect(find_all_duplicates(a)).to eq([])

    a = [1,2,3,4]
    expect(find_all_duplicates(a)).to eq([])
  end
end