/*
   NOTE: You need to edit the `libname` command to specify the path to the directory
   where the data file is located. For example: "C:\ipums_directory".
   Edit the `filename` command similarly to include the full path (the directory and the data file name).
*/

libname IPUMS "C:\Users\ars39\Desktop\ATUS";
filename ASCIIDAT "C:\Users\ars39\Desktop\ATUS\atus_00003.dat";

proc format cntlout = IPUMS.atus_00003_f;

value PERNUM_f
  01 = "1"
  02 = "2"
  03 = "3"
  04 = "4"
  05 = "5"
  06 = "6"
  07 = "7"
  08 = "8"
  09 = "9"
  10 = "10"
  11 = "11"
  12 = "12"
  13 = "13"
  14 = "14"
  15 = "15"
  16 = "16"
;

value LINENO_f
  001 = "1"
  002 = "2"
  003 = "3"
  004 = "4"
  005 = "5"
  006 = "6"
  007 = "7"
  008 = "8"
  009 = "9"
  010 = "10"
  011 = "11"
  012 = "12"
  013 = "13"
  014 = "14"
  015 = "15"
  016 = "16"
  017 = "17"
  018 = "18"
  019 = "19"
  999 = "NIU (Not in universe)"
;

value SEX_f
  01 = "Male"
  02 = "Female"
  99 = "NIU (Not in universe)"
;

value RACE_f
  0100 = "White only"
  0110 = "Black only"
  0120 = "American Indian, Alaskan Native"
  0130 = "Asian or Pacific Islander"
  0131 = "Asian only"
  0132 = "Hawaiian Pacific Islander only"
  0200 = "White-Black"
  0201 = "White-American Indian"
  0202 = "White-Asian"
  0203 = "White-Hawaiian"
  0210 = "Black-American Indian"
  0211 = "Black-Asian"
  0212 = "Black-Hawaiian"
  0220 = "American Indian-Asian"
  0221 = "American Indian-Hawaiian"
  0230 = "Asian-Hawaiian"
  0300 = "White-Black-American Indian"
  0301 = "White-Black-Asian"
  0302 = "White-Black-Hawaiian"
  0310 = "White-American Indian-Asian"
  0311 = "White-American Indian-Hawaiian"
  0320 = "White-Asian-Hawaiian"
  0330 = "Black-American Indian-Asian"
  0331 = "Black-American Indian-Hawaiian"
  0340 = "Black-Asian-Hawaiian"
  0350 = "American Indian-Asian-Hawaiian"
  0398 = "Other 3 race combinations"
  0399 = "2 or 3 races, unspecified"
  0400 = "White-Black-American Indian-Asian"
  0401 = "White-Black-American Indian-Hawaiian"
  0402 = "White-Black-Asian-Hawaiian"
  0403 = "Black-American Indian-Asian-Hawaiian"
  0404 = "White-American Indian-Asian-Hawaiian"
  0500 = "White-Black-American Indian-Asian-Hawaiian"
  0599 = "4 or 5 races, unspecified"
  9999 = "NIU (Not in universe)"
;

value HISPAN_f
  0100 = "Not Hispanic"
  0210 = "Mexican"
  0211 = "Mexican American"
  0212 = "Chicano"
  0213 = "Mexican (Mexicano)"
  0220 = "Puerto Rican"
  0230 = "Cuban"
  0240 = "Central-South American"
  0241 = "Dominican"
  0242 = "Salvadoran"
  0243 = "Other Central American"
  0244 = "South American"
  0250 = "Other Spanish"
  9999 = "NIU (Not in universe)"
;

value ASIAN_f
  010 = "Asian Indian"
  020 = "Chinese"
  030 = "Filipino"
  040 = "Japanese"
  050 = "Korean"
  060 = "Vietnamese"
  070 = "Other Asian"
  999 = "NIU"
;

value MARST_f
  01 = "Married - spouse present"
  02 = "Married - spouse absent"
  03 = "Widowed"
  04 = "Divorced"
  05 = "Separated"
  06 = "Never married"
  99 = "NIU (Not in universe)"
;

