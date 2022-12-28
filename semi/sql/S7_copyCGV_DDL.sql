DROP TABLE "MOVIE" CASCADE CONSTRAINTS;
DROP TABLE "likes" CASCADE CONSTRAINTS;
DROP TABLE "member" CASCADE CONSTRAINTS;
DROP TABLE "Mdetails" CASCADE CONSTRAINTS;
DROP TABLE "guest" CASCADE CONSTRAINTS;
DROP TABLE "board" CASCADE CONSTRAINTS;
DROP TABLE "Ticketing" CASCADE CONSTRAINTS;

CREATE TABLE "movie" (
	"movieCd"	number(10)		NOT NULL,
	"movieNm"	varchar2(100)		NULL,
	"movieNmEn"	varchar2(100)		NULL,
	"prdtYear"	number(10)		NULL,
	"openDt"	number(10)		NULL,
	"typeNm"	varchar2(100)		NULL,
	"nationAlt"	varchar2(100)		NULL,
	"genreAlt"	varchar2(100)		NULL,
	"directors"	varchar2(100)		NULL,
	"companys"	varchar2(100)		NULL
);

ALTER TABLE "movie" ADD CONSTRAINT "PK_MOVIE" PRIMARY KEY (
	"movieCd"
);

CREATE TABLE "Mdetails" (
	"movieCd"	number(10)		NOT NULL,
	"movieNm"	varchar2(100)		NULL,
	"movieNmEn"	varchar2(100)		NULL,
	"movieNmOg"	varchar2(100)		NULL,
	"prdtYear"	number(10)		NULL,
	"showTm"	number(10)		NULL,
	"openDt"	number(10)		NULL,
	"typeNm"	varchar2(100)		NULL,
	"nations"	varchar2(100)		NULL,
	"genreNm"	varchar2(100)		NULL,
	"directors"	varchar2(100)		NULL,
	"directorsEn"	varchar2(100)		NULL,
	"actors"	varchar2(100)		NULL,
	"actorsEn"	varchar2(100)		NULL,
	"showTypes"	varchar2(100)		NULL,
	"audits"	varchar2(100)		NULL,
	"companys"	varchar2(100)		NULL
);

ALTER TABLE "Mdetails" ADD CONSTRAINT "PK_MDETAILS" PRIMARY KEY (
	"movieCd"
);

CREATE TABLE "member" (
	"mcode"	number(10)		NOT NULL,
	"memail"	varchar2(100)		NULL,
	"mpwd"	varchar2(100)		NULL,
    "mname"	varchar2(100)		NULL,
	"mnick"	varchar2(100)		NULL,
	"mbirth"	varchar2(100)		NULL,
	"mgender"	number(10)		NULL,
	"mcontact"	number(10)		NULL,
	"maddr"	varchar2(100)		NULL,
    "MAUTHCODE"	VARCHAR2(20)	DEFAULT 0	NOT NULL,
	"MTYPE"	NUMBER(1)	DEFAULT 1	NOT NULL
);

ALTER TABLE "member" ADD CONSTRAINT "PK_MEMBER" PRIMARY KEY (
	"mcode"
);

CREATE TABLE "guest" (
	"gcode"	number(10)		NOT NULL,
	"gbirth"	varchar2(100)		NULL,
	"gcontact"	number(10)		NULL,
	"gemail"	varchar2(100)		NULL,
	"gpwd"	varchar2(100)		NULL
);

ALTER TABLE "guest" ADD CONSTRAINT "PK_GUEST" PRIMARY KEY (
	"gcode"
);

CREATE TABLE "likes" (
	"movieCd"	number(10)		NOT NULL,
	"mcode"	number(10)		NOT NULL
);

ALTER TABLE "likes" ADD CONSTRAINT "PK_LIKES" PRIMARY KEY (
	"movieCd",
	"mcode"
);

CREATE TABLE "Ticketing" (
	"tcode"	number(10)		NOT NULL,
	"movieCd"	number(10)		NOT NULL,
	"mcode"	number(10)		NULL,
	"gcode"	number(10)		NULL
);

ALTER TABLE "Ticketing" ADD CONSTRAINT "PK_TICKETING" PRIMARY KEY (
	"tcode"
);

CREATE TABLE "board" (
	"mcode"	number(10)		NOT NULL,
	"tcode"	number(10)		NOT NULL
);

ALTER TABLE "board" ADD CONSTRAINT "PK_BOARD" PRIMARY KEY (
	"mcode",
	"tcode"
);

-- 참조 키
ALTER TABLE "likes" ADD CONSTRAINT "FK_Mdetails_TO_likes_1" FOREIGN KEY (
	"movieCd"
)
REFERENCES "Mdetails" (
	"movieCd"
);

ALTER TABLE "likes" ADD CONSTRAINT "FK_member_TO_likes_1" FOREIGN KEY (
	"mcode"
)
REFERENCES "member" (
	"mcode"
);

ALTER TABLE "Mdetails" ADD CONSTRAINT "FK_movie_TO_Mdetails_1" FOREIGN KEY (
	"movieCd"
)
REFERENCES "movie" (
	"movieCd"
);

ALTER TABLE "board" ADD CONSTRAINT "FK_member_TO_board_1" FOREIGN KEY (
	"mcode"
)
REFERENCES "member" (
	"mcode"
);

ALTER TABLE "board" ADD CONSTRAINT "FK_Ticketing_TO_board_1" FOREIGN KEY (
	"tcode"
)
REFERENCES "Ticketing" (
	"tcode"
);

ALTER TABLE "Ticketing" ADD CONSTRAINT "FK_Mdetails_TO_Ticketing_1" FOREIGN KEY (
	"movieCd"
)
REFERENCES "Mdetails" (
	"movieCd"
);

ALTER TABLE "Ticketing" ADD CONSTRAINT "FK_member_TO_Ticketing_1" FOREIGN KEY (
	"mcode"
)
REFERENCES "member" (
	"mcode"
);

ALTER TABLE "Ticketing" ADD CONSTRAINT "FK_guest_TO_Ticketing_1" FOREIGN KEY (
	"gcode"
)
REFERENCES "guest" (
	"gcode"
);

