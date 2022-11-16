require 'rails_helper'

RSpec.describe 'Categories', type: :system, js: true do
  describe 'index page' do
    before(:example) do
      @user = User.create(name: 'Rex', email: 'rex@soul.com', password: '123456')
      sign_in @user

      @category = Category.create(author: @user, name: 'Food', icon: 'https://source.unsplash.com/random/100x100')
      visit categories_path
    end

    it 'renders Nav of the Purchase Page' do
      expect(page).to have_content('Home')
    end

    it 'renders Name of Category' do
      expect(page).to have_content(@category.name)
    end

    it 'renders Icon of the Category' do
      expect(page).to have_selector('img[alt="Category Icon"]')
    end

    it 'renders Total Amount of the Category' do
      expect(page).to have_content('$')
    end

    it 'redirects to Purchases path when a category is clicked' do
      click_button @category.name
      expect(page).to have_current_path(category_purchases_path(@category.id))
    end

    it 'renders a button to Add a New Category' do
      expect(page).to have_content('New Category')
    end

    it 'redirects to a form for new category' do
      click_link 'New Category'
      expect(page).to have_current_path(new_category_path)
    end
  end
end
