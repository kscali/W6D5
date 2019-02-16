require 'rspec'
require 'tdd'

describe "#my_uniq" do 
let(:array) { [1,2,3,4,5,4,5] }
  it "removes dupllicate elements from an array" do 
    
    expect(my_uniq(array)).to eq([1,2,3,4,5])
  end
  
  it "returns an array" do
    expect(my_uniq(array)).to be_a(Array)
  end

  it "does not use the uniq method" do 
    array = [1,2,3]
    expect(array).to_not receive(:uniq)
    my_uniq(array)
  end    
end

describe "#two_sum" do 
  it "finds pairs of indices that sum to zero" do
    arr = [-1, 0, 2, -2, 1]
    expect(two_sum(arr)).to eq([[0, 4], [2, 3]])
  end

  it "returns an array" do
    arr = [2,3,5]
    expect(two_sum(arr)).to be_a(Array)
  end

  it "returns [] when no pairs are found" do
    expect(two_sum([1,2,3])).to eq([])
  end
end

describe "#my_transpose" do
  it "converts between the row-oriented and column-oriented representations." do
    rows = [
      [0, 1, 2],
      [3, 4, 5],
      [6, 7, 8]
    ]
    cols = [
      [0, 3, 6],
      [1, 4, 7],
      [2, 5, 8]
    ]
    expect(my_transpose(rows)).to eq(cols)
  end

  it "returns an array" do
    arr = [2,3,6,4,5]
    expect(my_transpose(arr)).to be_a(Array)
  end
end

describe "#stock_picker" do 
  it "picks the most profitable pair of days to buy and sell stocks" do
    arr = [30, 40, 56, 45, 35]
    expect(stock_picker(arr)).to eq([0,2])
  end

  it "returns an array" do
    arr = [2,3,9,4,5]
    expect(stock_picker(arr)).to be_a(Array)
  end
end

# describe "move" do
#   it "moves stacks from an array to the last array" do
#     stacks = [4, 3, 1]
#     expect(move).to eq(8)
#   end
# end
