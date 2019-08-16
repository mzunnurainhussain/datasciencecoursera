Exploring the BRFSS data
Setup
Load packages
library(ggplot2)
library(dplyr)
Load data
Make sure your data and R Markdown files are in the same directory. When loaded your data file will be called brfss2019. Delete this note when before you submit your work.
load("brfss2019.RData")
________________________________________
Part 1: Data
Generalizability
BRFSS is an ongoing surveillance system designed to measure behavioral risk factors for the non-institutionalized adult population (18 years of age and older) residing in the US. The BRFSS was initiated in 1984, with 15 states collecting surveillance data on risk behaviors through monthly telephone interviews. Over time, the number of states participating in the survey increased. The BRFSS objective is to collect uniform, state-specific data on preventive health practices and risk behaviors that are linked to chronic diseases, injuries, and preventable infectious diseases that affect the adult population. Since 2011, BRFSS conducts both landline telephone- and cellular telephone-based surveys. In conducting the BRFSS landline telephone survey, interviewers collect data from a randomly selected adult in a household. In conducting the cellular telephone version of the BRFSS questionnaire, interviewers collect data from an adult who participates by using a cellular telephone and resides in a private residence or college housing. Summary: The inclusion of cellular phones makes it easier to reach people and therefore increases the representativeness of the survey. The sampling process relays on the RDD method, which guarantees the random selection of the samples. In addition, a random adult in the household is interviewed. This allows to generalize the results.
Causality
The interviewed people are not randomly assigned to a control or treatment group. Therefore, no causality can be concluded.
________________________________________
Part 2: Research questions
Research question 1: The public opinion is that heavy smokers have a higher risk of an asthma attack and that this is one of the most visible bad results of smoking. Can this be seen in the data by looking at smoke100 and as attack?
Research question 2: Smoking is often shown in commercials as being cool, adult, a true man. Is it true that men are the heavier smokers than women? (smoked at least 100 cigarettes)
Research question 3: People in the army often suffer from dramatic experiences. Are veterans therefore more likely to be heavy smokers (smoked at least 100 cigarettes)?
________________________________________
Part 3: Exploratory data analysis
Research question 1: Let’s first have a look at all the variable names
names(brfss2019)
##   [1] "X_state"   "fmonth"    "idate"     "imonth"    "iday"     
##   [6] "iyear"     "dispcode"  "seqno"     "X_psu"     "ctelenum" 
##  [11] "pvtresd1"  "colghous"  "stateres"  "cellfon3"  "ladult"   
##  [16] "numadult"  "nummen"    "numwomen"  "genhlth"   "physhlth" 
##  [21] "menthlth"  "poorhlth"  "hlthpln1"  "persdoc2"  "medcost"  
##  [26] "checkup1"  "sleptim1"  "bphigh4"   "bpmeds"    "bloodcho" 
##  [31] "cholchk"   "toldhi2"   "cvdinfr4"  "cvdcrhd4"  "cvdstrk3" 
##  [36] "asthma3"   "asthnow"   "chcscncr"  "chcocncr"  "chccopd1" 
##  [41] "havarth3"  "addepev2"  "chckidny"  "diabete3"  "veteran3" 
##  [46] "marital"   "children"  "educa"     "employ1"   "income2"  
##  [51] "weight2"   "height3"   "numhhol2"  "numphon2"  "cpdemo1"  
##  [56] "cpdemo4"   "internet"  "renthom1"  "sex"       "pregnant" 
##  [61] "qlactlm2"  "useequip"  "blind"     "decide"    "diffwalk" 
##  [66] "diffdres"  "diffalon"  "smoke100"  "smokday2"  "stopsmk2" 
##  [71] "lastsmk2"  "usenow3"   "alcday5"   "avedrnk2"  "drnk3ge5" 
##  [76] "maxdrnks"  "fruitju1"  "fruit1"    "fvbeans"   "fvgreen"  
##  [81] "fvorang"   "vegetab1"  "exerany2"  "exract11"  "exeroft1" 
##  [86] "exerhmm1"  "exract21"  "exeroft2"  "exerhmm2"  "strength" 
##  [91] "lmtjoin3"  "arthdis2"  "arthsocl"  "joinpain"  "seatbelt" 
##  [96] "flushot6"  "flshtmy2"  "tetanus"   "pneuvac3"  "hivtst6"  
## [101] "hivtstd3"  "whrtst10"  "pdiabtst"  "prediab1"  "diabage2" 
## [106] "insulin"   "bldsugar"  "feetchk2"  "doctdiab"  "chkhemo3" 
## [111] "feetchk"   "eyeexam"   "diabeye"   "diabedu"   "painact2" 
## [116] "qlmentl2"  "qlstres2"  "qlhlth2"   "medicare"  "hlthcvrg" 
## [121] "delaymed"  "dlyother"  "nocov121"  "lstcovrg"  "drvisits" 
## [126] "medscost"  "carercvd"  "medbills"  "ssbsugar"  "ssbfrut2" 
## [131] "wtchsalt"  "longwtch"  "dradvise"  "asthmage"  "asattack" 
## [136] "aservist"  "asdrvist"  "asrchkup"  "asactlim"  "asymptom" 
## [141] "asnoslep"  "asthmed3"  "asinhalr"  "harehab1"  "strehab1" 
## [146] "cvdasprn"  "aspunsaf"  "rlivpain"  "rduchart"  "rducstrk" 
## [151] "arttoday"  "arthwgt"   "arthexer"  "arthedu"   "imfvplac" 
## [156] "hpvadvc2"  "hpvadsht"  "hadmam"    "howlong"   "profexam" 
## [161] "lengexam"  "hadpap2"   "lastpap2"  "hadhyst2"  "bldstool" 
## [166] "lstblds3"  "hadsigm3"  "hadsgco1"  "lastsig3"  "pcpsaad2" 
## [171] "pcpsadi1"  "pcpsare1"  "psatest1"  "psatime"   "pcpsars1" 
## [176] "pcpsade1"  "pcdmdecn"  "rrclass2"  "rrcognt2"  "rratwrk2" 
## [181] "rrhcare3"  "rrphysm2"  "rremtsm2"  "misnervs"  "mishopls" 
## [186] "misrstls"  "misdeprd"  "miseffrt"  "miswtles"  "misnowrk" 
## [191] "mistmnt"   "mistrhlp"  "misphlpf"  "scntmony"  "scntmeal" 
## [196] "scntpaid"  "scntwrk1"  "scntlpad"  "scntlwk1"  "scntvot1" 
## [201] "rcsgendr"  "rcsrltn2"  "casthdx2"  "casthno2"  "emtsuprt" 
## [206] "lsatisfy"  "ctelnum1"  "cellfon2"  "cadult"    "pvtresd2" 
## [211] "cclghous"  "cstate"    "landline"  "pctcell"   "qstver"   
## [216] "qstlang"   "mscode"    "X_ststr"   "X_strwt"   "X_rawrake"
## [221] "X_wt2rake" "X_imprace" "X_impnph"  "X_impeduc" "X_impmrtl"
## [226] "X_imphome" "X_chispnc" "X_crace1"  "X_impcage" "X_impcrac"
## [231] "X_impcsex" "X_cllcpwt" "X_dualuse" "X_dualcor" "X_llcpwt2"
## [236] "X_llcpwt"  "X_rfhlth"  "X_hcvu651" "X_rfhype5" "X_cholchk"
## [241] "X_rfchol"  "X_ltasth1" "X_casthm1" "X_asthms1" "X_drdxar1"
## [246] "X_prace1"  "X_mrace1"  "X_hispanc" "X_race"    "X_raceg21"
## [251] "X_racegr3" "X_race_g1" "X_ageg5yr" "X_age65yr" "X_age_g"  
## [256] "htin4"     "htm4"      "wtkg3"     "X_bmi5"    "X_bmi5cat"
## [261] "X_rfbmi5"  "X_chldcnt" "X_educag"  "X_incomg"  "X_smoker3"
## [266] "X_rfsmok3" "drnkany5"  "drocdy3_"  "X_rfbing5" "X_drnkdy4"
## [271] "X_drnkmo4" "X_rfdrhv4" "X_rfdrmn4" "X_rfdrwm4" "ftjuda1_" 
## [276] "frutda1_"  "beanday_"  "grenday_"  "orngday_"  "vegeda1_" 
## [281] "X_misfrtn" "X_misvegn" "X_frtresp" "X_vegresp" "X_frutsum"
## [286] "X_vegesum" "X_frtlt1"  "X_veglt1"  "X_frt16"   "X_veg23"  
## [291] "X_fruitex" "X_vegetex" "X_totinda" "metvl11_"  "metvl21_" 
## [296] "maxvo2_"   "fc60_"     "actin11_"  "actin21_"  "padur1_"  
## [301] "padur2_"   "pafreq1_"  "pafreq2_"  "X_minac11" "X_minac21"
## [306] "strfreq_"  "pamiss1_"  "pamin11_"  "pamin21_"  "pa1min_"  
## [311] "pavig11_"  "pavig21_"  "pa1vigm_"  "X_pacat1"  "X_paindx1"
## [316] "X_pa150r2" "X_pa300r2" "X_pa30021" "X_pastrng" "X_parec1" 
## [321] "X_pastae1" "X_lmtact1" "X_lmtwrk1" "X_lmtscl1" "X_rfseat2"
## [326] "X_rfseat3" "X_flshot6" "X_pneumo2" "X_aidtst3" "X_age80"
Show the dimensions (observations and variables) of the dataset
dim(brfss2019)
## [1] 491775    330
Let’s explore the needed variables
class(brfss2019$smoke100)
## [1] "factor"
class(brfss2019$asattack)
## [1] "factor"
head(brfss2019$smoke100)
## [1] Yes No  Yes No  Yes No 
## Levels: Yes No
head(brfss2019$asattack)
## [1] Yes  <NA> <NA> <NA> <NA> <NA>
## Levels: Yes No
plot(brfss2019$smoke100)
 
