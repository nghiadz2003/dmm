select distinct c.ID, c.Model, c.Brand, c.Color, r.Reservation_Number, r.Amount
from Cars c
join Rentals r on c.ID = r.CarID
group by c.ID, c.Model, c.Brand, c.Color, r.Reservation_Number, r.Amount
order by Amount asc