value YRIMMIG_f
  000 = "Not foreign born"
  001 = "Before 1950"
  002 = "1950-1959"
  003 = "1960-1964"
  004 = "1965-1969"
  005 = "1970-1974"
  006 = "1975-1979"
  007 = "1980-1981"
  008 = "1982-1983"
  009 = "1984-1985"
  010 = "1986-1987"
  011 = "1988-1989"
  012 = "1990-1991"
  013 = "1992-1993"
  014 = "1994-1995"
  015 = "1996-1997"
  016 = "1998-1999"
  017 = "2000-2001"
  018 = "2002-2003"
  019 = "2002-2004"
  020 = "2002-2005"
  021 = "2004-2005"
  022 = "2004-2006"
  023 = "2004-2007"
  024 = "2006-2007"
  025 = "2006-2008"
  026 = "2006-2009"
  027 = "2008-2009"
  028 = "2008-2010"
  029 = "2008-2011"
  030 = "2010-2011"
  031 = "2010-2012"
  032 = "2010-2013"
  033 = "2012-2013"
  034 = "2012-2014"
  035 = "2012-2015"
  036 = "2014-2015"
  037 = "2014-2016"
  038 = "2014-2017"
  039 = "2016-2018"
  040 = "2016-2019"
  998 = "Blank"
  999 = "NIU (Not in universe)"
;

value CITIZEN_f
  001 = "Native, born in United States"
  002 = "Native, born in Puerto Rico or U.S. Outlying Area"
  003 = "Native, born abroad of American parent or parents"
  004 = "Foreign born, U.S. citizen by naturalization"
  005 = "Foreign born, not a U.S. citizen"
  999 = "NIU (Not in universe)"
;

value GENHEALTH_f
  01 = "Excellent"
  02 = "Very good"
  03 = "Good"
  04 = "Fair"
  05 = "Poor"
  96 = "Refused"
  97 = "Don't know"
  99 = "NIU (Not in universe)"
;

value OTHERLANG_f
  00 = "No non-English language assigned"
  01 = "Spanish language assigned"
  02 = "Other non-English language assigned"
  99 = "NIU (Not in universe)"
;

run;

data IPUMS.atus_00003;
infile ASCIIDAT pad missover lrecl=137;

input
  YEAR           1-5
  CASEID         6-19
  PERNUM         20-21
  LINENO         22-24
  WT06           25-41
  AGE            42-44
  SEX            45-46
  RACE           47-50
  HISPAN         51-54
  ASIAN          55-57
  MARST          58-59
  YRIMMIG        60-62
  CITIZEN        63-65
  GENHEALTH      66-67
  OTHERLANG      68-69
  ACT_CAREHH     70-73
  ACT_CARENHH    74-77
  ACT_EDUC       78-81
  ACT_FOOD       82-85
  ACT_GOVSERV    86-89
  ACT_HHACT      90-93
  ACT_HHSERV     94-97
  ACT_PCARE      98-101
  ACT_PHONE      102-105
  ACT_PROFSERV   106-109
  ACT_PURCH      110-113
  ACT_RELIG      114-117
  ACT_SOCIAL     118-121
  ACT_SPORTS     122-125
  ACT_TRAVEL     126-129
  ACT_VOL        130-133
  ACT_WORK       134-137
;

label
  YEAR         = "Survey year"
  CASEID       = "ATUS Case ID"
  PERNUM       = "Person number (general)"
  LINENO       = "Person line number"
  WT06         = "Person weight, 2006 methodology"
  AGE          = "Age"
  SEX          = "Sex"
  RACE         = "Race"
  HISPAN       = "Hispanic origin"
  ASIAN        = "Asian origin"
  MARST        = "Marital status"
  YRIMMIG      = "Year of immigration"
  CITIZEN      = "Citizenship status"
  GENHEALTH    = "General health"
  OTHERLANG    = "Assigned non-English language"
  ACT_CAREHH   = "ACT: Caring for and helping household members"
  ACT_CARENHH  = "ACT: Caring for and helping non-household members"
  ACT_EDUC     = "ACT: Educational activities"
  ACT_FOOD     = "ACT: Eat and drinking"
  ACT_GOVSERV  = "ACT: Government services and civic obligations"
  ACT_HHACT    = "ACT: Household activities"
  ACT_HHSERV   = "ACT: Household services"
  ACT_PCARE    = "ACT: Personal care"
  ACT_PHONE    = "ACT: Telephone calls"
  ACT_PROFSERV = "ACT: Professional and personal care services"
  ACT_PURCH    = "ACT: Consumer purchases"
  ACT_RELIG    = "ACT: Religious and spiritual activities"
  ACT_SOCIAL   = "ACT: Socializing, relaxing, and leisure"
  ACT_SPORTS   = "ACT: Sports, exercise, and recreation"
  ACT_TRAVEL   = "ACT: Traveling"
  ACT_VOL      = "ACT: Volunteer activities"
  ACT_WORK     = "ACT: Working and Work-related Activities"
