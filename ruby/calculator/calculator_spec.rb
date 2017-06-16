# our calculator should ...
# add two integers and return an integer
# subtract two integers and return an integer
# multiply two integers and return an integer

# RSpec
# 'describe' block for each group of tests
  # 'it' block for each individual test
    # expect(<YOUR CODE>).to eq <RESULT>

require_relative 'calculator'

describe Calculator do
  let(:calculator) { Calculator.new }

  it "adds two integers" do
    expect(calculator.add(3,4)).to eq 7
  end

  it "subtracts two integers" do
    expect(calculator.subtract(7,1)).to eq 6
  end

  it "multiplies two integers" do
    expect(calculator.multiply(2,3)).to eq 6
  end

  it "divide two integers" do
    expect(calculator.divide(9,3)).to eq 3
  end
end


#DSA NOTES
# Tests often involve an expectation or assertion
# Test-Driven Development (TDD)
  # TDD repeat this process over and over again:
    # choose a feature to work on
    # write a test that will verify that a certain component of the new feature is working
    # watch it fail
    # add code
    # watch it pass
    # commit their code
#RSpec Test::
# file name ends w/ _spec.rb
  #several files in spec folder
#describe block" for each test