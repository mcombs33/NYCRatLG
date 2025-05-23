#Univariate LG Models for NYC...run #1
#FOR NYC RATS (n=262) W 10M RESOLUTION

#Create folder with genetic and geographic dist files 
#Place each ascii layer in its own folder
setwd("PATH/TO/FullRun_NYC")

#Sample locations
geo262<-read.csv(file = "NYC_RGA_n262_adjust.csv")
geo262<-as.matrix(as.data.frame(geo262[,1:2]))

#Genetic distance matrx
gen262<-read.csv(file = "batch_772_diffs.csv", header=F)
gen262<-as.vector(as.dist(gen262))

#AGE: building age 
gdist.inputs<-gdist.prep(n.Pops=262, response=gen262, samples=geo262, method='commuteDistance');
write.dir <- "AGE/";
GA.inputs<-GA.prep(ASCII.dir= write.dir, select.trans="M", seed=333, Results.dir = write.dir); 
AGE_NYC_M<-SS_optim(gdist.inputs = gdist.inputs, GA.inputs = GA.inputs); 

#ALLPER: percentage of green space
gdist.inputs<-gdist.prep(n.Pops=262, response=gen262, samples=geo262, method='commuteDistance');
write.dir <- "ALLPER400/";
GA.inputs<-GA.prep(ASCII.dir= write.dir, select.trans="A", seed=333, Results.dir = write.dir, parallel = 72);
ss_res.gdist.ALLPER400.n262<-SS_optim(gdist.inputs = gdist.inputs, GA.inputs = GA.inputs); 

#HFD: human food, combining restaurants and food carts
gdist.inputs<-gdist.prep(n.Pops=262, response=gen262, samples=geo262, method='commuteDistance');
write.dir <- "HFD/";
GA.inputs<-GA.prep(ASCII.dir= write.dir, select.trans="M", seed=333, Results.dir = write.dir, parallel = 72);
ss_res.gdist.HFD.n262<-SS_optim(gdist.inputs = gdist.inputs, GA.inputs = GA.inputs); 

#INC: median income, from ACS data
gdist.inputs<-gdist.prep(n.Pops=262, response=gen262, samples=geo262, method='commuteDistance');
write.dir <- "INC/";
GA.inputs<-GA.prep(ASCII.dir= write.dir, select.trans="M", seed=333, Results.dir = write.dir, parallel = 72);
ss_res.gdist.INC.n262<-SS_optim(gdist.inputs = gdist.inputs, GA.inputs = GA.inputs); 

#MAXJAN2: habitat suitability map
gdist.inputs<-gdist.prep(n.Pops=262, response=gen262, samples=geo262, method='commuteDistance');
write.dir <- "MAXJAN2/";
GA.inputs<-GA.prep(ASCII.dir= write.dir, select.trans="M", seed=333, Results.dir = write.dir, parallel = 72);
ss_res.gdist.MAXJAN2.n262<-SS_optim(gdist.inputs = gdist.inputs, GA.inputs = GA.inputs); 

#RES400: density of residential units
gdist.inputs<-gdist.prep(n.Pops=262, response=gen262, samples=geo262, method='commuteDistance');
write.dir <- "RES400/";
GA.inputs<-GA.prep(ASCII.dir= write.dir, select.trans="M", seed=333, Results.dir = write.dir, parallel = 72);
ss_res.gdist.RES400.n262<-SS_optim(gdist.inputs = gdist.inputs, GA.inputs = GA.inputs); 

#SEW: density of catch basins constructed with bricks
gdist.inputs<-gdist.prep(n.Pops=262, response=gen262, samples=geo262, method='commuteDistance');
write.dir <- "SEW400/";
GA.inputs<-GA.prep(ASCII.dir= write.dir, select.trans="M", seed=333, Results.dir = write.dir, parallel = 72);
ss_res.gdist.SEW400.n262<-SS_optim(gdist.inputs = gdist.inputs, GA.inputs = GA.inputs); 

