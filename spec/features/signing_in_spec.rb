require 'spec_helper'

feature 'Signing in' do
  scenario 'redirects to the sign in page when not signed in' do
    visit '/'
    expect(current_path).to eq('/login')
  end

  scenario 'can log in' do
    visit '/login'

    fill_in 'Email', with: 'joe@example.com'
    fill_in 'Password', with: '123'
    click_button 'Sign in'

    expect(current_path).to eq('/')
  end
end