;

format
  PERNUM        PERNUM_f.
  LINENO        LINENO_f.
  SEX           SEX_f.
  RACE          RACE_f.
  HISPAN        HISPAN_f.
  ASIAN         ASIAN_f.
  MARST         MARST_f.
  YRIMMIG       YRIMMIG_f.
  CITIZEN       CITIZEN_f.
  GENHEALTH     GENHEALTH_f.
  OTHERLANG     OTHERLANG_f.
;

format
  CASEID        14.
  WT06          17.
;
run;

data IPUMS.atus_00003;
infile ASCIIDAT pad missover lrecl=137;

input
  CASEID         1-14
  YEAR           15-19
  PERNUM         20-21
  LINENO         22-24
  WT06           25-41
  AGE            42-44
  SEX            45-46
  RACE           47-50
  HISPAN         51-54
  ASIAN          55-57
  MARST          58-59
  YRIMMIG        60-62
  CITIZEN        63-65
  GENHEALTH      66-67
  OTHERLANG      68-69
  ACT_CAREHH     70-73
  ACT_CARENHH    74-77
  ACT_EDUC       78-81
  ACT_FOOD       82-85
  ACT_GOVSERV    86-89
  ACT_HHACT      90-93
  ACT_HHSERV     94-97
  ACT_PCARE      98-101
  ACT_PHONE      102-105
  ACT_PROFSERV   106-109
  ACT_PURCH      110-113
  ACT_RELIG      114-117
  ACT_SOCIAL     118-121
  ACT_SPORTS     122-125
  ACT_TRAVEL     126-129
  ACT_VOL        130-133
  ACT_WORK       134-137
;

label
  CASEID       = "ATUS Case ID"
  YEAR         = "Survey year"
  PERNUM       = "Person number (general)"
  LINENO       = "Person line number"
  WT06         = "Person weight, 2006 methodology"
  AGE          = "Age"
  SEX          = "Sex"
  RACE         = "Race"
  HISPAN       = "Hispanic origin"
  ASIAN        = "Asian origin"
  MARST        = "Marital status"
  YRIMMIG      = "Year of immigration"
  CITIZEN      = "Citizenship status"
  GENHEALTH    = "General health"
  OTHERLANG    = "Assigned non-English language"
  ACT_CAREHH   = "ACT: Caring for and helping household members"
  ACT_CARENHH  = "ACT: Caring for and helping non-household members"
  ACT_EDUC     = "ACT: Educational activities"
  ACT_FOOD     = "ACT: Eat and drinking"
  ACT_GOVSERV  = "ACT: Government services and civic obligations"
  ACT_HHACT    = "ACT: Household activities"
  ACT_HHSERV   = "ACT: Household services"
  ACT_PCARE    = "ACT: Personal care"
  ACT_PHONE    = "ACT: Telephone calls"
  ACT_PROFSERV = "ACT: Professional and personal care services"
  ACT_PURCH    = "ACT: Consumer purchases"
  ACT_RELIG    = "ACT: Religious and spiritual activities"
  ACT_SOCIAL   = "ACT: Socializing, relaxing, and leisure"
  ACT_SPORTS   = "ACT: Sports, exercise, and recreation"
  ACT_TRAVEL   = "ACT: Traveling"
  ACT_VOL      = "ACT: Volunteer activities"
  ACT_WORK     = "ACT: Working and Work-related Activities"
;

format
  PERNUM        PERNUM_f.
  LINENO        LINENO_f.
  SEX           SEX_f.
  RACE          RACE_f.
  HISPAN        HISPAN_f.
  ASIAN         ASIAN_f.
  MARST         MARST_f.
  YRIMMIG       YRIMMIG_f.
  CITIZEN       CITIZEN_f.
  GENHEALTH     GENHEALTH_f.
  OTHERLANG     OTHERLANG_f.
;

format
  CASEID        14.
  WT06          17.
;

run;

data time;
set  IPUMS.atus_00003;

IF AGE>24;
IF AGE<65;