#SUB: distance to nearest subway line
gdist.inputs<-gdist.prep(n.Pops=262, response=gen262, samples=geo262, method='commuteDistance');
write.dir <- "SUB/";
GA.inputs<-GA.prep(ASCII.dir= write.dir, select.trans="M", seed=333, Results.dir = write.dir, parallel = 72);
ss_res.gdist.SUB.n262<-SS_optim(gdist.inputs = gdist.inputs, GA.inputs = GA.inputs); 

#TOP: topographical slope 
gdist.inputs<-gdist.prep(n.Pops=262, response=gen262, samples=geo262, method='commuteDistance');
write.dir <- "TOP/";
GA.inputs<-GA.prep(ASCII.dir= write.dir, select.trans="A", seed=333, Results.dir = write.dir, parallel = 72);
ss_res.gdist.TOP.n262<-SS_optim(gdist.inputs = gdist.inputs, GA.inputs = GA.inputs); 


#AES: distance to available earthen space
gdist.inputs<-gdist.prep(n.Pops=262, response=gen262, samples=geo262, method='commuteDistance');
write.dir <- "AES/";
GA.inputs<-GA.prep(ASCII.dir= write.dir, select.trans="A", seed=333, Results.dir = write.dir, parallel = 72);
ss_res.gdist.AES.n262<-SS_optim(gdist.inputs = gdist.inputs, GA.inputs = GA.inputs); 

#BID: buisiness improvement areas
gdist.inputs<-gdist.prep(n.Pops=262, response=gen262, samples=geo262, method='commuteDistance');
write.dir <- "BID/";
GA.inputs<-GA.prep(ASCII.dir= write.dir, select.trans="A", seed=333, Results.dir = write.dir, parallel = 72);
ss_res.gdist.BID.n262<-SS_optim(gdist.inputs = gdist.inputs, GA.inputs = GA.inputs); 

#STRALL: streets
gdist.inputs<-gdist.prep(n.Pops=262, response=gen262, samples=geo262, method='commuteDistance');
write.dir <- "STRALL/";
GA.inputs<-GA.prep(ASCII.dir= write.dir, select.trans="A", seed=333, Results.dir = write.dir, parallel = 72);
ss_res.gdist.STRALL.n262<-SS_optim(gdist.inputs = gdist.inputs, GA.inputs = GA.inputs); 

#SUBCAT: subway lines
gdist.inputs<-gdist.prep(n.Pops=262, response=gen262, samples=geo262, method='commuteDistance');
write.dir <- "SUBCAT/";
GA.inputs<-GA.prep(ASCII.dir= write.dir, select.trans="A", seed=333, Results.dir = write.dir, parallel = 72);
ss_res.gdist.SUBCAT.n262<-SS_optim(gdist.inputs = gdist.inputs, GA.inputs = GA.inputs); 

#ZON: municipal zoning
gdist.inputs<-gdist.prep(n.Pops=262, response=gen262, samples=geo262, method='commuteDistance');
write.dir <- "ZON/";
GA.inputs<-GA.prep(ASCII.dir= write.dir, select.trans="A", seed=333, Results.dir = write.dir, parallel = 72);
ss_res.gdist.ZON.n262<-SS_optim(gdist.inputs = gdist.inputs, GA.inputs = GA.inputs); 

#BULDLC: built landcover
gdist.inputs<-gdist.prep(n.Pops=262, response=gen262, samples=geo262, method='commuteDistance');
write.dir <- "BULDLC/";
GA.inputs<-GA.prep(ASCII.dir= write.dir, select.trans="A", seed=333, Results.dir = write.dir, parallel = 72);
ss_res.gdist.BULDLC.n262<-SS_optim(gdist.inputs = gdist.inputs, GA.inputs = GA.inputs); 

#DIRTLC: dirt landcover
gdist.inputs<-gdist.prep(n.Pops=262, response=gen262, samples=geo262, method='commuteDistance');
write.dir <- "DIRTLC/";
GA.inputs<-GA.prep(ASCII.dir= write.dir, select.trans="A", seed=333, Results.dir = write.dir, parallel = 72);
ss_res.gdist.DIRTLC.n262<-SS_optim(gdist.inputs = gdist.inputs, GA.inputs = GA.inputs); 

