class Neighborhood < ApplicationRecord
    belongs_to :city
    has_many :listings
end

# it 'belongs to a city' do
#     expect(brighton_beach.city).to be(nyc)
#   end
#     it 'has many listings' do
#       expect(brighton_beach.listings).to eq([listing])
#     end