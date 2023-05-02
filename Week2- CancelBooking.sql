DROP PROCEDURE IF EXISTS CancelBooking;
DELIMITER //
CREATE PROCEDURE CancelBooking (IN BookingIDInput INT)
	BEGIN
	DELETE FROM bookings WHERE BookingID = BookingIDInput;
	SELECT CONCAT("Booking", (BookingIDInput), " is cancelled") AS Confimation;

    END //
DELIMITER ;
call CancelBooking(9);