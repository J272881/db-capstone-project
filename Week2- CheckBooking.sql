-- Task 2 CheckBookings Procedure
DROP PROCEDURE IF EXISTS CheckBooking;

CREATE PROCEDURE CheckBooking (IN Booking_Date DATE, IN TableNumber INT)
	SELECT CONCAT("Table", (TableNumber), " is already booked") AS 'Booking Status'  WHERE EXISTS 
    (SELECT * FROM bookings WHERE bookings.BookingDate = Booking_Date AND bookings.TableNo = TableNumber);
call CheckBooking("2022-11-12", 3);
