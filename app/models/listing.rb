class Listing < ApplicationRecord
    belongs_to :host, class_name: 'User'
    belongs_to :neighborhood
    has_many :guests, through: :reservations, class_name: 'User'
    has_many :reservations
    has_many :reviews, through: :reservations
end

# it 'belongs to a neighborhood' do
#     expect(listing.neighborhood.name).to eq("Fi Di")
#   end
#   it 'belongs to a host' do
#     expect(listing.host.name).to eq("Amanda")
#   end
#     it 'has many reservations' do
#       expect(listing.reservations).to include(reservation)
#     end
#     it 'has many reviews through reservations' do
#       expect(listing.reviews).to include(review)
#     end
#     it 'knows about all of its guests' do
#       expect(listing.guests).to include(logan)
