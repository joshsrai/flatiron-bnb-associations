class Reservation < ApplicationRecord
    belongs_to :guest, class_name: 'User'
    belongs_to :listing
  
    has_one :review
end

# it 'belongs to a guest' do
#     expect(reservation.guest).to eq(logan)
#   end

#   it 'belongs to a listing' do
#     expect(reservation.listing).to eq(listing)
#   end