IF HISPAN IN (0210:0260) THEN RACETH="HISPANIC"; ELSE
IF RACE IN(0100) THEN RACETH="NHWHITE"; ELSE
IF RACE IN(0110) THEN RACETH="NHBLACK"; ELSE DELETE;


IF RACETH="NHWHITE" THEN WHITE=1; ELSE WHITE=0;
IF RACETH="NHBLACK" THEN BLACK=1; ELSE BLACK=0;
IF RACETH="HISPANIC" THEN HISPANIC=1; ELSE HISPANIC=0;

IF GENHEALTH IN(04,05) THEN POORSRH=1; ELSE 
IF GENHEALTH IN(01,02,03) THEN POORSRH=0; ELSE DELETE;

/*THESE ARE THE TIME VARIABLES*/
PERSONALCARE=(ACT_PCARE)/60;
HOUSEWORK=(ACT_PURCH+ACT_HHACT+ACT_HHSERV)/60;
PAIDWORK=(ACT_WORK+ACT_PROFSERV)/60;
LEISURE=(ACT_SPORTS+ACT_FOOD+ACT_SOCIAL+ACT_RELIG+ACT_PHONE)/60;
VOLTRAVEL=(ACT_VOL+ACT_TRAVEL+ACT_GOVSERV)/60;
CARING=(ACT_CAREHH+ACT_CARENHH)/60;
EDUCATION=(ACT_EDUC)/60;

if otherlang=02 then delete;

run;


ods pdf file="C:\Users\ars39\Desktop\ATUS\report-FAYTONG.pdf";
ods graphics off;
ods listing close;


PROC SORT DATA=TIME; BY POORSRH; RUN;

proc SURVEYMEANS data=time;
BY POORSRH;
WEIGHT WT06;
VAR PERSONALCARE HOUSEWORK PAIDWORK LEISURE VOLTRAVEL CARING EDUCATION;
RUN;

PROC SORT DATA=TIME; BY RACETH POORSRH; RUN;

proc SURVEYMEANS data=time;
by RACETH POORSRH;
WEIGHT WT06;
VAR PERSONALCARE HOUSEWORK PAIDWORK LEISURE VOLTRAVEL CARING EDUCATION;
RUN;

PROC SORT DATA=TIME; BY otherlang POORSRH; RUN;

proc SURVEYMEANS data=time;
by otherlang POORSRH;
WEIGHT WT06;
VAR PERSONALCARE HOUSEWORK PAIDWORK LEISURE VOLTRAVEL CARING EDUCATION;
WHERE RACETH="HISPANIC";
RUN;

proc sort data=time; by poorsrh; run;

proc contents data=time;
RUN;

proc freq data=time;
table GENHEALTH;
RUN;


proc SURVEYMEANS data=time;
BY POORSRH;
WEIGHT WT06;
VAR PERSONALCARE HOUSEWORK PAIDWORK LEISURE VOLTRAVEL CARING EDUCATION;
WHERE MALE=1;
RUN;

proc SURVEYMEANS data=time;
BY POORSRH;
WEIGHT WT06;
VAR PERSONALCARE HOUSEWORK PAIDWORK LEISURE VOLTRAVEL CARING EDUCATION;
WHERE MALE=0;
RUN;

PROC SORT DATA=TIME; BY RACETH POORSRH; RUN;

/*For MALES*/
proc SURVEYMEANS data=time;
by RACETH POORSRH;
WEIGHT WT06;
VAR PERSONALCARE HOUSEWORK PAIDWORK LEISURE VOLTRAVEL CARING EDUCATION;
WHERE MALE=1;
RUN;

/*For FEMALES*/
proc SURVEYMEANS data=time;
by RACETH POORSRH;
WEIGHT WT06;
VAR PERSONALCARE HOUSEWORK PAIDWORK LEISURE VOLTRAVEL CARING EDUCATION;
WHERE MALE=0;
RUN;

PROC SORT DATA=TIME; BY otherlang POORSRH; RUN;

proc SURVEYMEANS data=time;
by otherlang POORSRH;
WEIGHT WT06;
VAR PERSONALCARE HOUSEWORK PAIDWORK LEISURE VOLTRAVEL CARING EDUCATION;
WHERE RACETH="HISPANIC" and MALE=1;
RUN;

ods graphics off;
ods pdf close;
ods listing;


/*Regression Results-OVERALL*/
PROC REG DATA=TIME plots=NONE;
MODEL PERSONALCARE=POORSRH;
WEIGHT WT06;
WHERE 
RUN;

