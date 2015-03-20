require 'spec_helper'

describe(Jekyll) do
  let(:overrides) do
    {
      "source"      => source_dir,
      "destination" => dest_dir,
      "url"         => "http://example.org",
    }
  end
  let(:config) do
    Jekyll.configuration(overrides)
  end
  let(:site)     { Jekyll::Site.new(config) }
  let(:contents) { File.read(dest_dir("index.html")) }
  before(:each) do
    site.process
  end

  it "converts source into an MD5 hash" do
    expect(contents).to match /test@example.com 55502f40dc8b7c769880b10874abc9d0/
  end

  it "strips whitespace from source" do
    expect(contents).to match /space@example.com  1cb77a950d8c54fb709f3aaf5a6dbfd1/
  end
 end