#GREENLC: green landcover
gdist.inputs<-gdist.prep(n.Pops=262, response=gen262, samples=geo262, method='commuteDistance');
write.dir <- "GREENLC/";
GA.inputs<-GA.prep(ASCII.dir= write.dir, select.trans="A", seed=333, Results.dir = write.dir, parallel = 72);
ss_res.gdist.GREENLC.n262<-SS_optim(gdist.inputs = gdist.inputs, GA.inputs = GA.inputs); 

#IMPERLC: impervious surface landcover
gdist.inputs<-gdist.prep(n.Pops=262, response=gen262, samples=geo262, method='commuteDistance');
write.dir <- "IMPERLC/";
GA.inputs<-GA.prep(ASCII.dir= write.dir, select.trans="A", seed=333, Results.dir = write.dir, parallel = 72);
ss_res.gdist.IMPERLC.n262<-SS_optim(gdist.inputs = gdist.inputs, GA.inputs = GA.inputs); 

#WATLC: water landcover
gdist.inputs<-gdist.prep(n.Pops=262, response=gen262, samples=geo262, method='commuteDistance');
write.dir <- "WATLC/";
GA.inputs<-GA.prep(ASCII.dir= write.dir, select.trans="A", seed=333, Results.dir = write.dir, parallel = 72);
ss_res.gdist.WATLC.n262<-SS_optim(gdist.inputs = gdist.inputs, GA.inputs = GA.inputs);

#ZONING_BID: zoning and business improvement districts
gdist.inputs<-gdist.prep(n.Pops=262, response=gen262, samples=geo262, method='commuteDistance');
write.dir <- "ZONING_BID/";
GA.inputs <- GA.prep(ASCII.dir= write.dir, Results.dir= write.dir, select.trans = list(NA, NA), seed = 333, parallel = 36);
MS_ZONING_BID<- MS_optim(gdist.inputs = gdist.inputs, GA.inputs = GA.inputs);

#TRANSPORTATION: all trasportation
gdist.inputs<-gdist.prep(n.Pops=262, response=gen262, samples=geo262, method='commuteDistance');
write.dir <- "TRANSPORTATION/";
GA.inputs <- GA.prep(ASCII.dir= write.dir, Results.dir= write.dir, select.trans = list(NA, NA), seed = 333, parallel = 36);
MS_TRANSPORTATION<- MS_optim(gdist.inputs = gdist.inputs, GA.inputs = GA.inputs);

#UNDERGROUND: subways and sewers
gdist.inputs<-gdist.prep(n.Pops=262, response=gen262, samples=geo262, method='commuteDistance');
write.dir <- "UNDERGROUND/";
GA.inputs <- GA.prep(ASCII.dir= write.dir, Results.dir= write.dir, select.trans = list("M", NA), seed = 333, parallel = 36);
MS_UNDERGROUND<- MS_optim(gdist.inputs = gdist.inputs, GA.inputs = GA.inputs);

#INCOME_RES: income and population density
gdist.inputs<-gdist.prep(n.Pops=262, response=gen262, samples=geo262, method='commuteDistance');
write.dir <- "INCOME_RES/";
GA.inputs <- GA.prep(ASCII.dir= write.dir, Results.dir= write.dir, select.trans = list("M", "M"), seed = 333, parallel = 36);
MS_INCOME_RES<- MS_optim(gdist.inputs = gdist.inputs, GA.inputs = GA.inputs);

#INCOME_GREENLC: income and green landcover
gdist.inputs<-gdist.prep(n.Pops=262, response=gen262, samples=geo262, method='commuteDistance');
write.dir <- "INCOME_GREENLC/";
GA.inputs <- GA.prep(ASCII.dir= write.dir, Results.dir= write.dir, select.trans = list("M", NA), seed = 333, parallel = 36);
MS_INCOME_GREENLC<- MS_optim(gdist.inputs = gdist.inputs, GA.inputs = GA.inputs);

#INCOME_GREENPER: income and percentage green space
gdist.inputs<-gdist.prep(n.Pops=262, response=gen262, samples=geo262, method='commuteDistance');
write.dir <- "INCOME_GREENPER/";
GA.inputs <- GA.prep(ASCII.dir= write.dir, Results.dir= write.dir, select.trans = list("A", "M"), seed = 333, parallel = 36);
MS_INCOME_GREENPER<- MS_optim(gdist.inputs = gdist.inputs, GA.inputs = GA.inputs);

