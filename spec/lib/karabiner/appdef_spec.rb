require "spec_helper"

describe Karabiner::Appdef do
  describe "#to_xml" do
    it "returns valid xml from appdef with equal" do
      appdef = Karabiner::Appdef.new("CHROME", equal: "com.google.Chrome")
      expect(appdef.to_xml).to eq(<<-EOS.unindent.strip)
        <appdef>
          <appname>CHROME</appname>
          <equal>com.google.Chrome</equal>
        </appdef>
      EOS
    end

    it "returns valid xml from appdef with prefix" do
      appdef = Karabiner::Appdef.new("CHROME", prefix: "com")
      expect(appdef.to_xml).to eq(<<-EOS.unindent.strip)
        <appdef>
          <appname>CHROME</appname>
          <prefix>com</prefix>
        </appdef>
      EOS
    end

    it "returns valid xml from appdef with suffix" do
      appdef = Karabiner::Appdef.new("CHROME", suffix: "Chrome")
      expect(appdef.to_xml).to eq(<<-EOS.unindent.strip)
        <appdef>
          <appname>CHROME</appname>
          <suffix>Chrome</suffix>
        </appdef>
      EOS
    end
  end
end
