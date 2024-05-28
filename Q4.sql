select r.Reservation_Number, r.Pick_up_date, r.Return_date, r.CarID, c.Description, c.Model, c.Brand, l.City as Pick_up_City,lo.City as Return_City
from Cars c
join Rentals r on c.ID = r.CarID
join Location l on r.Pick_up_location = l.ID
join Location lo on r.Return_location = lo.ID
where c.Brand = 'Ford'
order by c.ID asc,r.Pick_up_date desc