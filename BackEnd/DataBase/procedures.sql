USE oae;

/* ======================================================
 * ==========      GET GUEST FULL DATA      =============
 * ======================================================
 */

 DROP PROCEDURE IF EXISTS GetGuestFullData;

DELIMITER //
CREATE PROCEDURE GetGuestFullData(IN thisRFC VARCHAR(10))
BEGIN
    SELECT * FROM guest 
        WHERE 
            guest.rfc = (thisRFC)
END //

DELIMITER ;

/* ======================================================
 * ==========      GET GUEST FULL NAME      =============
 * ======================================================
 */

 DROP PROCEDURE IF EXISTS GetGuestFullName;

DELIMITER //
CREATE PROCEDURE GetGuestFullName(IN thisRFC VARCHAR(10))
BEGIN
    SELECT CONCAT(firstName, ' ', middleName, ' ', lastName) as fullName FROM guest 
        WHERE 
            guest.rfc = (thisRFC)
END //

DELIMITER ;


/* ======================================================
 * ==========      SET ASSISTANCE      ==================
 * ======================================================
 */

 DROP PROCEDURE IF EXISTS SetAssistance;

DELIMITER //
CREATE PROCEDURE SetAssistance(IN thisRFC VARCHAR(10), IN newSeat INT, IN anotherGuy VARCHAR(100))
BEGIN
    UPDATE guest
        SET
            guest.assistance = 1, guest.seat = newSeat, guest.representative = (anotherGuy)
        WHERE
            guest.rfc = (thisRFC)
END //

DELIMITER ;

/* ======================================================
 * ==========      ADD COMMENTS      ====================
 * ======================================================
 */

 DROP PROCEDURE IF EXISTS AddComments;

DELIMITER //
CREATE PROCEDURE AddComments(IN thisRFC VARCHAR(10), IN newComment VARCHAR(1000))
BEGIN
    INSERT INTO comment
        VALUES 
            (thisRFC, newComment)
END //

DELIMITER ;

/* ======================================================
 * ==========      GET PRIZE INFO     ===============
 * ======================================================
 */

 DROP PROCEDURE IF EXISTS GetPrizeInfo;

DELIMITER //
CREATE PROCEDURE GetPrizeInfo(IN thisRFC VARCHAR(10))
BEGIN
    SELECT p.name as prize, p.speech as desc, e.name as event, e.place, e.time FROM guest_prize gp, guest g, event e 
        WHERE 
            gp.id_prize = p.id_prize    AND 
            p.id_event = e.id_event     AND
            gp.rfc = (thisRFC)
END //

DELIMITER ;

