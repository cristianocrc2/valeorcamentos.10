require 'rails_helper'

RSpec.describe "nichos/new", type: :view do
  before(:each) do
    assign(:nicho, Nicho.new(
      :nicho => "MyString",
      :ativo => false
    ))
  end

  it "renders new nicho form" do
    render

    assert_select "form[action=?][method=?]", nichos_path, "post" do

      assert_select "input#nicho_nicho[name=?]", "nicho[nicho]"

      assert_select "input#nicho_ativo[name=?]", "nicho[ativo]"
    end
  end
end
