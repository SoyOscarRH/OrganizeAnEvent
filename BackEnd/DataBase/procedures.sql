USE OrganizeAnEvent;

/* ======================================================
 * =======================      GET PASSWORD    =========
 * ======================================================
 */

DROP PROCEDURE IF EXISTS GetUserPassword;

DELIMITER //
CREATE PROCEDURE GetUserPassword (IN ThisUsername INT)
BEGIN
    SELECT Password FROM User
        WHERE
            User.Username = ThisUsername;
END //

DELIMITER ;

/* ======================================================
 * =================      GET USER TYPE     =============
 * ======================================================
 */

DROP PROCEDURE IF EXISTS GetUserType;

DELIMITER //
CREATE PROCEDURE GetUserType (IN ThisUsername INT)
BEGIN
    SELECT Type FROM User
        WHERE
            User.Username = ThisUsername;
END //

DELIMITER ;







/* ======================================================
 * =================      GET USER TYPE     =============
 * ======================================================
 */

DROP PROCEDURE IF EXISTS GetEventDataFromUser;

DELIMITER //
CREATE PROCEDURE GetEventDataFromUser (IN ThisUsername INT)
BEGIN
    SELECT
        Event.EventID as EventID, 
        Event.Name as EventName, 
        Event.Localization as Localization, 
        Event.Latitude as Latitude, 
        Event.Longitude as Longitude, 
        Event.Time as Time, 
        Event.Description as Description,
        Institution.Name as InstitutionName
      FROM User, UserEvent, Event, Institution
        WHERE
            (User.Username = ThisUsername)                      AND
            (User.Username = UserEvent.Username)                AND
            (UserEvent.EventID = Event.EventID)                 AND
            (Event.InstitutionID = Institution.InstitutionID);
END //

DELIMITER ;











/* ======================================================
 * ==========      GET GUEST FULL DATA      =============
 * ======================================================
 */

 DROP PROCEDURE IF EXISTS GetGuestFullData;

DELIMITER //
CREATE PROCEDURE GetGuestFullData (IN ThisRFC VARCHAR(10), IN ThisInstitutionID INT, IN ThisEventID INT)
BEGIN
    SELECT g.RFC, g.Name, g.FirstSurname, g.SecondSurname, 
    g.email, p.Name AS Place FROM Guest g, Place p, Institution i, GuestEvent ge
        WHERE 
            ge.RFC = g.RFC AND
            g.PlaceID = p.PlaceID AND
            p.InstitutionID = i.InstitutionID AND
            (g.RFC = (ThisRFC) OR ThisRFC IS NULL) AND
            (i.InstitutionID = (ThisInstitutionID) OR ThisInstitutionID IS NULL) AND
            (ge.EventID = (ThisEventID) OR ThisEventID IS NULL);
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
            Guest.RFC = (ThisRFC);
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
            GuestEvent.RFC = (ThisRFC) AND GuestEvent.EventID = ThisEventID;
END //

DELIMITER ;

/* ======================================================
 * ==========      ADD COMMENTS      ====================
 * ======================================================
 */

 DROP PROCEDURE IF EXISTS AddComments;

DELIMITER //
CREATE PROCEDURE AddComments(IN ThisRFC VARCHAR(10), IN ThisEventID INT, IN NewComment VARCHAR(1000))
BEGIN
    INSERT INTO Comment (Text, RFC, EventID)
        VALUES 
            (NewComment, ThisRFC, EventID);
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
            gp.RFC = (ThisRFC);
END //

DELIMITER ;

/* ======================================================
 * ==============      GET ALL EVENTS     ===============
 * ======================================================
 */

 DROP PROCEDURE IF EXISTS GetAllEvents;

DELIMITER //
CREATE PROCEDURE GetAllEvents()
BEGIN
    SELECT EventID, Name as Event FROM Event;
END //

DELIMITER ;

/* ======================================================
 * =========      GET ALL INSTITUTIONS     ==============
 * ======================================================
 */

 DROP PROCEDURE IF EXISTS GetAllInstitutions;

DELIMITER //
CREATE PROCEDURE GetAllInstitutions()
BEGIN
    SELECT InstitutionID, Name as Institution FROM Institution;
END //

DELIMITER ;

/* ======================================================
 * ===============      GET ALL PLACES     ==============
 * ======================================================
 */

 DROP PROCEDURE IF EXISTS GetAllPlaces;

DELIMITER //
CREATE PROCEDURE GetAllPlaces()
BEGIN
    SELECT PlaceID, Name as Place FROM Place;
END //

DELIMITER ;

/* ======================================================
 * ===============      ADD GUEST     ===================
 * ======================================================
 */

 DROP PROCEDURE IF EXISTS AddGuest;

DELIMITER //
CREATE PROCEDURE AddGuest(IN ThisRFC VARCHAR(10), IN ThisName VARCHAR(45), IN ThisFirsSurname VARCHAR(45),
IN ThisSecondSurname VARCHAR(45), IN ThisEmail VARCHAR(45), IN ThisPlaceID INT)
BEGIN
    INSERT INTO Guest VALUES (ThisRFC, ThisName, ThisFirsSurname, ThisSecondSurname, ThisEmail, ThisPlaceID);
END //

DELIMITER ;

/* ======================================================
 * ===============      REMOVE GUEST     ================
 * ======================================================
 */

 DROP PROCEDURE IF EXISTS RemoveGuest;

DELIMITER //
CREATE PROCEDURE RemoveGuest(IN ThisRFC VARCHAR(10))
BEGIN
    DELETE FROM Guest WHERE RFC = (ThisRFC);
END //

DELIMITER ;

/* ======================================================
 * ===============      EDIT GUEST     ===================
 * ======================================================
 */

 DROP PROCEDURE IF EXISTS EditGuest;

DELIMITER //
CREATE PROCEDURE EditGuest(IN ThisRFC VARCHAR(10), IN ThisName VARCHAR(45), IN ThisFirsSurname VARCHAR(45),
IN ThisSecondSurname VARCHAR(45), IN ThisEmail VARCHAR(45), IN ThisPlaceID INT)
BEGIN
    UPDATE Guest SET Name = (ThisName), FirstSurname = (ThisFirsSurname), SecondSurname = (ThisSecondSurname), 
    Email = (ThisEmail), PlaceID = (ThisPlaceID)
    WHERE RFC = (ThisRFC);
END //

DELIMITER ;




