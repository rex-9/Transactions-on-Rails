require 'rails_helper'

RSpec.describe 'Purchases', type: :system, js: true do
  describe 'index page' do
    before(:example) do
      @user = User.create(name: 'Rex', email: 'rex@soul.com', password: '123456')
      sign_in @user

      @category = Category.create(author: @user, name: 'Food', icon: 'https://source.unsplash.com/random/100x100')
      @purchase = Purchase.create(author: @user, name: 'Food', amount: 10)
      CategoryPurchase.create(category_id: 1, purchase_id: 1)

      visit category_purchases_path(@category.id)
    end

    it 'renders Nav of the Purchase Page' do
      expect(page).to have_content('Purchases')
    end

    it 'renders Total Amount of the Purchases' do
      expect(page).to have_content('Total Cost')
    end

    it 'renders Name of Purchase' do
      expect(page).to have_content(@purchase.name)
    end

    it 'renders Amount of the purchase' do
      expect(page).to have_content(@purchase.amount)
    end

    it 'renders a button to Add a New purchase' do
      expect(page).to have_content('New Purchase')
    end

    it 'redirects to a form for new purchase' do
      click_link 'New Purchase'
      expect(page).to have_current_path(new_category_purchase_path(@category.id))
    end
  end
end
