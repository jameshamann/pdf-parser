RSpec.describe Pdf::Parser do
  it "has a version number" do
    expect(Pdf::Parser::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(true).to eq(true)
  end

  it "returns an error if a pdf isn't passed as an argument" do
    expect { Pdf::Parser.parse }.to raise_error(ArgumentError)
  end

  it "successfully parses a simple XFA form" do
    expect {
      described_class.parse("spec/support/documents/radiocheckbox_xfa.pdf")
    }.not_to raise_exception
  end

end
