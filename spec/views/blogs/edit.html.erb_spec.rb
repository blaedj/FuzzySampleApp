require 'spec_helper'

describe "blogs/edit" do
  before(:each) do
    @blog = assign(:blog, stub_model(Blog,
      :author => "MyString",
      :entry => "MyText"
    ))
  end

  it "renders the edit blog form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => blogs_path(@blog), :method => "post" do
      assert_select "input#blog_author", :name => "blog[author]"
      assert_select "textarea#blog_entry", :name => "blog[entry]"
    end
  end
end
