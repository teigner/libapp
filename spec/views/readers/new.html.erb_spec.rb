require 'spec_helper'

describe 'readers/new.html.erb' do
  it 'has new_reader form' do
    reader = mock_model("Reader").as_new_record
    assign :reader, reader
    render
    expect(rendered).to have_selector('form#new_reader')
  end

	it "has reader_email field"
	it "has reader_password field"
	it "has reader_password_confirmation field"
	it "has register button"
end