#RES_GREENLC: population density and green landcover
gdist.inputs<-gdist.prep(n.Pops=262, response=gen262, samples=geo262, method='commuteDistance');
write.dir <- "RES_GREENLC/";
GA.inputs <- GA.prep(ASCII.dir= write.dir, Results.dir= write.dir, select.trans = list(NA,"M"), seed = 333, parallel = 36);
MS_RES_GREENLC<- MS_optim(gdist.inputs = gdist.inputs, GA.inputs = GA.inputs);

#RES_GREENPER: population density and percentage green space
gdist.inputs<-gdist.prep(n.Pops=262, response=gen262, samples=geo262, method='commuteDistance');
write.dir <- "RES_GREENPER/";
GA.inputs <- GA.prep(ASCII.dir= write.dir, Results.dir= write.dir, select.trans = list("A", "M"), seed = 333, parallel = 36);
MS_RES_GREENPER<- MS_optim(gdist.inputs = gdist.inputs, GA.inputs = GA.inputs);

#RATFOOD: rat food
gdist.inputs<-gdist.prep(n.Pops=262, response=gen262, samples=geo262, method='commuteDistance');
write.dir <- "RATFOOD/";
GA.inputs <- GA.prep(ASCII.dir= write.dir, Results.dir= write.dir, select.trans = list("M", NA, "M"), seed = 333, parallel = 36);
MS_RATFOOD<- MS_optim(gdist.inputs = gdist.inputs, GA.inputs = GA.inputs);

#NATURALRESOURCES: natural rat resources
gdist.inputs<-gdist.prep(n.Pops=262, response=gen262, samples=geo262, method='commuteDistance');
write.dir <- "NATURALRESOURCES/";
GA.inputs <- GA.prep(ASCII.dir= write.dir, Results.dir= write.dir, select.trans = list(NA, NA), seed = 333, parallel = 36);
MS_NATURALRESOURCES<- MS_optim(gdist.inputs = gdist.inputs, GA.inputs = GA.inputs);

#ALLNONBUILT: all non-built variables
gdist.inputs<-gdist.prep(n.Pops=262, response=gen262, samples=geo262, method='commuteDistance');
write.dir <- "ALLNONBUILT/";
GA.inputs <- GA.prep(ASCII.dir= write.dir, Results.dir= write.dir, select.trans = list(NA, NA, NA, "A"), seed = 333, parallel = 36);
MS_ALLNONBUILT<- MS_optim(gdist.inputs = gdist.inputs, GA.inputs = GA.inputs);

#ALLBUILT: all built variables
gdist.inputs<-gdist.prep(n.Pops=262, response=gen262, samples=geo262, method='commuteDistance');
write.dir <- "ALLBUILT_AGE_NOZONE_1/";
GA.inputs <- GA.prep(ASCII.dir= write.dir, Results.dir= write.dir, select.trans = list("M", NA, NA, NA, NA, "A"), seed = 333, parallel = 36);
ALLBUILT_AGE_NOZONE_1<- MS_optim(gdist.inputs = gdist.inputs, GA.inputs = GA.inputs);

#ALLSOCIAL: all social variables
gdist.inputs<-gdist.prep(n.Pops=262, response=gen262, samples=geo262, method='commuteDistance');
write.dir <- "ALLSOCIAL_ZON1/";
GA.inputs <- GA.prep(ASCII.dir= write.dir, Results.dir= write.dir, select.trans = list(NA, "M", "M", "M", NA), seed = 333, parallel = 36);
MS_ALLSOCIAL_ZON1<- MS_optim(gdist.inputs = gdist.inputs, GA.inputs = GA.inputs);

#ZONSUB: zoning and subway
gdist.inputs<-gdist.prep(n.Pops=262, response=gen262, samples=geo262, method='commuteDistance');
write.dir <- "ZONSUB_1/";
GA.inputs <- GA.prep(ASCII.dir= write.dir, Results.dir= write.dir, select.trans = list(NA, NA), seed = 333, parallel = 36);
MS_ZONSUB_1<- MS_optim(gdist.inputs = gdist.inputs, GA.inputs = GA.inputs)

