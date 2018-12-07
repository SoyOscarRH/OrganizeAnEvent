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
            (User.Username       = ThisUsername)                AND
            (User.Username       = UserEvent.Username)          AND
            (UserEvent.EventID   = Event.EventID)               AND
            (Event.InstitutionID = Institution.InstitutionID);
END //

DELIMITER ;

/* ======================================================
 * ==========      GET GUEST FULL DATA      =============
 * ======================================================
 */

DROP PROCEDURE IF EXISTS GetGuestFullData;

DELIMITER //
CREATE PROCEDURE GetGuestFullData (IN ThisData VARCHAR(100), IN ThisEventID INT, IN ThisUsername INT)
BEGIN
    SELECT DISTINCT Guest.RFC, Guest.Name, Guest.FirstSurname, Guest.SecondSurname, Guest.Email, Place.Name as PlaceName
    From Guest, GuestEvent, Place, User, UserEvent
    WHERE 
        GuestEvent.EventID  = ThisEventID    AND
        User.Username       = ThisUsername   AND
        UserEvent.EventID   = ThisEventID    AND
        GuestEvent.RFC      = Guest.RFC      AND
        Guest.PlaceID       = Place.PlaceID  AND
        (
            Guest.RFC           LIKE CONCAT('%', ThisData, '%') OR
            Guest.Name          LIKE CONCAT('%', ThisData, '%') OR
            Guest.FirstSurname  LIKE CONCAT('%', ThisData, '%') OR
            Guest.SecondSurname LIKE CONCAT('%', ThisData, '%') OR
            Guest.Email         LIKE CONCAT('%', ThisData, '%') OR
            ThisData            LIKE CONCAT('%', Guest.FirstSurname, " ", Guest.SecondSurname, '%')                  OR
            ThisData            LIKE CONCAT('%', Guest.FirstSurname, " ", Guest.SecondSurname, "", Guest.Name, '%')  OR
            ThisData            LIKE CONCAT('%', Guest.Name, " ", Guest.FirstSurname, "", Guest.SecondSurname, '%')  OR
            ThisData            LIKE CONCAT('%', Guest.Name, " ", Guest.FirstSurname, '%') 
        );
END //

DELIMITER ;

/* ======================================================
 * ==========      SET ASSISTANCE      ==================
 * ======================================================
 */

 DROP PROCEDURE IF EXISTS SetAssistance;

DELIMITER //
CREATE PROCEDURE SetAssistance(IN ThisRFC VARCHAR(10), IN ThisEventID INT, IN NewSeat INT, IN AnotherGuy VARCHAR(100), IN ThisUser INT)
BEGIN
        SELECT MAX(Seat) INTO @MaxSeat FROM GuestEvent WHERE EventID = ThisEventID;

        IF NOT EXISTS(SELECT Seat FROM GuestEvent WHERE Seat = NewSeat AND ThisEventID = EventID) AND NewSeat > 0 THEN
            UPDATE GuestEvent
            SET
                GuestEvent.Assistance = 1, GuestEvent.Seat = NewSeat, 
                GuestEvent.Representative = (AnotherGuy), GuestEvent.Username = ThisUser, GuestEvent.Time = NOW()
            WHERE
                GuestEvent.RFC = (ThisRFC) AND 
                GuestEvent.EventID = ThisEventID;
        ELSE 
            UPDATE GuestEvent
            SET
                GuestEvent.Assistance = 1, GuestEvent.Seat = @MaxSeat+1, 
                GuestEvent.Representative = (AnotherGuy), GuestEvent.Username = ThisUser, GuestEvent.Time = NOW()
            WHERE
                GuestEvent.RFC = (ThisRFC) AND 
                GuestEvent.EventID = ThisEventID;
        END IF;
END //

DELIMITER ;

/*CALL SetAssistance('ZUCM690919', 1, 1, null, null);
SELECT rfc, Seat, Time FROM GuestEvent WHERE Seat IS NOT NULL;*/