PROC REG DATA=TIME plots=NONE;
MODEL HOUSEWORK=POORSRH;
WEIGHT WT06;
RUN;

PROC REG DATA=TIME plots=NONE;
MODEL PAIDWORK=POORSRH;
WEIGHT WT06;
RUN;

PROC REG DATA=TIME plots=NONE;
MODEL LEISURE=POORSRH;
WEIGHT WT06;
RUN;

PROC REG DATA=TIME plots=NONE;
MODEL VOLTRAVEL=POORSRH;
WEIGHT WT06;
RUN;


PROC REG DATA=TIME plots=NONE;
MODEL CARING=POORSRH;
WEIGHT WT06;
RUN;


PROC REG DATA=TIME plots=NONE;
MODEL EDUCATION=POORSRH;
WEIGHT WT06;
RUN;

/*Regression Results-NH WHITE*/
PROC REG DATA=TIME plots=NONE;
MODEL PERSONALCARE=POORSRH;
WEIGHT WT06;
WHERE RACETH="NHWHITE";
RUN;

PROC REG DATA=TIME plots=NONE;
MODEL HOUSEWORK=POORSRH;
WEIGHT WT06;
WHERE RACETH="NHWHITE";
RUN;

PROC REG DATA=TIME plots=NONE;
MODEL PAIDWORK=POORSRH;
WEIGHT WT06;
WHERE RACETH="NHWHITE";
RUN;

PROC REG DATA=TIME plots=NONE;
MODEL LEISURE=POORSRH;
WEIGHT WT06;
WHERE RACETH="NHWHITE";
RUN;

PROC REG DATA=TIME plots=NONE;
MODEL VOLTRAVEL=POORSRH;
WEIGHT WT06;
WHERE RACETH="NHWHITE";
RUN;


PROC REG DATA=TIME plots=NONE;
MODEL CARING=POORSRH;
WEIGHT WT06;
WHERE RACETH="NHWHITE";
RUN;


PROC REG DATA=TIME plots=NONE;
MODEL EDUCATION=POORSRH;
WEIGHT WT06;
WHERE RACETH="NHWHITE";
RUN;

/*Regression Results-NH BLACK*/
PROC REG DATA=TIME plots=NONE;
MODEL PERSONALCARE=POORSRH;
WEIGHT WT06;
WHERE RACETH="NHBLACK";
RUN;

PROC REG DATA=TIME plots=NONE;
MODEL HOUSEWORK=POORSRH;
WEIGHT WT06;
WHERE RACETH="NHBLACK";
RUN;

PROC REG DATA=TIME plots=NONE;
MODEL PAIDWORK=POORSRH;
WEIGHT WT06;
WHERE RACETH="NHBLACK";
RUN;

PROC REG DATA=TIME plots=NONE;
MODEL LEISURE=POORSRH;
WEIGHT WT06;
WHERE RACETH="NHBLACK";
RUN;

PROC REG DATA=TIME plots=NONE;
MODEL VOLTRAVEL=POORSRH;
WEIGHT WT06;
WHERE RACETH="NHBLACK";
RUN;

PROC REG DATA=TIME plots=NONE;
MODEL CARING=POORSRH;
WEIGHT WT06;
WHERE RACETH="NHBLACK";
RUN;

PROC REG DATA=TIME plots=NONE;
MODEL EDUCATION=POORSRH;
WEIGHT WT06;
WHERE RACETH="NHBLACK";
RUN;


/*Regression Results-HISPANIC*/
PROC REG DATA=TIME plots=NONE;
MODEL PERSONALCARE=POORSRH;
WEIGHT WT06;
WHERE RACETH="HISPANIC";
RUN;

PROC REG DATA=TIME plots=NONE;
MODEL HOUSEWORK=POORSRH;
WEIGHT WT06;
WHERE RACETH="HISPANIC";
RUN;

PROC REG DATA=TIME plots=NONE;
MODEL PAIDWORK=POORSRH;
WEIGHT WT06;
WHERE RACETH="HISPANIC";
RUN;

PROC REG DATA=TIME plots=NONE;
MODEL LEISURE=POORSRH;
WEIGHT WT06;
WHERE RACETH="HISPANIC";
RUN;

PROC REG DATA=TIME plots=NONE;
MODEL VOLTRAVEL=POORSRH;
WEIGHT WT06;
WHERE RACETH="HISPANIC";
RUN;

