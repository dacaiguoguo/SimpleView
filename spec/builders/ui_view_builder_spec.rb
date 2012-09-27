describe "UIViewBuilder" do
  it "should build UIView" do
    Simple::UIViewBuilder.new.build(UIView).class.should == UIView
  end

  describe "#backgroundColor" do
    it "should set backgroundColor by HTML code" do
      view = Simple::UIViewBuilder.new.build(UIView, backgroundColor: "#f00")

      r = Pointer.new(:float)
      g = Pointer.new(:float)
      b = Pointer.new(:float)
      a = Pointer.new(:float)
      view.backgroundColor.getRed(r, green: g, blue: b, alpha: a)
      r[0].should == 1
      g[0].should == 0
      b[0].should == 0
      a[0].should == 1
    end

    it "should set background_color by HTML code" do
      view = Simple::UIViewBuilder.new.build(UIView, background_color: "#f00")

      r = Pointer.new(:float)
      g = Pointer.new(:float)
      b = Pointer.new(:float)
      a = Pointer.new(:float)
      view.backgroundColor.getRed(r, green: g, blue: b, alpha: a)
      r[0].should == 1
      g[0].should == 0
      b[0].should == 0
      a[0].should == 1
    end
  end
end