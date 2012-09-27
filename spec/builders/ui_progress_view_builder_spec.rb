describe "UIProgressViewBuilder" do
  it "should build UIProgressView" do
    view = Simple::UIProgressViewBuilder.new.build(UIProgressView)
    view.class.should == UIProgressView
    view.progressViewStyle.should == UIProgressViewStyleDefault
  end

  it "should build UIProgressView with style" do
    view = Simple::UIProgressViewBuilder.new.build(UIProgressView, style: UIProgressViewStyleBar)
    view.progressViewStyle.should == UIProgressViewStyleBar
  end
end