class MissingNumber
  def initialize input
    split_input input
  end

  def find_missing
    (full_sequence - @elements)[0]
  end

  private

  def split_input input
    @last_element, @elements = input.split(":")
    @elements = @elements ? @elements.split(",") : []
  end

  def full_sequence
    a=*("1"..@last_element)    
  end
end

require 'rspec'

describe MissingNumber do
  let(:missing_number_7) {MissingNumber.new "8:1,2,3,4,5,6,8"}

  it "should implement method .new" do
    expect(MissingNumber).to respond_to(:new)
  end

  it "should implement method #find_missing" do
    expect(missing_number_7).to respond_to(:find_missing)
  end

  it "should return '7' from find_missing" do
    expect(missing_number_7.find_missing).to eq "7"
  end

  let(:missing_number_1) {MissingNumber.new "1:"}
  it "should return '1' from find_missing" do
    expect(missing_number_1.find_missing).to eq "1"
  end
end