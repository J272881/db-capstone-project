-- Excercise 3
-- Task 2 UpdateBooking
DROP PROCEDURE IF EXISTS UpdateBooking;
SET SQL_SAFE_UPDATES=0;
DELIMITER //
CREATE PROCEDURE UpdateBooking (IN bookingID INT, IN bookingDate DATE)
BEGIN
	SELECT BookingID INTO bookingID FROM Bookings WHERE BookingID = bookingID LIMIT 1;
    SELECT BookingDate INTO bookingDate FROM Bookings WHERE BookingDate = bookingDate LIMIT 1;
	UPDATE bookings
    SET BookingDate = bookingDate
    WHERE BookingID = bookingID;
    SELECT CONCAT ('Booking ', bookingID, ' updated') AS Confirmation;
    
END // 

CALL UpdateBooking (9, "2022-12-20")


