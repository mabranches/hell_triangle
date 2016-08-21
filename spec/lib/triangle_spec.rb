require 'spec_helper'

RSpec.shared_examples "tree sum" do |tree_array, expected_total|
  context "tree initialized with #{tree_array}" do
    subject {Triangle.new(tree_array).max_total}
    it "should have a maximum total of #{expected_total}" do
      is_expected.to eq(expected_total)
    end
  end
end

describe Triangle do

  it_should_behave_like 'tree sum', [[6],[3,5],[9,7,1],[4,6,8,4]], 26
  it_should_behave_like 'tree sum', [], 0
  it_should_behave_like 'tree sum', [[4]], 4

end
