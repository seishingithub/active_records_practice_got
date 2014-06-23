require 'spec_helper'

feature 'Manage People' do
  scenario 'User can create and view list of people' do
    visit '/'
    expect(page).to have_content 'Welcome'
    click_on 'Add a Person'
    click_on 'Sign up'
    fill_in 'Email', with: 'peggy@example.com'
    fill_in 'Password', with: 12345678
    fill_in 'Password confirmation', with: 12345678
    click_on 'Sign up'
    fill_in 'Name', with: 'Arya'
    fill_in 'Description', with: 'feisty'
    click_on 'Create Person'
    expect(page).to have_content 'Arya'
    expect(page).to have_content 'feisty'
  end

  scenario 'User can view individual from list of people' do
    visit '/'
    click_on 'Add a Person'
    click_on 'Sign up'
    fill_in 'Email', with: 'peggy@example.com'
    fill_in 'Password', with: 12345678
    fill_in 'Password confirmation', with: 12345678
    click_on 'Sign up'
    fill_in 'Name', with: 'Arya'
    fill_in 'Description', with: 'feisty'
    click_on 'Create Person'
    expect(page).to have_content 'Arya'
    expect(page).to have_content 'feisty'
    click_on 'Show'
    expect(page).to have_content 'Arya'
    expect(page).to have_content 'feisty'
  end

  scenario 'User can edit and update list of people' do
    visit '/'
    click_on 'Add a Person'
    click_on 'Sign up'
    fill_in 'Email', with: 'peggy@example.com'
    fill_in 'Password', with: 12345678
    fill_in 'Password confirmation', with: 12345678
    click_on 'Sign up'
    fill_in 'Name', with: 'Arya'
    fill_in 'Description', with: 'feisty'
    click_on 'Create Person'
    expect(page).to have_content 'Arya'
    expect(page).to have_content 'feisty'
    click_on 'Edit'
    fill_in 'Name', with: 'Jon Snow'
    fill_in 'Description', with: 'valiant'
    click_on 'Update'
    expect(page).to have_content 'Jon Snow'
    expect(page).to have_content 'valiant'
    expect(page).to have_no_content 'Arya'
    expect(page).to have_no_content 'feisty'
  end

  scenario 'User can delete person from list' do
    visit '/'
    click_on 'Add a Person'
    click_on 'Sign up'
    fill_in 'Email', with: 'peggy@example.com'
    fill_in 'Password', with: 12345678
    fill_in 'Password confirmation', with: 12345678
    click_on 'Sign up'
    fill_in 'Name', with: 'Arya'
    fill_in 'Description', with: 'feisty'
    click_on 'Create Person'
    expect(page).to have_content 'Arya'
    expect(page).to have_content 'feisty'
    click_on 'Delete'
    expect(page).to have_no_content 'Arya'
    expect(page).to have_no_content 'feisty'
  end
end