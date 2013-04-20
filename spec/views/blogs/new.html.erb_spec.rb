require 'spec_helper'

describe "blogs/new" do
  before(:each) do
    assign(:blog, stub_model(Blog,
      :author => "MyString",
      :entry => "MyText"
    ).as_new_record)
  end

  it "renders new blog form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => blogs_path, :method => "post" do
      assert_select "input#blog_author", :name => "blog[author]"
      assert_select "textarea#blog_entry", :name => "blog[entry]"
    end
  end
end
