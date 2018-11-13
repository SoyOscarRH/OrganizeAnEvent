USE oae;

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
    SELECT CONCAT(FirstName, ' ', MiddleName, ' ', LastName) as FullName FROM Guest 
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
CREATE PROCEDURE SetAssistance(IN ThisRFC VARCHAR(10), IN NewSeat INT, IN AnotherGuy VARCHAR(100))
BEGIN
    UPDATE Guest
        SET
            Guest.Assistance = 1, Guest.Seat = NewSeat, Guest.Representative = (AnotherGuy)
        WHERE
            Guest.RFC = (ThisRFC)
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
    INSERT INTO Comment (Comment, RFC)
        VALUES 
            (NewComment, ThisRFC)
END //

DELIMITER ;

/* ======================================================
 * ==========      GET PRIZE INFO     ===============
 * ======================================================
 */

 DROP PROCEDURE IF EXISTS GetPrizeInfo;

DELIMITER //
CREATE PROCEDURE GetPrizeInfo(IN ThisRFC VARCHAR(10))
BEGIN
    SELECT p.Name AS Prize, p.Speech AS Description, e.Name AS Event, e.Place, e.Lat AS Latitude, 
    e.Long AS Longitude, e.Time FROM Guest_Prize gp, Guest g, Event e 
        WHERE 
            gp.PrizeID = p.PrizeID    AND 
            p.EventID = e.EventID     AND
            gp.RFC = (ThisRFC)
END //

DELIMITER ;

