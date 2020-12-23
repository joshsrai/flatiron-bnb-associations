class User < ApplicationRecord
    has_many :listings, foreign_key: 'host_id'
    has_many :trips, class_name: 'Reservation', foreign_key: 'guest_id'
    has_many :reservations, through: :listings
    has_many :reviews, foreign_key: 'guest_id'
end

#     it "has many listings" do
#       expect(katie.listings).to include(listing)
#     end
#     it 'has many reservations through their listing' do
#       expect(katie.reservations).to include(reservation)
#     end
#   end
# it 'has many trips' do
#     expect(logan.trips).to include(reservation)
#   end
#   it 'has written many reviews' do
#     expect(logan.reviews).to include(review)
#   end