require 'spec_helper'

feature 'Manage People' do
  scenario 'User can create and view list of people' do
    visit '/'
    expect(page).to have_content 'Welcome'
    click_on 'Add a Person'
    fill_in 'Name', with: 'Arya'
    fill_in 'Description', with: 'feisty'
    click_on 'Create Person'
    expect(page).to have_content 'Arya'
    expect(page).to have_content 'feisty'
  end
  scenario 'User can edit and update list of people' do
    visit '/'
    click_on 'Add a Person'
    fill_in 'Name', with: 'Arya'
    fill_in 'Description', with: 'feisty'
    click_on 'Create Person'
    expect(page).to have_content 'Arya'
    expect(page).to have_content 'feisty'
    click_on 'Show'
    expect(page).to have_content 'Arya'
    expect(page).to have_content 'feisty'
  end
end