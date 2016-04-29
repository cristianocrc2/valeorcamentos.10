require 'rails_helper'

RSpec.describe "nichos/show", type: :view do
  before(:each) do
    @nicho = assign(:nicho, Nicho.create!(
      :nicho => "Nicho",
      :ativo => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nicho/)
    expect(rendered).to match(/false/)
  end
end
