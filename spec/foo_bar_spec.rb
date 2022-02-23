require_relative '../foo_bar'

describe Object, '#foo_bar_rule' do

  context "when input is not a number" do
    let(:invalid_input) { 'a' }

    it 'expect to raise "Not a number ERROR"' do
        expect { Object.foo_bar_rule(invalid_input) }.to raise_error
    end
  end
end

describe Object, '#foo_bar' do

  context "when input is not a number" do
    let(:invalid_input) { nil }

    it 'expect to raise "Not a number ERROR"' do
        expect { Object.foo_bar(invalid_input) }.to raise_error
    end
  end
end