plot(brfss2019$asattack)
 
table1 <- table(brfss2019$smoke100, brfss2019$asattack)
table1
##      
##       Yes  No
##   Yes 240 198
##   No  277 285
prop.table(table1, 1)
##      
##             Yes        No
##   Yes 0.5479452 0.4520548
##   No  0.4928826 0.5071174
mosaicplot(table1)
 
spineplot(brfss2019$smoke100 ~ brfss2019$asattack)
 
library(gmodels)
CrossTable(brfss2019$smoke100, brfss2019$asattack)
## 
##  
##    Cell Contents
## |-------------------------|
## |                       N |
## | Chi-square contribution |
## |           N / Row Total |
## |           N / Col Total |
## |         N / Table Total |
## |-------------------------|
## 
##  
## Total Observations in Table:  1000 
## 
##  
##                    | brfss2019$asattack 
## brfss2019$smoke100 |       Yes |        No | Row Total | 
## -------------------|-----------|-----------|-----------|
##                Yes |       240 |       198 |       438 | 
##                    |     0.811 |     0.868 |           | 
##                    |     0.548 |     0.452 |     0.438 | 
##                    |     0.464 |     0.410 |           | 
##                    |     0.240 |     0.198 |           | 
## -------------------|-----------|-----------|-----------|
##                 No |       277 |       285 |       562 | 
##                    |     0.632 |     0.677 |           | 
##                    |     0.493 |     0.507 |     0.562 | 
##                    |     0.536 |     0.590 |           | 
##                    |     0.277 |     0.285 |           | 
## -------------------|-----------|-----------|-----------|
##       Column Total |       517 |       483 |      1000 | 
##                    |     0.517 |     0.483 |           | 
## -------------------|-----------|-----------|-----------|
## 
## 
From the data it can be seen that smokers have a higher (54.8 %) risk of an asthma attack within a year than non smokers (49 %).
Research question 2:
Let’s explore the needed variables
class(brfss2019$sex)
## [1] "factor"
head(brfss2019$sex)
## [1] Female Female Female Female Male   Female
## Levels: Male Female
plot(brfss2019$sex)
 
