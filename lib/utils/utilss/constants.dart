// ignore_for_file: constant_identifier_names

class SocialLoginData {
  String firstName;
  String lastName;
  String emailAddress;
  String mobileNumber;
  String zipCode;
  String loginType;

  SocialLoginData(this.firstName, this.lastName, this.emailAddress,
      this.mobileNumber, this.zipCode, this.loginType);
}

class User {
  String firstName;
  String lastName;
  String emailAddress;
  String mobileNumber;
  String password;
  String zipCode;

  User(this.firstName, this.lastName, this.emailAddress, this.mobileNumber,
      this.password, this.zipCode);
}

const PLAYER_ABBR = "PL";
const PARENT_ABBR = "PR";
const FAN_ABBR = "FA";
const COACH_ABBR = "CH";
const TEAMADMIN_ABBR = "TA";
const WEBADMIN_ABBR = "WA";
const LEAGUE_PRESIDENT_ABBR = "LP";
const TENANTADMIN_ABBR = "TA";
const SUPERADMIN_ABBR = "SA";

const MYTEAMS = "MTM";
const STANDINGS = "STA";
const SCHEDULES = "SCH";
const MYSCHEDULES = "MYSC";
const VENUES = "VEN";
const NEWSFEED = "NF";
const RULES = "RUL";
const RESOURCES = "RES";
const POLLS = "POL";
const SETTINGS = "SET";
const GALLERY = "GAL";
const PRIVACY = "PRI";
const LOGOUT = "LOG";
const SCOREKEEPING = "SCO";
const RATINGS = "RAT";
const MESSAGING = "MSG";
const EDITTEAM = "EDT";

//CONTENT TYPES IN NEWSFEED FOR DELETING CONTENT FROM NEWSFEED

const LEAGUE = "LEAGUE";
const URGENT = "URGENT";
const SCHEDULE_CHANGE = "SCHEDULE_CHANGE";
const NEXT_MATCH = "REMINDER";
const SCORE_UPDATE = "SCORE_UPDATE";
