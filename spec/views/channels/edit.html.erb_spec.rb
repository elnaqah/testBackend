require 'spec_helper'

describe "channels/edit" do
  before(:each) do
    @channel = assign(:channel, stub_model(Channel,
      :name => "MyString",
      :url => "MyString",
      :desc => "MyText"
    ))
  end

  it "renders the edit channel form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", channel_path(@channel), "post" do
      assert_select "input#channel_name[name=?]", "channel[name]"
      assert_select "input#channel_url[name=?]", "channel[url]"
      assert_select "textarea#channel_desc[name=?]", "channel[desc]"
    end
  end
end