table2 <- table(brfss2019$smoke100, brfss2019$sex)
table2
##      
##         Male Female
##   Yes 101010 114191
##   No   93946 167707
prop.table(table2, 1)
##      
##            Male    Female
##   Yes 0.4693751 0.5306249
##   No  0.3590481 0.6409519
mosaicplot(table2)
 
spineplot(brfss2019$smoke100 ~ brfss2019$sex)
 
CrossTable(brfss2019$smoke100, brfss2019$sex)
## 
##  
##    Cell Contents
## |-------------------------|
## |                       N |
## | Chi-square contribution |
## |           N / Row Total |
## |           N / Col Total |
## |         N / Table Total |
## |-------------------------|
## 
##  
## Total Observations in Table:  476854 
## 
##  
##                    | brfss2019$sex 
## brfss2019$smoke100 |      Male |    Female | Row Total | 
## -------------------|-----------|-----------|-----------|
##                Yes |    101010 |    114191 |    215201 | 
##                    |  1929.026 |  1334.082 |           | 
##                    |     0.469 |     0.531 |     0.451 | 
##                    |     0.518 |     0.405 |           | 
##                    |     0.212 |     0.239 |           | 
## -------------------|-----------|-----------|-----------|
##                 No |     93946 |    167707 |    261653 | 
##                    |  1586.560 |  1097.239 |           | 
##                    |     0.359 |     0.641 |     0.549 | 
##                    |     0.482 |     0.595 |           | 
##                    |     0.197 |     0.352 |           | 
## -------------------|-----------|-----------|-----------|
##       Column Total |    194956 |    281898 |    476854 | 
##                    |     0.409 |     0.591 |           | 
## -------------------|-----------|-----------|-----------|
## 
## 
From the data it can be seen that a male person is more likely to smoke (52 %) than a female (41 %).
Research question 3:
Let’s explore the needed variables
class(brfss2019$veteran)
## [1] "factor"
head(brfss2019$veteran)
## [1] No No No No No No
## Levels: Yes No
plot(brfss2019$veteran)
 
