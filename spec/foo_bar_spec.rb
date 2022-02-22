require_relative '../foo_bar'

describe Object, '#foo_bar_rule' do

  context "when input is not a number" do
    let(:invalid_input) { 'a' }

    it 'expect to raise an error' do
        expect { Object.foo_bar_rule(invalid_input) }.to raise_error
    end
  end
end

