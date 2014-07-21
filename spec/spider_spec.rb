require 'rspec'
require_relative '../service/spider'

describe Spider do

  it "should initialize with args" do
    expect { Spider.new }.to raise_error
  end

  it "should send one arg" do
    expect(Spider.new("term")).to be_a_instance_of(Spider)
  end

  context "searching" do

    let(:spider) { Spider.new("term") } 

    it "should find some terms from spider" do
      expect(spider.search).to raise NoMethodError
    end
  end

end