table3 <- table(brfss2019$smoke100, brfss2019$veteran)
table3
##      
##          Yes     No
##   Yes  37604 177406
##   No   22144 239277
prop.table(table3, 1)
##      
##              Yes         No
##   Yes 0.17489419 0.82510581
##   No  0.08470628 0.91529372
mosaicplot(table3)
 
spineplot(brfss2019$smoke100 ~ brfss2019$veteran)
 
CrossTable(brfss2019$smoke100, brfss2019$veteran)
## 
##  
##    Cell Contents
## |-------------------------|
## |                       N |
## | Chi-square contribution |
## |           N / Row Total |
## |           N / Col Total |
## |         N / Table Total |
## |-------------------------|
## 
##  
## Total Observations in Table:  476431 
## 
##  
##                    | brfss2019$veteran 
## brfss2019$smoke100 |       Yes |        No | Row Total | 
## -------------------|-----------|-----------|-----------|
##                Yes |     37604 |    177406 |    215010 | 
##                    |  4198.681 |   602.047 |           | 
##                    |     0.175 |     0.825 |     0.451 | 
##                    |     0.629 |     0.426 |           | 
##                    |     0.079 |     0.372 |           | 
## -------------------|-----------|-----------|-----------|
##                 No |     22144 |    239277 |    261421 | 
##                    |  3453.274 |   495.164 |           | 
##                    |     0.085 |     0.915 |     0.549 | 
##                    |     0.371 |     0.574 |           | 
##                    |     0.046 |     0.502 |           | 
## -------------------|-----------|-----------|-----------|
##       Column Total |     59748 |    416683 |    476431 | 
##                    |     0.125 |     0.875 |           | 
## -------------------|-----------|-----------|-----------|
## 
## 
From the data it can be seen that a veteran is more likely to smoke (63 %) than a non veteran (43 %). This result is obviously influenced by the higher percentage of male veterans:
CrossTable(brfss2019$sex, brfss2019$veteran)
## 
##  
##    Cell Contents
## |-------------------------|
## |                       N |
## | Chi-square contribution |
## |           N / Row Total |
## |           N / Col Total |
## |         N / Table Total |
## |-------------------------|
## 
##  
## Total Observations in Table:  491027 
## 
##  
##               | brfss2019$veteran 
## brfss2019$sex |       Yes |        No | Row Total | 
## --------------|-----------|-----------|-----------|
##          Male |     55938 |    144940 |    200878 | 
##               | 37741.218 |  5398.292 |           | 
##               |     0.278 |     0.722 |     0.409 | 
##               |     0.910 |     0.337 |           | 
##               |     0.114 |     0.295 |           | 
## --------------|-----------|-----------|-----------|
##        Female |      5507 |    284642 |    290149 | 
##               | 26129.266 |  3737.384 |           | 
##               |     0.019 |     0.981 |     0.591 | 
##               |     0.090 |     0.663 |           | 
##               |     0.011 |     0.580 |           | 
## --------------|-----------|-----------|-----------|
##  Column Total |     61445 |    429582 |    491027 | 
##               |     0.125 |     0.875 |           | 
## --------------|-----------|-----------|-----------|
## 
## 

