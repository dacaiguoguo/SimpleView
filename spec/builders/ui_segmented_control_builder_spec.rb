describe "UISegmentedControlBuilder" do
  it "should build UISegmentedControl" do
    view = Simple::UISegmentedControlBuilder.new.build(UISegmentedControl)
    view.class.should == UISegmentedControl
    view.numberOfSegments.should == 0
  end

  it "should build UISegmentedControl with items" do
    items = ["ABC"]
    view = Simple::UISegmentedControlBuilder.new.build(UISegmentedControl, items: items)
    view.numberOfSegments.should == 1
  end
end