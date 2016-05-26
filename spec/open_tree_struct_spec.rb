require 'spec_helper'

require 'open_tree_struct'

describe OpenTreeStruct do
  let(:hash) {
    {
      a: {
        b: { c: c_value }
      },
      d: d_value,
    }
  }

  let(:c_value) { %w[1 2 3] }
  let(:d_value) { [100] }

  subject { described_class.new(hash) }

  it 'behaves like an open struct' do
    expect(subject.d).to eq(d_value)
  end

  it 'recursively behaves like an open struct' do
    expect(subject.a.b.c).to eq(c_value)
  end
end
