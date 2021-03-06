require 'rails_helper'

describe 'as a visitor' do
  describe 'when I visit /professors' do
    before(:each) do
      @snape = Professor.create(name: "Severus Snape", age: 45, specialty: "Potions")
      @hagrid = Professor.create(name: "Rubeus Hagrid", age: 38 , specialty: "Care of Magical Creatures")
      @lupin = Professor.create(name: "Remus Lupin", age: 49 , specialty: "Defense Against The Dark Arts")

    end

    it "I see a list of professors and their attributes" do
      visit '/professors'

      expect(page).to have_content(@snape.name)
      expect(page).to have_content(@snape.age)
      expect(page).to have_content(@snape.specialty)

      expect(page).to have_content(@hagrid.name)
      expect(page).to have_content(@hagrid.age)
      expect(page).to have_content(@hagrid.specialty)

      expect(page).to have_content(@lupin.name)
      expect(page).to have_content(@lupin.age)
      expect(page).to have_content(@lupin.specialty)
    end

  end
end