/*DROP PROCEDURE IF EXISTS GetGuestFullData;

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
 * ==============      GET SPEECH INFO     ===============
 * ======================================================
 */

 DROP PROCEDURE IF EXISTS GetSpeechInfo;

DELIMITER //
CREATE PROCEDURE GetSpeechInfo(IN ThisEventID INT, IN ThisPrizeID INT)
BEGIN
    SELECT Event.Name as Event, Event.Description, Prize.Name as Prize, Prize.Speech 
    FROM Event, Prize
    WHERE 
        Event.EventID = Prize.EventID AND
        Event.EventID = ThisEventID AND
        Prize.PrizeID = ThisPrizeID;
END //

DELIMITER ;

/* ======================================================
 * ==============      GET EVENT'S GUESTS     ===========
 * ======================================================
 */

 DROP PROCEDURE IF EXISTS GetEventGuests;

DELIMITER //
CREATE PROCEDURE GetEventGuests(IN ThisEventID INT, IN ThisPrizeID INT)
BEGIN
    SELECT Guest.RFC, Guest.Name, Guest.FirstSurname, Guest.SecondSurname, Place.Name AS Place, 
        GuestEvent.Assistance, GuestEvent.Representative, GuestEvent.Comment
    FROM Guest, Place, GuestEvent, GuestPrize
    WHERE 
        Place.PlaceID = Guest.PlaceID AND
        Guest.RFC = GuestEvent.RFC AND
        GuestEvent.RFC = GuestPrize.RFC AND
        GuestEvent.EventID = ThisEventID AND
        GuestPrize.PrizeID = ThisPrizeID
    ORDER BY 3;
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

/* ======================================================
 * ===============      GET NUMBER OF GUESTS    =========
 * ======================================================
 */

DROP PROCEDURE IF EXISTS GetNumberOfGuests;

DELIMITER //
CREATE PROCEDURE GetNumberOfGuests(IN ThisEventID INT)
BEGIN
    SELECT COUNT(*)
    FROM GuestEvent
    WHERE GuestEvent.EventID = ThisEventID;
END //

DELIMITER ;

/* ======================================================
 * ===============      GET GUESTS RFC    ==============
 * ======================================================
 */

DROP PROCEDURE IF EXISTS GetGuestsRFC;

DELIMITER //
CREATE PROCEDURE GetGuestsRFC(IN ThisEventID INT)
BEGIN
    SELECT RFC
    FROM GuestEvent
    WHERE GuestEvent.EventID = ThisEventID;
END //

DELIMITER ;

/* ======================================================
 * =========      GET CURRENT GUESTS RFC    =============
 * ======================================================
 */

DROP PROCEDURE IF EXISTS GetCurrentGuestsRFC;

DELIMITER //
CREATE PROCEDURE GetCurrentGuestsRFC(IN ThisEventID INT)
BEGIN
    SELECT RFC
    FROM GuestEvent
        WHERE GuestEvent.EventID = ThisEventID AND GuestEvent.Assistance = 1;
END //

DELIMITER ;

/* ======================================================
 * =================      GET EVENT NEWS    =============
 * ======================================================
 */

DROP PROCEDURE IF EXISTS GetEventNews;

DELIMITER //
CREATE PROCEDURE GetEventNews(IN ThisEventID INT)
BEGIN
    SELECT ID, Text AS News
    FROM News
        WHERE EventID = ThisEventID;
END //

DELIMITER ;

/* ======================================================
 * ==============      GET PRIZES     ===================
 * ======================================================
 */

 DROP PROCEDURE IF EXISTS GetPrizes;

DELIMITER //
CREATE PROCEDURE GetPrizes(IN ThisEventID INT)
BEGIN
    SELECT Prize.PrizeID
    FROM Event, Prize
    WHERE 
        Event.EventID = Prize.EventID AND
        Event.EventID = ThisEventID;
END //

DELIMITER ;





