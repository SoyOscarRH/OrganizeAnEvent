USE oae;

/* ======================================================
 * =======================      LOG IN      =============
 * ======================================================
 */

DROP PROCEDURE IF EXISTS CheckLogIn;

DELIMITER //
CREATE PROCEDURE CheckLogIn(IN ThisUsername INT, IN PasswordHash VARCHAR(256))
BEGIN
    SELECT * FROM User
        WHERE 
            User.Username = ThisUsername AND User.Password = (PasswordHash)
END //

DELIMITER ;

/* ======================================================
 * ==========      GET GUEST FULL DATA      =============
 * ======================================================
 */

 DROP PROCEDURE IF EXISTS GetGuestFullData;

DELIMITER //
CREATE PROCEDURE GetGuestFullData(IN ThisRFC VARCHAR(10))
BEGIN
    SELECT * FROM Guest 
        WHERE 
            Guest.RFC = (ThisRFC)
END //

DELIMITER ;

/* ======================================================
 * ==========      GET GUEST FULL NAME      =============
 * ======================================================
 */

 DROP PROCEDURE IF EXISTS GetGuestFullName;

DELIMITER //
CREATE PROCEDURE GetGuestFullName(IN ThisRFC VARCHAR(10))
BEGIN
    SELECT CONCAT(Name, ' ', FirstSurname, ' ', SecondSurname) as FullName FROM Guest 
        WHERE 
            Guest.RFC = (ThisRFC)
END //

DELIMITER ;


/* ======================================================
 * ==========      SET ASSISTANCE      ==================
 * ======================================================
 */

 DROP PROCEDURE IF EXISTS SetAssistance;

DELIMITER //
CREATE PROCEDURE SetAssistance(IN ThisRFC VARCHAR(10), IN ThisEventID INT, IN NewSeat INT, IN AnotherGuy VARCHAR(100))
BEGIN
    UPDATE GuestEvent
        SET
            GuestEvent.Assistance = 1, GuestEvent.Seat = NewSeat, GuestEvent.Representative = (AnotherGuy)
        WHERE
            GuestEvent.RFC = (ThisRFC) AND GuestEvent.EventID = ThisEventID
END //

DELIMITER ;

/* ======================================================
 * ==========      ADD COMMENTS      ====================
 * ======================================================
 */

 DROP PROCEDURE IF EXISTS AddComments;

DELIMITER //
CREATE PROCEDURE AddComments(IN ThisRFC VARCHAR(10), IN NewComment VARCHAR(1000))
BEGIN
    INSERT INTO Comment (Text, RFC)
        VALUES 
            (NewComment, ThisRFC)
END //

DELIMITER ;

/* ======================================================
 * ==============      GET PRIZE INFO     ===============
 * ======================================================
 */

 DROP PROCEDURE IF EXISTS GetPrizeInfo;

DELIMITER //
CREATE PROCEDURE GetPrizeInfo(IN ThisRFC VARCHAR(10))
BEGIN
    SELECT p.Name AS Prize, p.Speech AS Description, e.Name AS Event, e.Localization, e.Latitude, 
    e.Longitude, e.Time FROM GuestPrize gp, Guest g, Event e 
        WHERE 
            gp.PrizeID = p.PrizeID    AND 
            p.EventID = e.EventID     AND
            gp.RFC = (ThisRFC)
END //

DELIMITER ;

