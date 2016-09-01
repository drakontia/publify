require 'rails_helper'

feature 'Customize Sidebar', js: true do
  let!(:blog) { create(:blog) }

  before do
    henri = create(:user, :as_admin)
    sign_in henri
  end

  scenario 'Add available sidebar item to effective items' do
    visit '/admin/sidebar'

    expect(page).to have_content '.draggable'
    expect(page).to have_content '.sortable'

    source = page.find(".draggable:first-child")
    target = page.find(".sortable")
    source.drag_to(target)
    expect{page.find(".sortable")}.to have_context source

    click_button 'commit'
  end
end