PROC REG DATA=TIME plots=NONE;
MODEL CARING=POORSRH;
WEIGHT WT06;
WHERE RACETH="HISPANIC";
RUN;

PROC REG DATA=TIME plots=NONE;
MODEL EDUCATION=POORSRH;
WEIGHT WT06;
WHERE RACETH="HISPANIC";
RUN;

/*Regression Results-HISPANIC AND ENGLISH*/
PROC REG DATA=TIME plots=NONE;
MODEL PERSONALCARE=POORSRH;
WEIGHT WT06;
WHERE RACETH="HISPANIC" AND otherlang=00;
RUN;

PROC REG DATA=TIME plots=NONE;
MODEL HOUSEWORK=POORSRH;
WEIGHT WT06;
WHERE RACETH="HISPANIC" AND otherlang=00;
RUN;

PROC REG DATA=TIME plots=NONE;
MODEL PAIDWORK=POORSRH;
WEIGHT WT06;
WHERE RACETH="HISPANIC" AND otherlang=00;
RUN;

PROC REG DATA=TIME plots=NONE;
MODEL LEISURE=POORSRH;
WEIGHT WT06;
WHERE RACETH="HISPANIC" AND otherlang=00;
RUN;

PROC REG DATA=TIME plots=NONE;
MODEL VOLTRAVEL=POORSRH;
WEIGHT WT06;
WHERE RACETH="HISPANIC" AND otherlang=00;
RUN;

PROC REG DATA=TIME plots=NONE;
MODEL CARING=POORSRH;
WEIGHT WT06;
WHERE RACETH="HISPANIC" AND otherlang=00;
RUN;

PROC REG DATA=TIME plots=NONE;
MODEL EDUCATION=POORSRH;
WEIGHT WT06;
WHERE RACETH="HISPANIC" AND otherlang=00;
RUN;

/*Regression Results-HISPANIC AND SPANISH*/
PROC REG DATA=TIME plots=NONE;
MODEL PERSONALCARE=POORSRH;
WEIGHT WT06;
WHERE RACETH="HISPANIC" AND otherlang=01;
RUN;

PROC REG DATA=TIME plots=NONE;
MODEL HOUSEWORK=POORSRH;
WEIGHT WT06;
WHERE RACETH="HISPANIC" AND otherlang=01;
RUN;

PROC REG DATA=TIME plots=NONE;
MODEL PAIDWORK=POORSRH;
WEIGHT WT06;
WHERE RACETH="HISPANIC" AND otherlang=01;
RUN;

PROC REG DATA=TIME plots=NONE;
MODEL LEISURE=POORSRH;
WEIGHT WT06;
WHERE RACETH="HISPANIC" AND otherlang=01;
RUN;

PROC REG DATA=TIME plots=NONE;
MODEL VOLTRAVEL=POORSRH;
WEIGHT WT06;
WHERE RACETH="HISPANIC" AND otherlang=01;
RUN;

PROC REG DATA=TIME plots=NONE;
MODEL CARING=POORSRH;
WEIGHT WT06;
WHERE RACETH="HISPANIC" AND otherlang=01;
RUN;

PROC REG DATA=TIME plots=NONE;
MODEL EDUCATION=POORSRH;
WEIGHT WT06;
WHERE RACETH="HISPANIC" AND otherlang=01;
RUN;


/*Regression Results-OVERALL*/
PROC REG DATA=TIME plots=NONE;
MODEL PERSONALCARE=POORSRH;
WEIGHT WT06;
RUN;

PROC REG DATA=TIME plots=NONE;
MODEL HOUSEWORK=POORSRH;
WEIGHT WT06;
RUN;

PROC REG DATA=TIME plots=NONE;
MODEL PAIDWORK=POORSRH;
WEIGHT WT06;
RUN;

PROC REG DATA=TIME plots=NONE;
MODEL LEISURE=POORSRH;
WEIGHT WT06;
RUN;

PROC REG DATA=TIME plots=NONE;
MODEL VOLTRAVEL=POORSRH;
WEIGHT WT06;
RUN;


PROC REG DATA=TIME plots=NONE;
MODEL CARING=POORSRH;
WEIGHT WT06;
RUN;


PROC REG DATA=TIME plots=NONE;
MODEL EDUCATION=POORSRH;
WEIGHT WT06;
RUN;
