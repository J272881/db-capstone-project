-- Task1 AddBooking
DELIMITER //
CREATE PROCEDURE AddBooking (bookingID INT , bookingDate DATE, tableNum INT, customerID INT, staffID INT)
BEGIN
INSERT INTO bookings(BookingID, BookingDate, TableNo, CustomerID, StaffID) values
	(bookingID, bookingDate, TableNum, customerID, staffID);
SELECT CONCAT('New Booking Added') AS Confirmation;

END //

DELIMITER ;

CALL AddBooking(9, "2022-12-30", 4, 3, 5);
