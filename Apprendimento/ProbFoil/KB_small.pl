% Modes
mode(film(-, -, +, -, -, -, -, -, -, -, - )).
mode(film(-, c, +, -, -, -, -, -, -, -, - )).
mode(film(-, -, +, c, -, -, -, -, -, -, - )).
mode(film(-, -, +, -, -, c, -, -, -, -, - )).
mode(ruolo_crew(+,-, -)).
mode(ruolo_crew(+,-, c)).
mode(ruolo(+,-, -)).
mode(ruolo(+,-, c)).
mode(membro_crew(+,-, -)).
mode(membro_crew(+,-, c)).
mode(membro_crew(+,c, -)).
mode(membro_crew(+,c, c)).
mode(membro_crew(+,-, +)).
mode(attore(-,+, -)).
mode(attore(c,+, -)).
mode(attore(-,+, c)).
mode(attore(c,+, c)).
mode(attore(-,+, +)).

% Definizioni dei tipi
base(attore(nome,actorID,gender)).
base(membro_crew(crewID, nome, gender)).
base(film(budget, genres, movieID, original_language, popularity, production_companies, release_date, revenue, runtime, title, vote_count)).
base(ruolo_crew(movieID, crewID ,job)).
base(ruolo(movieID, actorID ,role)).
base(high_vote_average(movieID)).

% Target
learn(high_vote_average/1).

% Come generare esempi negativi
example_mode(closed).


% Esempi positivi
high_vote_average(567).
high_vote_average(346).
high_vote_average(27205).
high_vote_average(423).
high_vote_average(334543).
high_vote_average(274).
high_vote_average(140420).
high_vote_average(680).
high_vote_average(77338).
high_vote_average(155).
high_vote_average(10376).
high_vote_average(185).
high_vote_average(128).
high_vote_average(205596).
high_vote_average(975).
high_vote_average(429).
high_vote_average(335).
high_vote_average(264644).
high_vote_average(238).
high_vote_average(426).
high_vote_average(120).
high_vote_average(694).
high_vote_average(111).
high_vote_average(311).
high_vote_average(369557).
high_vote_average(121).

% Esempi negativi
0.0::high_vote_average(869).
0.0::high_vote_average(81005).
0.0::high_vote_average(8914).
0.0::high_vote_average(9408).
0.0::high_vote_average(72571).
0.0::high_vote_average(8247).
0.0::high_vote_average(403119).
0.0::high_vote_average(23437).
0.0::high_vote_average(287424).
0.0::high_vote_average(10196).
0.0::high_vote_average(343611).
0.0::high_vote_average(11459).
0.0::high_vote_average(68737).
0.0::high_vote_average(9894).
0.0::high_vote_average(13387).
0.0::high_vote_average(9620).
0.0::high_vote_average(23742).
0.0::high_vote_average(37430).
0.0::high_vote_average(8645).
0.0::high_vote_average(10313).
0.0::high_vote_average(277685).
0.0::high_vote_average(8487).
0.0::high_vote_average(16866).
0.0::high_vote_average(9480).
0.0::high_vote_average(23827).
0.0::high_vote_average(329833).

% film(budget, genres, id, original_language, popularity, production_companies, release_date, revenue, runtime, title, vote_average, vote_count).
film(8000000, "thriller", 680, "en", 140.950236, "miramax films", "1994", 213928762, 154.0, "pulp fiction", 8670).
film(19000000, "crime", 274, "en", 4.307222, "orion pictures", "1991", 272742922, 119.0, "the silence of the lambs", 4549).
film(47000000, "comedy", 9894, "en", 7.586577, "columbia pictures corporation", "1996", 102825796, 96.0, "the cable guy", 603).
film(6000000, "drama", 238, "en", 41.109264, "paramount pictures", "1972", 245066411, 175.0, "the godfather", 6024).
film(2479000, "mystery", 426, "en", 18.20822, "paramount pictures", "1958", 28000000, 128.0, "vertigo", 1162).
film(1000000, "drama", 567, "en", 17.911314, "paramount pictures", "1954", 36764313, 112.0, "rear window", 1531).
film(935000, "drama", 975, "en", 8.548518, "united artists", "1957", 0, 88.0, "paths of glory", 565).
film(1200000, "western", 429, "it", 16.788787, "united artists", "1966", 6000000, 161.0, "the good the bad and the ugly", 2371).
film(2200000, "science fiction", 185, "en", 17.112594, "hawk films", "1971", 26589000, 136.0, "a clockwork orange", 3432).
film(5000000, "western", 335, "it", 15.589351, "paramount pictures", "1968", 5321508, 175.0, "once upon a time in the west", 1160).
film(30000000, "drama", 311, "en", 32.182851, "warner bros", "1984", 0, 229.0, "once upon a time in america", 1104).
film(19000000, "horror", 694, "en", 19.611589, "hawk films", "1980", 44017374, 144.0, "the shining", 3890).
film(2000000, "action", 346, "ja", 15.01777, "toho company", "1954", 271841, 207.0, "seven samurai", 892).
film(9000000, "fantasy", 10376, "it", 7.668214, "medusa film", "1998", 0, 170.0, "the legend of 1900", 554).
film(170000000, "action", 8487, "en", 9.887602, "todman simon lemasters productions", "1999", 222104681, 106.0, "wild wild west", 1042).
film(60000000, "action", 8914, "en", 7.493615, "village roadshow pictures", "1999", 73648228, 105.0, "deep blue sea", 616).
film(26500000, "adventure", 128, "ja", 17.166725, "miramax films", "1997", 159375308, 134.0, "princess mononoke", 2041).
film(25000000, "action", 111, "en", 11.299673, "universal pictures", "1983", 65884703, 170.0, "scarface", 3017).
film(100000000, "thriller", 869, "en", 17.319836, "twentieth century fox film corporation", "2001", 362211740, 119.0, "planet of the apes", 1270).
film(93000000, "adventure", 120, "en", 32.070725, "wingnut films", "2001", 871368364, 178.0, "the lord of the rings: the fellowship of the ring", 8892).
film(79000000, "adventure", 121, "en", 29.423537, "wingnut films", "2002", 926287400, 179.0, "the lord of the rings: the two towers", 7641).
film(35000000, "drama", 423, "en", 14.811594, "bac films", "2002", 120072577, 150.0, "the pianist", 1927).
film(78000000, "fantasy", 9480, "en", 11.415558, "twentieth century fox film corporation", "2003", 179179718, 103.0, "daredevil", 1551).
film(60000000, "action", 9620, "en", 12.571789, "paramount pictures", "2003", 96269812, 119.0, "paycheck", 594).
film(35000000, "adventure", 11459, "en", 8.061423, "walt disney pictures", "2005", 86369815, 100.0, "sky high", 568).
film(85000000, "animation", 9408, "en", 11.526339, "columbia pictures", "2007", 149044513, 85.0, "surfs up", 616).
film(85000000, "adventure", 8247, "en", 11.03897, "dune entertainment", "2008", 222231186, 88.0, "jumper", 1855).
film(185000000, "drama", 155, "en", 123.167259, "dc comics", "2008", 1004558444, 152.0, "the dark knight", 12269).
film(60000000, "thriller", 8645, "en", 6.22229, "spyglass entertainment", "2008", 163403799, 91.0, "the happening", 968).
film(30000000, "action", 13387, "en", 9.296824, "europa corp", "2008", 108979549, 104.0, "transporter 3", 1110).
film(24000000, "comedy", 10313, "en", 6.253084, "bbc films", "2009", 68729358, 93.0, "the men who stare at goats", 755).
film(15000, "horror", 23827, "en", 12.706424, "blumhouse productions", "2007", 193355800, 86.0, "paranormal activity", 1351).
film(70000000, "science fiction", 16866, "en", 10.44244, "tristar pictures", "2009", 104945765, 91.0, "planet 51", 573).
film(30000000, "action", 23742, "en", 14.313079, "warner bros", "2010", 55583804, 107.0, "cop out", 518).
film(35000000, "horror", 23437, "en", 10.40191, "new line cinema", "2010", 115664037, 95.0, "a nightmare on elm street", 771).
film(150000000, "action", 10196, "en", 9.544657, "paramount pictures", "2010", 318502923, 103.0, "the last airbender", 1180).
film(160000000, "action", 27205, "en", 29.108149, "legendary pictures", "2010", 825532764, 148.0, "inception", 14075).
film(90000000, "adventure", 37430, "en", 10.949076, "dark horse entertainment", "2011", 48795021, 113.0, "conan the barbarian", 612).
film(5000000, "horror", 72571, "en", 10.996308, "paramount pictures", "2011", 205703818, 83.0, "paranormal activity 3", 685).
film(13000000, "drama", 77338, "fr", 16.086919, "gaumont", "2011", 426480871, 112.0, "the intouchables", 5410).
film(0, "animation", 140420, "en", 7.198633, "walt disney pictures", "2012", 0, 7.0, "paperman", 734).
film(195000000, "action", 81005, "en", 11.606061, "new line cinema", "2013", 197687603, 114.0, "jack the giant slayer", 2634).
film(14000000, "history", 205596, "en", 31.59594, "black bear pictures", "2014", 233555708, 113.0, "the imitation game", 5895).
film(95000000, "adventure", 68737, "en", 15.297821, "legendary pictures", "2014", 114178613, 102.0, "seventh son", 980).
film(1000000, "horror", 277685, "en", 10.07817, "bazelevs production", "2015", 62882090, 82.0, "unfriended", 1092).
film(4000000, "horror", 287424, "en", 12.020933, "lionsgate", "2015", 187112, 95.0, "maggie", 604).
film(6000000, "drama", 264644, "en", 12.443291, "téléfilm canada", "2015", 35401758, 117.0, "room", 2838).
film(50000000, "comedy", 329833, "en", 10.155109, "scott rudin productions", "2016", 55969000, 100.0, "zoolander 2", 814).
film(4000000, "romance", 369557, "en", 10.672862, "cosmo-films", "2016", 13624522, 106.0, "sing street", 669).
film(5500000, "drama", 403119, "en", 52.854103, "dimension films", "2017", 44235023, 89.0, "47 meters down", 548).
film(60000000, "action", 343611, "en", 15.60562, "paramount pictures", "2016", 162146076, 118.0, "jack reacher: never go back", 1843).
film(12000000, "drama", 334543, "en", 17.085145, "the weinstein company", "2016", 140302754, 118.0, "lion", 1699).

%ruolo(movieID, actorId ,role).
ruolo(680,8891,"vincent vega").
ruolo(680,2231,"jules winfield").
ruolo(680,139,"mia wallace").
ruolo(680,62,"butch coolidge").
ruolo(680,10182,"marsellus wallace").
ruolo(680,1037,"wolf").
ruolo(680,7036,"lance").
ruolo(680,3129,"pumpkin").
ruolo(680,99,"honey bunny").
ruolo(680,2319,"fabienne").
ruolo(680,138,"jimmie dimmick").
ruolo(680,4690,"captain koons").
ruolo(680,2165,"jody").
ruolo(680,11803,"zed").
ruolo(680,11804,"maynard").
ruolo(680,71836,"esmarelda villalobos").
ruolo(680,31549,"marvin").
ruolo(680,884,"buddy holly").
ruolo(680,33399,"trudi").
ruolo(680,11807,"waitress").
ruolo(680,11805,"brett").
ruolo(680,58552,"roger").
ruolo(680,3137,"paul").
ruolo(680,1174004,"ed sullivan").
ruolo(680,1174003,"page for phillip morris").
ruolo(680,1174007,"ricky nelson").
ruolo(680,1174000,"marilyn monroe").
ruolo(680,1174001,"james dean").
ruolo(680,54855,"dean martin").
ruolo(680,1174008,"jerry lewis").
ruolo(680,1099751,"mamie van doren").
ruolo(680,107023,"hold hands you lovebirds archive footage").
ruolo(680,11162,"mrs. coolidge - butch s mother").
ruolo(680,1174002,"young butch").
ruolo(680,1174006,"klondike").
ruolo(680,1173999,"sportscaster #1 - coffee shop").
ruolo(680,46346,"sportscaster #2").
ruolo(680,90337,"wilson s trainer").
ruolo(680,1174005,"dead floyd wilson").
ruolo(680,157865,"gawker #1").
ruolo(680,3138,"hit-and-run witness").
ruolo(680,1174009,"pedestrian   bonnie dimmick").
ruolo(680,65907,"shot woman").
ruolo(680,1173998,"the gimp").
ruolo(680,19578,"man no. 4").
ruolo(680,11806,"raquel").
ruolo(680,2545,"long hair yuppy scum").
ruolo(680,1274295,"winston wolfe s girlfriend at party uncredited").
ruolo(680,1177915,"bar tender uncredited").
ruolo(680,1274296,"lucky lady uncredited").
ruolo(680,1274297,"drug dealer uncredited").
ruolo(680,1274298,"hopalong cassidy uncredited").
ruolo(680,1274299,"woman in bathroom uncredited").
ruolo(680,1584544,"michael uncredited").
ruolo(274,1038,"clarice starling").
ruolo(274,4173,"hannibal lecter").
ruolo(274,349,"jack crawford").
ruolo(274,15854,"jame  buffalo bill  gumb").
ruolo(274,16293,"dr. frederick chilton").
ruolo(274,31649,"catherine martin").
ruolo(274,6930,"senator ruth martin").
ruolo(274,51864,"ardelia mapp").
ruolo(274,13936,"barney matthews").
ruolo(274,3801,"lamar").
ruolo(274,16119,"lt. boyle").
ruolo(274,183640,"sgt. tate").
ruolo(274,1280997,"sgt. pembry").
ruolo(274,76470,"roden").
ruolo(274,138988,"pilcher").
ruolo(274,32592,"paul krendler").
ruolo(274,102429,"fbi director hayden burke").
ruolo(274,1280985,"fbi instructor").
ruolo(274,192268,"agent burroughs").
ruolo(274,31118,"friendly psychopath").
ruolo(274,1280986,"brooding psychopath").
ruolo(274,94435,"miggs").
ruolo(274,1280987,"young clarice").
ruolo(274,1280988,"clarice s father").
ruolo(274,68927,"mr. lang").
ruolo(274,68926,"mr. lang s driver").
ruolo(274,1280989,"tv evangelist").
ruolo(274,1280990,"boxing instructor").
ruolo(274,174914,"mr. brigham").
ruolo(274,102805,"agent terry").
ruolo(274,152638,"oscar").
ruolo(274,1174793,"sheriff perkins").
ruolo(274,16298,"dr. akin").
ruolo(274,1280991,"precious as darla").
ruolo(274,1041787,"tv anchor woman").
ruolo(274,52057,"tv anchor man").
ruolo(274,1280992,"tv sportscaster").
ruolo(274,175082,"sen. martin s aide").
ruolo(274,1280995,"1st reporter").
ruolo(274,1280996,"2nd reporter").
ruolo(274,1212913,"officer jacobs").
ruolo(274,7134,"officer murray").
ruolo(274,1111682,"airport flirt").
ruolo(274,15074,"spooked memphis cop").
ruolo(274,552526,"tall memphis cop").
ruolo(274,1280998,"distraught memphis cop").
ruolo(274,6591,"swat commander").
ruolo(274,1473,"swat communicator").
ruolo(274,1219514,"swat shooter").
ruolo(274,1280999,"ems attendant").
ruolo(274,59329,"ems driver").
ruolo(274,127738,"mr. bimmel").
ruolo(274,1281000,"stacy hubka").
ruolo(274,1447788,"young clarice").
ruolo(274,1281001,"flower delivery man").
ruolo(274,102809,"state trooper uncredited").
ruolo(274,97902,"fbi agent uncredited").
ruolo(274,14999,"fbi agent in memphis uncredited").
ruolo(274,1098036,"orderly uncredited").
ruolo(274,1584544,"fbi agent uncredited").
ruolo(9894,206,"cable guy").
ruolo(9894,4756,"steven m. kovacs").
ruolo(9894,41087,"robin harris").
ruolo(9894,70851,"rick").
ruolo(9894,18364,"steven s father").
ruolo(9894,6930,"steven s mother").
ruolo(9894,7399,"sam sweet   stan sweet").
ruolo(9894,21315,"eric roberts").
ruolo(9894,21197,"medieval times waitress").
ruolo(9894,43120,"medieval times host").
ruolo(9894,28101,"steven s boss").
ruolo(9894,212,"sales manager").
ruolo(9894,26046,"steven s secretary").
ruolo(9894,887,"robin s date").
ruolo(9894,134772,"basketball player").
ruolo(9894,3138,"cable boy s mother").
ruolo(9894,198878,"heather").
ruolo(238,3084,"don vito corleone").
ruolo(238,1158,"michael corleone").
ruolo(238,3085,"santino  sonny  corleone").
ruolo(238,3086,"pete clemenza").
ruolo(238,3087,"tom hagen").
ruolo(238,3088,"capt. mark mccluskey").
ruolo(238,3142,"jack woltz").
ruolo(238,3090,"emilio barzini").
ruolo(238,3091,"virgil  der türke  sollozzo").
ruolo(238,3092,"kay adams").
ruolo(238,3093,"salvatore sally tessio").
ruolo(238,3094,"connie corleone rizzi").
ruolo(238,3095,"carlo rizzi").
ruolo(238,3096,"fredo corleone").
ruolo(238,3143,"carmine cuneo").
ruolo(238,3144,"johnny fontane").
ruolo(238,933716,"mama corleone").
ruolo(238,106811,"luca brasi").
ruolo(238,99724,"paulie").
ruolo(238,1195877,"bonasera").
ruolo(238,20752,"moe greene").
ruolo(238,3414,"bruno tattaglia").
ruolo(238,3413,"philip tattaglia").
ruolo(238,3145,"apollonia vitelli-corleone").
ruolo(238,119431,"vitelli").
ruolo(238,1769,"michael francis rizzi").
ruolo(238,20973,"don zaluchi").
ruolo(238,138211,"enzo, the baker").
ruolo(238,55672,"tony - stablehand").
ruolo(238,3174,"neri").
ruolo(238,82779,"nazorine").
ruolo(238,982089,"theresa hagen").
ruolo(238,160728,"sandra corleone").
ruolo(238,27647,"fabrizio").
ruolo(238,24604,"don tommasino").
ruolo(238,44860,"calo").
ruolo(238,178006,"extra in furniture-moving scene uncredited").
ruolo(238,2872,"piano player in montage uncredited").
ruolo(238,38803,"boy on street who attended funeral uncredited").
ruolo(238,1209294,"don victor stracci uncredited").
ruolo(238,1394703,"crowd uncredited").
ruolo(238,2870,"cowboy on the set at woltz s studio uncredited").
ruolo(238,1235937,"usher in bridal party uncredited").
ruolo(238,1503036,"sonny s bodyguard uncredited").
ruolo(238,1233541,"cop outside hospital uncredited").
ruolo(238,1068099,"sonny s killer #1 uncredited").
ruolo(238,61241,"wedding guest uncredited").
ruolo(238,106187,"boy at wedding uncredited").
ruolo(238,100503,"corleone family member uncredited").
ruolo(238,1503035,"priest at baptism uncredited").
ruolo(238,1290895,"man in passenger seat uncredited").
ruolo(238,1237372,"drunk uncredited").
ruolo(238,1213795,"rocco lampone uncredited").
ruolo(238,11480,"street extra uncredited").
ruolo(238,1209678,"extra in wedding scene uncredited").
ruolo(238,16525,"willi cicci uncredited").
ruolo(238,78336,"wedding party guest uncredited").
ruolo(238,1234848,"fruit vendor uncredited").
ruolo(426,854,"det. john  scottie  ferguson").
ruolo(426,5729,"madeleine elster judy barton").
ruolo(426,5730,"marjorie  midge  wood").
ruolo(426,5731,"gavin elster").
ruolo(426,5732,"coroner").
ruolo(426,5737,"scottie s doctor").
ruolo(426,5738,"manager of mckittrick hotel").
ruolo(426,5739,"pop leibel").
ruolo(426,5740,"car owner mistaken for madeleine").
ruolo(426,121323,"diner at ernie s").
ruolo(567,854,"l. b. jefferies").
ruolo(567,4070,"lisa carol fremont").
ruolo(567,7683,"det. lt. thomas j. doyle").
ruolo(567,7684,"stella").
ruolo(567,7685,"lars thorwald").
ruolo(567,7686,"miss lonelyheart").
ruolo(567,49906,"songwriter").
ruolo(567,161738,"miss torso").
ruolo(567,121038,"woman on fire escape").
ruolo(567,93622,"man on fire escape").
ruolo(567,85846,"miss hearing aid").
ruolo(567,184636,"newlywed").
ruolo(567,130373,"mrs. emma thorwald").
ruolo(567,176534,"newlywed").
ruolo(567,121323,"songwriter s party guest with poodle uncredited").
ruolo(567,861,"girl at songwriter s party uncredited").
ruolo(567,106504,"girl at songwriter s party uncredited").
ruolo(567,2636,"clock-winder in songwriter s apartment uncredited").
ruolo(567,33777,"detective uncredited").
ruolo(567,70985,"jeff s editor voice uncredited").
ruolo(975,2090,"col. dax").
ruolo(975,14562,"cpl. philippe paris").
ruolo(975,14563,"gen. george broulard").
ruolo(975,14564,"gen. paul mireau").
ruolo(975,14565,"lt. roget singing man").
ruolo(975,12312,"maj. saint-auban").
ruolo(975,592,"pvt. pierre arnaud").
ruolo(975,2758,"pvt. maurice ferol").
ruolo(975,1019259,"german singer").
ruolo(975,117671,"proprietor of cafe").
ruolo(975,3476,"narrator of opening sequence").
ruolo(975,14579,"father dupree").
ruolo(975,31503,"sgt. boulanger").
ruolo(975,94031,"pvt. lejeune").
ruolo(975,1077968,"shell-shocked soldier").
ruolo(975,1077970,"capt. rousseau").
ruolo(975,1077971,"capt. nichols").
ruolo(975,49435,"maj. gouderc uncredited").
ruolo(975,3349,"private in the attack uncredited").
ruolo(429,3265,"tuco").
ruolo(429,190,"blondie").
ruolo(429,4078,"sentenza angel eyes").
ruolo(429,5813,"alcoholic union captain").
ruolo(429,5814,"father pablo ramirez").
ruolo(429,5815,"maria").
ruolo(429,5816,"sheriff").
ruolo(429,5817,"baker").
ruolo(429,5818,"jackson bill carson").
ruolo(429,5819,"monk").
ruolo(429,5843,"thomas  shorty  larson uncredited").
ruolo(429,1077276,"storekeeper").
ruolo(429,1077277,"mexican peon").
ruolo(429,1077278,"mexican peon").
ruolo(429,4661,"member of angel eyes  gange").
ruolo(429,103529,"stevens").
ruolo(429,49895,"member of angel eyes  gang").
ruolo(429,129314,"one-armed bounty hunter").
ruolo(429,37512,"blonde bounty hunter").
ruolo(429,102096,"capt. harper").
ruolo(429,100930,"member of angel eyes  gang").
ruolo(429,16318,"cpl. wallace").
ruolo(429,535685,"stevens  wife uncredited").
ruolo(429,144612,"1st sombrero onlooker at tuco s 1st hanging uncredited").
ruolo(429,589876,"bounty hunter uncredited").
ruolo(429,1127109,"mexican girl with blondie uncredited").
ruolo(429,72888,"bounty hunter #2 uncredited").
ruolo(429,1046525,"2nd sombrero onlooker at tuco s 1st hanging uncredited").
ruolo(429,1063555,"bounty hunter uncredited").
ruolo(429,1281095,"member of angel eye s gang uncredited").
ruolo(429,102121,"member of angel eye s gang uncredited").
ruolo(429,50784,"deputy uncredited").
ruolo(429,43241,"3rd sombrero onlooker at tuco s 1st hanging uncredited").
ruolo(429,1467655,"bald onlooker at tuco s 1st hanging uncredited").
ruolo(429,222591,"pardue the hotel owner uncredited").
ruolo(429,32830,"sergeant at confederate fort uncredited").
ruolo(429,119515,"mexican bounty hunter uncredited").
ruolo(429,32130,"bartender in socorro uncredited").
ruolo(429,1082083,"stevens  youngest son uncredited").
ruolo(429,1059887,"pistolero recruited by tuco in the cave uncredited").
ruolo(429,1584544,"pedro uncredited").
ruolo(185,56890,"alexander  delarge").
ruolo(185,2264,"mr. alexander").
ruolo(185,2265,"mrs. alexander").
ruolo(185,2267,"chief guard").
ruolo(185,2268,"dim").
ruolo(185,2270,"georgie").
ruolo(185,2271,"pete").
ruolo(185,2272,"dr. brodsky").
ruolo(185,2273,"tramp").
ruolo(185,2274,"catlady").
ruolo(185,2276,"mum").
ruolo(185,2278,"mr. p. r. deltoid").
ruolo(185,2279,"prison chaplain").
ruolo(185,2280,"lodger").
ruolo(185,2290,"billy boy gang leader").
ruolo(185,2292,"psychiatrist").
ruolo(185,694,"dad").
ruolo(185,24342,"bodyguard").
ruolo(185,1231170,"prison governor").
ruolo(335,4958,"frank").
ruolo(335,4959,"jill mcbain").
ruolo(335,4765,"cheyenne").
ruolo(335,4960,"harmonica").
ruolo(335,4961,"morton railroad baron").
ruolo(335,4962,"sam").
ruolo(335,4963,"stony member of frank s gang").
ruolo(335,4965,"snaky member of frank s gang").
ruolo(335,4966,"sheriff").
ruolo(335,4968,"brett mcbain").
ruolo(335,4969,"barman").
ruolo(335,129314,"knuckles - member of frank s gang uncredited").
ruolo(335,49895,"cheyenne s lieutenant uncredited").
ruolo(335,21181,"member of frank s gang with black hat at auction uncredited").
ruolo(311,380,"david  noodles  aaronson").
ruolo(311,4512,"maximilian  max  bercovicz").
ruolo(311,4513,"deborah gelly").
ruolo(311,4517,"frankie minaldi").
ruolo(311,4521,"joe").
ruolo(311,4514,"carol").
ruolo(311,4515,"james conway o donnell").
ruolo(311,1004,"police chief vincent aiello").
ruolo(311,3174,"chicken joe").
ruolo(311,4516,"patrick  patsy  goldberg").
ruolo(311,4520,"philip  cockeye  stein").
ruolo(311,4761,"eve").
ruolo(311,4518," fat  moe gelly").
ruolo(311,151943,"crowning").
ruolo(311,50744,"woman in the puppet theatre").
ruolo(311,1373773,"beefy").
ruolo(311,6161,"young deborah").
ruolo(311,4750,"young noodles").
ruolo(311,4751,"young max   david bailey").
ruolo(311,4753,"young patsy").
ruolo(311,4773,"young  fat  moe gelly").
ruolo(311,4752,"young cockeye").
ruolo(311,4754,"dominic").
ruolo(311,785,"bugsy").
ruolo(311,17921,"al capuano").
ruolo(311,1373776,"fred capuano").
ruolo(311,61236,"johnny capuano").
ruolo(311,1373778,"irving gold").
ruolo(311,1373779,"friend of young deborah").
ruolo(311,1373775,"young deborah double").
ruolo(311,7071,"cemetery director uncredited").
ruolo(311,58535,"monkey").
ruolo(311,176592,"thug").
ruolo(311,27401,"man in puppet theathre").
ruolo(311,1555142,"trigger").
ruolo(311,47771,"officer whitey").
ruolo(311,16318,"mandy").
ruolo(311,1881583,"willie the ape").
ruolo(694,514,"jack torrance").
ruolo(694,10409,"wendy torrance").
ruolo(694,10410,"danny torrance").
ruolo(694,7077,"dick hallorann").
ruolo(694,10411,"stuart ullman").
ruolo(694,694,"delbert grady").
ruolo(694,592,"lloyd the bartender").
ruolo(694,10412,"doctor").
ruolo(694,16504,"larry durkin").
ruolo(694,72742,"bill watson").
ruolo(694,1413939,"young woman in bath").
ruolo(694,1413940,"old woman in bath").
ruolo(346,7450,"kikuchiyo").
ruolo(346,7453,"kambei shimada").
ruolo(346,20828,"gorobei katayama").
ruolo(346,20829,"kyuzo").
ruolo(346,7454,"heihachi hayashida").
ruolo(346,7457,"shichiroji").
ruolo(346,20830,"katsushiro okamoto").
ruolo(346,20831,"shino").
ruolo(346,554250,"rikichi s wife").
ruolo(346,96552,"manzô - father of shino").
ruolo(346,134272,"mosuke").
ruolo(346,34377,"yohei").
ruolo(346,17540,"rikichi").
ruolo(346,108028,"gisaku, the old man").
ruolo(346,106165,"kidnapper").
ruolo(346,228547,"coolie a").
ruolo(346,134294,"bun seller").
ruolo(346,134406,"grandfather of kidnapped girl").
ruolo(346,134020,"samurai").
ruolo(346,7455,"bandit scout").
ruolo(346,1173025,"blind player").
ruolo(346,552187,"samurai who kicks farmers").
ruolo(346,1478367,"gosaku").
ruolo(346,121190,"bandit chieftain").
ruolo(346,552174,"bandit second-in-command").
ruolo(346,1093065,"samurai with gun").
ruolo(346,1083308,"tea shop owner").
ruolo(346,125016,"weak ronin").
ruolo(346,108026,"coolie #2").
ruolo(346,1481118,"strong-looking samurai").
ruolo(346,552180,"buddhist priest").
ruolo(346,106161,"wife of gono family").
ruolo(346,7456,"woman farmer").
ruolo(346,1200247,"samurai").
ruolo(346,1481119,"bandit").
ruolo(346,552175,"samurai").
ruolo(346,552184,"samurai").
ruolo(346,1481120,"samurai").
ruolo(346,1478372,"bandit").
ruolo(346,1481121,"samurai").
ruolo(346,552166,"bandit who escapes").
ruolo(346,1481122,"bandit who escapes").
ruolo(346,552170,"bandit").
ruolo(346,1059891,"bandit").
ruolo(346,1478373,"bandit").
ruolo(346,1112075,"bandit").
ruolo(346,1481123,"bandit").
ruolo(346,1481124,"bandit").
ruolo(346,552181,"bandit").
ruolo(346,552167,"bandit").
ruolo(346,1185637,"bandit").
ruolo(346,1481125,"bandit").
ruolo(346,1481126,"bandit").
ruolo(346,235722,"bandit").
ruolo(346,551810,"farmer").
ruolo(346,1481127,"samurai").
ruolo(346,1481128,"samurai").
ruolo(346,1481129,"gisaku s son").
ruolo(346,1481130,"farmer").
ruolo(346,1481131,"farmer").
ruolo(346,1479150,"farmer").
ruolo(346,1201022,"farmer").
ruolo(346,1481132,"farmer").
ruolo(346,552176,"farmer").
ruolo(346,1481133,"farmer").
ruolo(346,1481134,"farmer").
ruolo(346,1167989,"farmer").
ruolo(346,1342305,"husband of gono family").
ruolo(346,1200144,"farmer").
ruolo(346,1481135,"farmer").
ruolo(346,1481137,"farmer").
ruolo(346,1478371,"farmer").
ruolo(346,1481140,"farmer").
ruolo(346,1481142,"farmer").
ruolo(346,1167993,"farmer in front of gono").
ruolo(346,1481144,"farmer").
ruolo(346,1481145,"farmer in front of gono").
ruolo(346,1481146,"farmer").
ruolo(346,1481147,"farmer").
ruolo(346,1117087,"farmer").
ruolo(346,1481148,"farmer").
ruolo(346,1481149,"coolie #3").
ruolo(346,1268056,"gisaku s daughter-in-law").
ruolo(346,136386,"woman farmer in front of gono").
ruolo(346,1481151,"woman farmer").
ruolo(346,1479144,"woman farmer").
ruolo(346,1481152,"woman farmer").
ruolo(346,1481154,"woman farmer").
ruolo(346,1481155,"farmer s wife").
ruolo(346,1198473,"farmer s wife").
ruolo(346,1200402,"farmer s wife").
ruolo(346,1268329,"farmer s wife").
ruolo(346,1481158,"farmer s wife").
ruolo(346,1481159,"farmer s wife").
ruolo(346,1481160,"farmer s wife").
ruolo(346,1481161,"woman farmer").
ruolo(346,1481162,"woman farmer").
ruolo(346,72540,"samurai wandering through town").
ruolo(346,70131,"samurai wandering through town").
ruolo(346,78496,"samurai wandering through town").
ruolo(346,931393,"farmer").
ruolo(10376,3129,"danny boodmann t.d. lemon nineteen hundred  1900 ").
ruolo(10376,3201,"max tooney").
ruolo(10376,59373,"das mädchen").
ruolo(10376,5502,"danny boodmann").
ruolo(10376,80503,"farmer").
ruolo(10376,15864,"jelly roll morton").
ruolo(10376,59373,"the girl").
ruolo(10376,386," pops , the shopkeeper").
ruolo(10376,104758,"harbor master").
ruolo(10376,163808,"mexican stoker").
ruolo(10376,558801,"neapolitan stoker").
ruolo(10376,1411985,"black stoker").
ruolo(10376,1411986,"chinese stoker").
ruolo(10376,126316,"irish stoker").
ruolo(10376,1411987,"polish stoker").
ruolo(10376,1356009,"boatswain").
ruolo(8487,2888,"capt. james west").
ruolo(8487,8945,"u.s. marshal artemus gordon").
ruolo(8487,11181,"dr. arliss loveless").
ruolo(8487,3136,"rita escobar").
ruolo(8487,588,"coleman").
ruolo(8487,15854,"general  bloodbath  mcgrath").
ruolo(8487,55254,"amazonia").
ruolo(8487,1475,"munitia").
ruolo(8487,55255,"miss lippenrieder").
ruolo(8487,31647,"belle").
ruolo(8487,39126,"miss east").
ruolo(8487,7853,"hudson").
ruolo(8487,53778,"mr. pinkerton").
ruolo(8487,168331,"dora look-alike").
ruolo(8487,71562,"cross-eyed reb").
ruolo(8487,69502,"reb #1").
ruolo(8487,1279744,"reb #2").
ruolo(8487,1100323,"other reb").
ruolo(8487,16163,"big reb").
ruolo(8487,14740,"french dignitary").
ruolo(8487,53403,"spanish dignitary").
ruolo(8487,11764,"british dignitary").
ruolo(8487,160375,"mexican dignitary").
ruolo(8487,104915,"white house aide").
ruolo(8487,48136,"dr. guillermo escobar").
ruolo(8487,137910,"george washington").
ruolo(8487,157021,"guard").
ruolo(8487,1610268,"prof. thaddeus morton").
ruolo(8487,1610271,"little girl uncredited").
ruolo(8914,11155,"carter blake").
ruolo(8914,9825,"dr. susan mccallister").
ruolo(8914,36424,"sherman  preacher  dudley").
ruolo(8914,4688,"tom scoggs scoggins").
ruolo(8914,2231,"russell franklin").
ruolo(8914,1640,"jim whitlock").
ruolo(8914,28744,"janice higgins").
ruolo(8914,106791,"brenda kerns").
ruolo(8914,139997,"boat captain").
ruolo(8914,141808,"helicopter pilot").
ruolo(8914,6321,"helicopter co-pilot").
ruolo(8914,67351,"helicopter winch operator").
ruolo(8914,61855,"boy #1").
ruolo(8914,60953,"girl #1").
ruolo(8914,141809,"boy #2").
ruolo(8914,141810,"girl #2").
ruolo(8914,141811,"friend of janice").
ruolo(8914,15831,"parrot noises voice").
ruolo(128,622,"ashitaka voice").
ruolo(128,20330,"san voice").
ruolo(128,20331,"eboshi-gozen voice").
ruolo(128,20332,"jiko-bô voice").
ruolo(128,20333,"kouroku voice").
ruolo(128,20334,"gonza voice").
ruolo(128,613,"toki voice").
ruolo(128,20335,"yama-inu voice").
ruolo(128,20336,"tatari-gami voice").
ruolo(128,20337,"usi-kai voice").
ruolo(128,20338,"moro-no-kimi voice").
ruolo(128,20339,"hii-sama voice").
ruolo(128,20340,"okkoto-nusi voice").
ruolo(128,20329,"woman in iron town voice").
ruolo(111,1158,"tony montana").
ruolo(111,1159,"manny ribera").
ruolo(111,1160,"elvira hancock").
ruolo(111,1161,"gina montana").
ruolo(111,1162,"frank lopez").
ruolo(111,1163,"mama montana").
ruolo(111,1164,"omar suarez").
ruolo(111,1165,"alejandro sosa").
ruolo(111,1166,"mel bernstein").
ruolo(111,1167,"chi chi").
ruolo(111,1168,"ernie").
ruolo(111,1169,"angel").
ruolo(111,1170,"nick the pig").
ruolo(111,1171,"hector the toad").
ruolo(111,1172,"jerry the banker").
ruolo(111,1173,"alberto the shadow").
ruolo(111,60196,"vic phillips").
ruolo(111,1216866,"sheffield").
ruolo(111,932922,"seidelbaum").
ruolo(111,32396,"m.c. at babylon club").
ruolo(111,88965,"immigration officer #3").
ruolo(111,78498,"immigration officer #2").
ruolo(111,1225345,"immigration officer #1").
ruolo(111,139931,"cuban refugee").
ruolo(111,152704,"ronnie echevierra").
ruolo(111,156019,"shooter").
ruolo(111,153686,"pedro quinn").
ruolo(111,48136,"shooter #1").
ruolo(111,1360853,"matos").
ruolo(111,103795,"rebenga").
ruolo(111,66585,"shooter #2").
ruolo(111,152888,"general strasser").
ruolo(111,152706,"male patron").
ruolo(111,107982,"car salesman").
ruolo(111,44050,"interviewer").
ruolo(111,160335,"bank spokesman").
ruolo(111,94893,"ariel bleyer").
ruolo(111,47463,"waldo").
ruolo(111,100260,"gaspar s bodyguard").
ruolo(111,12411,"kid #2").
ruolo(111,194092,"monsignor").
ruolo(111,54864,"the skull").
ruolo(111,16563,"helicopter pilot").
ruolo(111,45463,"woman at babylon club").
ruolo(111,160253,"woman at babylon club").
ruolo(111,52144,"woman at babylon club").
ruolo(111,1217468,"woman at babylon club").
ruolo(111,1178618,"woman at babylon club").
ruolo(111,538318,"woman at babylon club").
ruolo(111,1228412,"woman at babylon club").
ruolo(111,102634,"woman at babylon club").
ruolo(111,1378434,"ambassador s daughter uncredited").
ruolo(111,1466,"immigration officer voice uncredited").
ruolo(111,11901,"immigration officer voice uncredited").
ruolo(111,198980,"voice uncredited").
ruolo(111,2518,"charles goodson uncredited").
ruolo(111,8657,"extra uncredited").
ruolo(111,24969,"colombian hitman uncredited").
ruolo(111,47772,"sasso uncredited").
ruolo(111,11091,"boy lying on raft in pool uncredited").
ruolo(111,1228651,"boy at pool uncredited").
ruolo(111,163459,"dancer - lala uncredited").
ruolo(111,1614584,"mrs. gutierrez").
ruolo(869,13240,"leo davidson").
ruolo(869,3129,"general thade").
ruolo(869,1283,"ari").
ruolo(869,61981,"attar").
ruolo(869,10823,"karubi").
ruolo(869,13241,"daena").
ruolo(869,13242,"limbo").
ruolo(869,11398,"krull").
ruolo(869,13243,"senator nado").
ruolo(869,10017,"zaius").
ruolo(869,44824,"red soldier").
ruolo(869,13260,"a woman").
ruolo(869,1225896,"friend at leo s party").
ruolo(869,4452,"nova").
ruolo(869,33521,"birn").
ruolo(869,3493,"gunnar").
ruolo(869,8191,"commander karl vasich").
ruolo(869,1295,"gorilla kid   thade s niece").
ruolo(869,3952,"limbo s first handler   ape commander   2nd ape soldier").
ruolo(869,16178,"old ape #2").
ruolo(869,4030,"monkey grinder s pet").
ruolo(869,2076,"sandar").
ruolo(869,18917,"tival").
ruolo(120,109,"frodo baggins").
ruolo(120,1327,"gandalf the grey").
ruolo(120,112,"galadriel").
ruolo(120,114,"legolas").
ruolo(120,48,"boromir").
ruolo(120,110,"aragorn").
ruolo(120,1331,"elrond").
ruolo(120,882,"arwen evenstar").
ruolo(120,655,"gimli").
ruolo(120,113,"saruman").
ruolo(120,1329,"peregrin  pippin  took").
ruolo(120,1330,"meriadoc  merry  brandybuck").
ruolo(120,1328,"samwise  sam  gamgee").
ruolo(120,1333,"gollum").
ruolo(120,65,"bilbo baggins").
ruolo(120,1332,"haldir").
ruolo(120,1365,"lurtz").
ruolo(120,1366,"sauron").
ruolo(120,965278,"rose  rosie  cotton").
ruolo(120,20982,"celeborn").
ruolo(120,1367,"voice of the ring voice").
ruolo(120,585902,"everard proudfoot").
ruolo(120,1201328,"mrs. proudfoot").
ruolo(120,1590834,"gondorian archivist").
ruolo(120,1217771,"gil-galad").
ruolo(120,1590835,"witch-king").
ruolo(121,109,"frodo baggins").
ruolo(121,1327,"gandalf the white").
ruolo(121,110,"aragorn").
ruolo(121,882,"arwen evenstar").
ruolo(121,114,"legolas").
ruolo(121,655,"gimli   voice of treebeard").
ruolo(121,113,"saruman").
ruolo(121,1328,"sam gamgee").
ruolo(121,1329,"peregrin  pippin  took").
ruolo(121,1330,"meriadoc  merry  brandybuck").
ruolo(121,1333,"gollum").
ruolo(121,1331,"elrond").
ruolo(121,1332,"haldir").
ruolo(121,1369,"théoden").
ruolo(121,1370,"gríma wormtongue").
ruolo(121,502,"éowyn").
ruolo(121,1371,"faramir").
ruolo(121,1372,"éomer").
ruolo(121,112,"galadriel").
ruolo(121,941439,"freda").
ruolo(121,48,"boromir").
ruolo(121,173451,"sharku   snaga").
ruolo(121,1356914,"halteh").
ruolo(121,29094,"madril").
ruolo(121,76834,"mauhur").
ruolo(121,1381,"denethor").
ruolo(121,125938,"morwen").
ruolo(121,29082,"rohan soldier").
ruolo(121,156371,"bereg").
ruolo(121,1440014,"grishnakh").
ruolo(121,41784,"ugluk").
ruolo(121,1892757,"eothain").
ruolo(121,1214345,"gamling").
ruolo(121,76851,"háma").
ruolo(423,3490,"wladyslaw szpilman").
ruolo(423,3491,"captain wilm hosenfeld").
ruolo(423,6637,"father").
ruolo(423,6638,"mother").
ruolo(423,6639,"dorota").
ruolo(423,6640,"henryk").
ruolo(423,6641,"regina").
ruolo(423,6642,"halina").
ruolo(423,6643,"jurek").
ruolo(423,6644,"ss slapping father").
ruolo(423,6645,"mr. lipa").
ruolo(423,6646,"feather woman").
ruolo(423,1493073,"man waiting to cross").
ruolo(423,1502849,"street musician").
ruolo(423,1502850,"street musician").
ruolo(423,1502851,"street musician").
ruolo(423,1080994,"schutzpolizei").
ruolo(423,51651,"schutzpolizei").
ruolo(423,1446384,"itzak heller").
ruolo(423,1221808,"yehuda").
ruolo(423,19875,"majorek").
ruolo(423,1120198,"benek").
ruolo(423,1145,"customer with coins").
ruolo(423,6647,"ss officer").
ruolo(423,11193,"rubenstein").
ruolo(423,1138495,"woman with soup").
ruolo(423,48392,"schultz").
ruolo(423,1537160,"ss shooting the woman").
ruolo(423,107874,"woman shot in the head").
ruolo(423,1076083,"wailing woman").
ruolo(423,82312,"woman with child").
ruolo(423,47547,"dr. ehrlich").
ruolo(423,24722,"mr. grün").
ruolo(423,945055,"boy with sweets").
ruolo(423,1275339,"fellow worker").
ruolo(423,181029,"janina").
ruolo(423,21837,"ss making a speech").
ruolo(423,20523,"janina s husband").
ruolo(423,24524,"marek gbczyski").
ruolo(423,83264,"neighbour").
ruolo(423,52375,"dorota s husband").
ruolo(423,17290,"szalas").
ruolo(423,1533548,"dr. luczak").
ruolo(423,146434,"lednicki").
ruolo(423,1384028,"polish workman").
ruolo(423,1221617,"polish woman").
ruolo(423,49486,"polish officer").
ruolo(423,1138082,"schutzpolizei").
ruolo(423,107890,"prisoner").
ruolo(423,1571182,"girl").
ruolo(423,46245,"other part").
ruolo(423,1707197,"other part").
ruolo(423,1139637,"other part").
ruolo(423,1881588,"other part").
ruolo(423,127853,"other part").
ruolo(423,1730800,"other part").
ruolo(423,1258568,"other part").
ruolo(423,1881604,"other part").
ruolo(423,1881626,"other part").
ruolo(423,1083947,"other part").
ruolo(423,1175176,"other part").
ruolo(423,136798,"other part").
ruolo(423,1290107,"other part").
ruolo(423,97197,"other  part").
ruolo(423,1881651,"other part").
ruolo(423,1138890,"other part").
ruolo(423,1083418,"other part").
ruolo(423,236188,"man in ghetto uncredited").
ruolo(423,4621,"german soldier - rummage bags uncredited").
ruolo(423,95105,"young gestapo uncredited").
ruolo(423,1583956,"soldier uncredited").
ruolo(423,1355642,"piano buyer uncredited").
ruolo(423,1636697,"jew working on the bulding site uncredited").
ruolo(423,1062688,"ss officer uncredited").
ruolo(9480,880,"matt murdock   daredevil").
ruolo(9480,9278,"elektra natchios").
ruolo(9480,72466,"lester   bullseye").
ruolo(9480,61981,"wilson fisk   the kingpin").
ruolo(9480,15277,"franklin  foggy  nelson").
ruolo(9480,56153,"young matt").
ruolo(9480,9280,"karen page").
ruolo(9480,532,"ben urich").
ruolo(9480,2221,"wesley owen welch").
ruolo(9480,42200,"nick manolis").
ruolo(9480,18917,"nikolas natchios").
ruolo(9480,14325,"father everett").
ruolo(9480,85142,"jose quesada").
ruolo(9480,18181,"jack murdock").
ruolo(9480,120875,"abusive father").
ruolo(9480,1236548,"meat packer").
ruolo(9480,60205,"quesada attorney").
ruolo(9480,1425228,"ring announcer").
ruolo(9480,1416443,"angela sutton").
ruolo(9480,1502759,"judge #1").
ruolo(9480,1416444,"josie").
ruolo(9480,74836,"ny cop #1").
ruolo(9480,1502760,"kid #1").
ruolo(9480,1502761,"kid #2").
ruolo(9480,1502762,"kid #3").
ruolo(9480,1363425,"stavros").
ruolo(9480,58928,"old lady on plane").
ruolo(9480,1502763,"flight attendant").
ruolo(9480,1502764,"little boy").
ruolo(9480,1502765,"rookie cop").
ruolo(9480,124086,"drunken englishman").
ruolo(9480,87042,"sharpshooter").
ruolo(9480,19303,"jack kirby, forensic assistant").
ruolo(9480,1502766,"quesada s friend #1").
ruolo(9480,1502767,"quesada s friend #2").
ruolo(9480,989246,"boxing referee #1").
ruolo(9480,1502768,"boxing referee #2").
ruolo(9480,7624,"old man at crossing").
ruolo(9480,1502769,"quesada s friend #3").
ruolo(9480,1502770,"swat leader").
ruolo(9480,1502771,"policeman").
ruolo(9480,1502772,"waitress").
ruolo(9480,1502773,"greek priest").
ruolo(9480,58950,"fisk bodyguard").
ruolo(9480,1218240,"bully #1").
ruolo(9480,1502774,"bully #2").
ruolo(9480,1502775,"bully #3").
ruolo(9480,1502776,"stavros  friend").
ruolo(9480,2293,"man with pen in head").
ruolo(9480,1172972,"bodyguard uncredited").
ruolo(9480,1502777,"irish drunk uncredited").
ruolo(9480,970287,"man at the ball uncredited").
ruolo(9480,1208125,"gangster at bar uncredited").
ruolo(9480,966218,"bartender uncredited").
ruolo(9480,1502778,"boy at funeral uncredited").
ruolo(9480,1502779,"girl in pub   voice on answering machine uncredited").
ruolo(9480,1361149,"body guard uncredited").
ruolo(9480,1502780,"party member uncredited").
ruolo(9480,62596,"fallon s bodyguard uncredited").
ruolo(9480,74519,"pedestrian uncredited").
ruolo(9480,1502781,"dancer at party uncredited").
ruolo(9480,1502782,"ups man uncredited").
ruolo(9480,1502783,"model at ball uncredited").
ruolo(9480,1173,"fallon uncredited").
ruolo(9480,1502784,"dancer at party uncredited").
ruolo(9480,1502785,"girl on playground uncredited").
ruolo(9480,1502786,"dancer at party uncredited").
ruolo(9480,1016433,"bodyguard uncredited").
ruolo(9480,77824,"pool hall thug uncredited").
ruolo(9480,1077824,"photographer uncredited").
ruolo(9480,1393981,"woman at the ball uncredited").
ruolo(9480,1502787,"kate uncredited").
ruolo(9480,1502788,"tavern patron uncredited").
ruolo(9620,880,"jennings").
ruolo(9620,6383,"rethrick").
ruolo(9620,139,"rachel").
ruolo(9620,13242,"shorty").
ruolo(9620,10132,"wolfe").
ruolo(9620,3977,"agent dodge").
ruolo(9620,53820,"agent klein").
ruolo(9620,54246,"attorney general brown").
ruolo(9620,2208,"rita dunne").
ruolo(9620,29930,"maya-rachel").
ruolo(9620,172822,"stevens").
ruolo(9620,65808,"agent fuman").
ruolo(9620,12055,"agent mitchell").
ruolo(9620,540,"jude - guard").
ruolo(9620,59240,"jane").
ruolo(9620,37979,"betsy - salesgirl").
ruolo(9620,63547,"sara rethrick").
ruolo(9620,59185,"scientist").
ruolo(9620,77622,"scientist").
ruolo(9620,21858,"holographic woman").
ruolo(9620,1594647,"street kid").
ruolo(9620,1187262,"guard").
ruolo(9620,41746,"dekker").
ruolo(9620,1594648,"balloon boy").
ruolo(9620,139622,"plain clothes federal agent").
ruolo(9620,153847,"lottery host").
ruolo(9620,1182672,"lottery official").
ruolo(9620,1594652,"allcom helicopter pilot").
ruolo(9620,1379517,"fbi helicopter pilot").
ruolo(9620,43431,"suit").
ruolo(9620,172994,"suit").
ruolo(9620,4095,"suit").
ruolo(9620,1594653,"string quartet").
ruolo(9620,1594654,"string quartet").
ruolo(9620,1594655,"string quartet").
ruolo(9620,1594656,"string quartet").
ruolo(9620,77164,"husband").
ruolo(9620,75532,"wife").
ruolo(9620,70175,"young mother").
ruolo(9620,61164,"janitor").
ruolo(9620,172901,"wolfe goon").
ruolo(9620,1340010,"wolfe goon").
ruolo(9620,172809,"wolfe goon").
ruolo(9620,1366826,"wolfe goon").
ruolo(9620,1399538,"nursery customer").
ruolo(9620,1550819,"nursery customer").
ruolo(11459,11665,"will stronghold").
ruolo(11459,6856,"steve stronghold   the commander").
ruolo(11459,11164,"josie stronghold   jetstream").
ruolo(11459,31838,"layla williams").
ruolo(11459,56251,"ron wilson, bus driver").
ruolo(11459,69507,"ethan").
ruolo(11459,69508,"magenta").
ruolo(11459,17628,"gwen grayson   royal pain").
ruolo(11459,44935,"principal powers").
ruolo(11459,11357,"coach boomer").
ruolo(11459,54815,"warren peace").
ruolo(11459,9599,"nurse spex").
ruolo(11459,161932,"mr. grayson   stitches").
ruolo(11459,21290,"mr. boy").
ruolo(11459,58955,"mr. medulla").
ruolo(11459,78798,"mr. timmerman").
ruolo(11459,1568595,"penny").
ruolo(11459,1234262,"penny").
ruolo(11459,135786,"speed").
ruolo(11459,9657,"royal pain voice").
ruolo(9408,10959,"cody maverick").
ruolo(9408,1229,"big z   geek").
ruolo(9408,11664,"lani aliikai").
ruolo(9408,53926,"chicken joe").
ruolo(9408,4512,"reggie belafonte").
ruolo(9408,5727,"tank  the shredder  evans").
ruolo(9408,57551,"mikey abromowitz").
ruolo(9408,4334,"kelly").
ruolo(9408,963069,"spen announcer").
ruolo(9408,12905,"filmmaker").
ruolo(9408,15774,"filmmaker").
ruolo(9408,20405,"glen maverick").
ruolo(9408,108333,"rob").
ruolo(9408,68863,"edna maverick").
ruolo(9408,1114051,"arnold").
ruolo(8247,17244,"david rice").
ruolo(8247,478,"griffin").
ruolo(8247,2231,"roland").
ruolo(8247,52783,"millie harris").
ruolo(8247,12132,"william rice").
ruolo(8247,2882,"mary rice").
ruolo(8247,1285,"young millie").
ruolo(8247,41883,"young david").
ruolo(8247,10135,"young mark").
ruolo(8247,3999,"mr. bowker").
ruolo(8247,37917,"sophie").
ruolo(8247,115729,"mark kobold").
ruolo(8247,12932,"ellen").
ruolo(8247,1184028,"day bank manager").
ruolo(8247,27427,"italian desk cop").
ruolo(8247,81097,"english bartender").
ruolo(8247,17337,"english beauty").
ruolo(8247,43264,"fiona").
ruolo(8247,76528,"nypd detective").
ruolo(8247,1573505,"bank guard").
ruolo(8247,1573507,"police officer").
ruolo(155,3894,"bruce wayne   batman").
ruolo(155,3895,"alfred pennyworth").
ruolo(155,1810,"joker").
ruolo(155,6383,"harvey dent").
ruolo(155,64,"james gordon").
ruolo(155,1579,"rachel dawes").
ruolo(155,192,"lucius fox").
ruolo(155,53651,"ramirez").
ruolo(155,57597,"wuertz").
ruolo(155,101015,"lau").
ruolo(155,21316,"mayor").
ruolo(155,21315,"maroni").
ruolo(155,2037,"dr. jonathan crane   scarecrow").
ruolo(155,13939,"chechen").
ruolo(155,1904,"engel").
ruolo(155,87957,"stephens").
ruolo(155,128386,"loeb").
ruolo(155,34544,"reese").
ruolo(155,58692,"barbara gordon").
ruolo(155,18052,"james gordon").
ruolo(155,886,"bank manager").
ruolo(155,1052875,"rossi").
ruolo(155,1196130,"dopey").
ruolo(155,1334139,"happy").
ruolo(155,64856,"gambol").
ruolo(155,16477,"grumpy").
ruolo(155,1208967,"chuckles").
ruolo(155,1056090,"drug dealer").
ruolo(155,1870607,"drug buyer").
ruolo(155,1870608,"junkie").
ruolo(155,101014,"natascha").
ruolo(155,24595,"crime boss").
ruolo(155,20372,"lsi vp").
ruolo(155,1522073,"judge surrillo").
ruolo(155,1870609,"brian").
ruolo(155,1870610,"man no. 1").
ruolo(155,1840452,"man no. 2").
ruolo(155,1226696,"assistant da").
ruolo(155,1870611,"thug at party").
ruolo(155,853194,"gentleman at party").
ruolo(155,1526574,"male guest").
ruolo(155,1870612,"female guest").
ruolo(155,1424043,"judge freel").
ruolo(155,1220201,"maroni s mistress").
ruolo(155,147895,"gambol s bodyguard as chucky venn").
ruolo(155,1195758,"gambol s bodyguard as winston ellis").
ruolo(155,83854,"joker s thug").
ruolo(155,1870613,"reporter").
ruolo(155,1313093,"heckler").
ruolo(155,1678566,"cop heckler").
ruolo(155,176227,"acting commissioner").
ruolo(155,1870614,"officer at intersection").
ruolo(155,1870615,"convoy leader").
ruolo(155,1870616,"fat thug").
ruolo(155,1128854,"murphy").
ruolo(155,29617,"cop with fat thug").
ruolo(155,1781739,"medic").
ruolo(155,26669,"cop at 250 52nd st.").
ruolo(155,1631707,"nurse").
ruolo(155,143328,"polk").
ruolo(155,1464854,"berg").
ruolo(155,1870623,"cop at hospital").
ruolo(155,1870620,"bartender").
ruolo(155,1624910,"civilian").
ruolo(155,78047,"first mate").
ruolo(155,47525,"prison ferry pilot").
ruolo(155,1238461,"guard commander").
ruolo(155,1232399,"businessman").
ruolo(155,1661772,"mother").
ruolo(155,122345,"passenger").
ruolo(155,1215332,"passenger").
ruolo(155,209990,"passenger").
ruolo(155,139946,"passenger").
ruolo(155,1070855,"passenger").
ruolo(155,1674439,"swat sniper").
ruolo(155,1870625,"swat leader").
ruolo(155,141770,"prisoner on ferry").
ruolo(155,8396,"tattooed prisoner").
ruolo(155,1394354,"reporter #3").
ruolo(155,29616,"evans").
ruolo(155,1870627,"honor guard man").
ruolo(155,170230,"uniform cop").
ruolo(155,75076,"bounty hunter").
ruolo(155,971049,"bounty hunter").
ruolo(155,1870629,"fox s secretary").
ruolo(155,119414,"passenger ferry pilot").
ruolo(155,1870631,"guardsman").
ruolo(155,1655526,"warden").
ruolo(155,95716,"corrections officer").
ruolo(155,1122545,"prisoner").
ruolo(155,578699,"prisoner").
ruolo(155,126316,"prisoner").
ruolo(155,1132153,"prisoner").
ruolo(155,1599260,"hong kong detective").
ruolo(155,1870636,"honor guard leader").
ruolo(155,1870637,"gordon s daughter").
ruolo(155,1870638,"armored car swat").
ruolo(155,1161711,"waiter uncredited").
ruolo(155,580566,"bank patron uncredited").
ruolo(155,1128275,"party guest uncredited").
ruolo(155,1185594,"party guest with glass uncredited").
ruolo(155,1197335,"party guest uncredited").
ruolo(155,1552999,"lau henchman uncredited").
ruolo(155,1192165,"paramedic uncredited").
ruolo(155,1131169,"chechen gangster uncredited").
ruolo(155,580567,"press conference heckler uncredited").
ruolo(155,228305,"pedestrian uncredited").
ruolo(155,1392731,"ferry passenger uncredited").
ruolo(155,593182,"police officer uncredited").
ruolo(155,1086373,"prisoner uncredited").
ruolo(155,1207205,"immigrant ferry passenger uncredited").
ruolo(155,18070,"shotgun swat uncredited").
ruolo(155,580560,"parade police officer uncredited").
ruolo(155,505400,"maroni s henchman uncredited").
ruolo(155,1058964,"assistant d.a. uncredited").
ruolo(155,1261397,"police sgt. spellman   gotham bomb squad uncredited").
ruolo(155,1551776,"helicopter swat sniper uncredited").
ruolo(155,1111803,"ferry passenger uncredited").
ruolo(155,1360008,"officer uncredited").
ruolo(155,1426334,"joker s thug #2 uncredited").
ruolo(155,30450,"prisoner uncredited").
ruolo(155,1209046,"party guest uncredited").
ruolo(155,1058963,"angry hospital relative uncredited").
ruolo(155,98994,"evacuee uncredited").
ruolo(155,1108073,"high-ranking police official uncredited").
ruolo(155,1185600,"extra uncredited").
ruolo(155,1209051,"dept. of corrections resident uncredited").
ruolo(155,99223,"detective uncredited").
ruolo(155,79810,"police officer uncredited").
ruolo(155,204276,"chechen s bodyguard uncredited").
ruolo(155,1209055,"detective uncredited").
ruolo(155,1512023,"party guest uncredited").
ruolo(155,127005,"major crime unit detective uncredited").
ruolo(155,1380656,"party staff uncredited").
ruolo(8645,13240,"elliot moore").
ruolo(8645,11664,"alma moore").
ruolo(8645,5723,"julian").
ruolo(8645,35654,"josh").
ruolo(8645,52462,"mrs. jones").
ruolo(8645,18290,"jess").
ruolo(8645,55426,"jared").
ruolo(8645,1479,"nursery owner").
ruolo(8645,239271,"private auster").
ruolo(8645,2394,"principal").
ruolo(8645,171633,"nursery owner s wife").
ruolo(8645,11614,"joey").
ruolo(8645,2841,"woman reading on bench with hair pin").
ruolo(8645,210824,"woman reading on bench").
ruolo(8645,164494,"construction foreman").
ruolo(8645,1209900,"father in elliot s group").
ruolo(8645,127070,"arguing man in crowd").
ruolo(8645,100567,"woman on cell phone").
ruolo(8645,1564329,"train passenger uncredited").
ruolo(8645,1564332,"train passenger uncredited").
ruolo(8645,1343298,"businessman uncredited").
ruolo(8645,150212,"woman with hands over ears").
ruolo(13387,976,"frank martin").
ruolo(13387,7693,"inspector tarconi").
ruolo(13387,75036,"valentina vasilev").
ruolo(13387,17343,"johnson").
ruolo(13387,134410,"malcom manville").
ruolo(13387,134411,"leonid s aide").
ruolo(13387,134412,"flag").
ruolo(13387,25078,"ice").
ruolo(13387,134414,"mighty joe").
ruolo(13387,7816,"otto").
ruolo(13387,1332485,"assassin  mercedes").
ruolo(10313,1461,"lyn cassady").
ruolo(10313,3061,"bob wilton").
ruolo(10313,1229,"bill django").
ruolo(10313,1979,"larry hooper").
ruolo(10313,418,"todd nixon").
ruolo(10313,32747,"brigadier general dean hopgood").
ruolo(10313,94431,"mahmud daash").
ruolo(10313,17401,"gus lacey").
ruolo(10313,12797,"major general holtz").
ruolo(10313,17039,"scotty mercer").
ruolo(10313,27031,"tim kootz").
ruolo(10313,54679,"debora wilton").
ruolo(10313,43596,"lieutenant boone").
ruolo(10313,1504586,"dave").
ruolo(10313,159907,"ron").
ruolo(10313,1504587,"gus  mother").
ruolo(10313,1504588,"kuwait waiter").
ruolo(10313,1193258,"journalist #1").
ruolo(10313,204509,"journalist #2").
ruolo(10313,233298,"general brown").
ruolo(10313,116447,"kidnapper #1").
ruolo(10313,1504589,"kidnapper #2").
ruolo(10313,1219530,"iraqi driver").
ruolo(10313,1227523,"chris - viet nam pvt.").
ruolo(10313,1240490,"major general jack gillian").
ruolo(10313,1865786,"clifford hickox").
ruolo(10313,105786,"norm pendleton").
ruolo(10313,1865789,"major general pendleton").
ruolo(10313,202830,"bob s editor").
ruolo(10313,1225183,"technician").
ruolo(10313,1254364,"lyn s father").
ruolo(10313,56418,"lyn 12 years old").
ruolo(10313,1865795,"insurgent").
ruolo(10313,223395,"ben echmeyer").
ruolo(10313,87478,"cia agent").
ruolo(23827,90596,"katie").
ruolo(23827,90597,"micah").
ruolo(23827,90598,"the psychic").
ruolo(23827,967678,"amber").
ruolo(23827,967721,"diane").
ruolo(16866,18918,"capt. charles  chuck  baker voice").
ruolo(16866,57599,"skiff voice").
ruolo(16866,10860,"neera voice").
ruolo(16866,15033,"lem voice").
ruolo(16866,64,"general grawl voice").
ruolo(16866,8930,"professor kipple voice").
ruolo(16866,968218,"eckle voice").
ruolo(16866,235815,"glar voice").
ruolo(16866,82806,"soldier vesklin voice").
ruolo(16866,55466,"soldier vernkot voice").
ruolo(16866,1074722,"additional voice voice").
ruolo(16866,211412,"additional voice voice").
ruolo(16866,155530,"additional voice voice").
ruolo(16866,131083,"additional voice voice").
ruolo(16866,185065,"additional voice voice").
ruolo(16866,127153,"additional voice voice").
ruolo(16866,59865,"additional voice voice").
ruolo(16866,108399,"additional voice voice").
ruolo(23742,62,"jimmy monroe").
ruolo(23742,56903,"paul hodges").
ruolo(23742,116714,"raul").
ruolo(23742,57599,"dave").
ruolo(23742,49961,"ava").
ruolo(23742,11662,"roy").
ruolo(23742,7166,"hunsaker").
ruolo(23742,11702,"barry mangold").
ruolo(23742,57409,"gabriela").
ruolo(23742,80591,"debbie").
ruolo(23742,118043,"pam").
ruolo(23742,1460926,"juan").
ruolo(23742,104196,"captain romans").
ruolo(23742,8695,"poh boy").
ruolo(23742,205586,"julio").
ruolo(23742,577478,"russian lawyer s wife").
ruolo(23742,61110,"russian lawyer").
ruolo(23742,56910,"laura").
ruolo(23742,1056523,"kevin").
ruolo(23742,135855,"george").
ruolo(23742,21130,"eddie").
ruolo(23742,1567422,"hourly housekeeper").
ruolo(23742,112143,"manuel").
ruolo(23437,108916,"nancy holbrook").
ruolo(23437,17183,"freddy krueger").
ruolo(23437,59219,"quentin smith").
ruolo(23437,55775,"kris fowles").
ruolo(23437,34502,"dean russell").
ruolo(23437,34199,"jesse braun").
ruolo(23437,6574,"alan smith").
ruolo(23437,86310,"marge thompson").
ruolo(23437,36091,"jesse s father").
ruolo(23437,1360033,"nora fowles").
ruolo(23437,1637369,"little kris").
ruolo(23437,1637370,"creepy girl #1").
ruolo(23437,1637371,"creepy girl #2").
ruolo(23437,1637372,"creepy girl #3").
ruolo(23437,1637374,"history teacher").
ruolo(10196,88816,"aang").
ruolo(10196,61186,"katara").
ruolo(10196,84215,"sokka").
ruolo(10196,76788,"zuko").
ruolo(10196,17857,"uncle iroh").
ruolo(10196,20644,"commander zhao").
ruolo(10196,23680,"appa   momo").
ruolo(10196,11354,"avatar roku").
ruolo(10196,19729,"gran gran").
ruolo(10196,7248,"fire lord ozai").
ruolo(10196,559643,"princess yue").
ruolo(10196,162754,"master pakku").
ruolo(10196,53454,"monk gyatso").
ruolo(10196,73336,"azula").
ruolo(10196,9462,"old man in temple").
ruolo(10196,1317363,"zhao s assistant").
ruolo(10196,164102,"earthbending father").
ruolo(10196,1209900,"fire nation soldier").
ruolo(10196,1440178,"fire nation soldier").
ruolo(10196,1377246,"suki").
ruolo(10196,11614,"firebender at earth prison camp").
ruolo(27205,6193,"dom cobb").
ruolo(27205,24045,"arthur").
ruolo(27205,27578,"ariadne").
ruolo(27205,2524,"eames").
ruolo(27205,3899,"saito").
ruolo(27205,2037,"robert fischer").
ruolo(27205,8293,"mal").
ruolo(27205,3895,"miles").
ruolo(27205,95697,"yusuf").
ruolo(27205,13022,"browning").
ruolo(27205,4935,"maurice fischer").
ruolo(27205,526,"nash").
ruolo(27205,66441,"blonde").
ruolo(27205,173212,"japanese security guard").
ruolo(27205,967376,"phillipa 5 years").
ruolo(27205,973135,"phillipa 3 years").
ruolo(27205,1677266,"james 3 years").
ruolo(27205,56120,"saito s attendant").
ruolo(27205,2246,"elderly bald man").
ruolo(27205,1677267,"lawyer").
ruolo(27205,1334309,"flight attendant").
ruolo(27205,535,"cab driver").
ruolo(27205,72864,"thin man").
ruolo(27205,1677498,"bridge sub con").
ruolo(27205,13695,"bridge sub con").
ruolo(27205,133257,"bridge sub con").
ruolo(27205,1677507,"bridge sub con").
ruolo(27205,1536351,"bridge sub con").
ruolo(27205,203087,"lobby sub con").
ruolo(37430,117642,"conan").
ruolo(37430,32747,"khalar zym").
ruolo(37430,50347,"tamara").
ruolo(37430,2372,"corin").
ruolo(37430,16850,"marique").
ruolo(37430,60716,"ukafa").
ruolo(37430,557921,"young conan").
ruolo(37430,79885,"lucius").
ruolo(37430,43547,"artus").
ruolo(37430,73710,"fassir - high priest").
ruolo(37430,81346,"fialla").
ruolo(37430,5419,"ela-shan").
ruolo(37430,902,"remo").
ruolo(37430,1167321,"wild man").
ruolo(37430,24898,"akhun").
ruolo(37430,1189509,"cheren").
ruolo(37430,1732807,"donal").
ruolo(37430,22019,"city guard #1").
ruolo(37430,559371,"city guard #2").
ruolo(37430,559369,"lieutenant").
ruolo(37430,105688,"quarter master").
ruolo(37430,192,"narrator voice").
ruolo(37430,1812098,"young marique").
ruolo(37430,1535524,"slavegirl #1").
ruolo(37430,1812099,"slavegirl #2").
ruolo(37430,1812100,"xaltotun").
ruolo(37430,1812162,"sacrificial victim").
ruolo(37430,1264793,"acolyte priest").
ruolo(37430,1120883,"pict #1   horse warrior").
ruolo(37430,1779512,"pict #2").
ruolo(37430,1812165,"pict #3").
ruolo(37430,1108570,"pict #4").
ruolo(37430,1255958,"nun student #1").
ruolo(37430,85516,"nun student #2").
ruolo(37430,1812166,"nun").
ruolo(37430,1812167,"nun").
ruolo(37430,1614484,"nun").
ruolo(37430,105687,"nun").
ruolo(37430,1818122,"nun").
ruolo(37430,1818124,"nun").
ruolo(37430,1818126,"nun").
ruolo(37430,1818128,"nun").
ruolo(37430,105695,"cimmerian elder - uran").
ruolo(37430,1818131,"prison clerk").
ruolo(37430,1818132,"monk").
ruolo(37430,1818134,"monk").
ruolo(37430,1722811,"monk").
ruolo(37430,1818139,"monk").
ruolo(37430,1818140,"monk").
ruolo(37430,1114855,"maliva").
ruolo(37430,1820680,"young marique").
ruolo(37430,1820693,"den barman").
ruolo(37430,1820697,"pirate").
ruolo(37430,90113,"valeria").
ruolo(37430,1820702,"belly dancer").
ruolo(37430,1820706,"belly dancer").
ruolo(37430,141278,"mama").
ruolo(37430,1820709,"topless wench").
ruolo(37430,1820710,"topless wench").
ruolo(37430,1820711,"topless wench").
ruolo(37430,1820712,"topless wench").
ruolo(37430,1820713,"topless wench").
ruolo(37430,1820714,"topless wench").
ruolo(37430,1820715,"topless wench").
ruolo(37430,1516962,"the egg man").
ruolo(37430,559392,"topless wench").
ruolo(37430,226112,"rexor").
ruolo(37430,1820717,"archer").
ruolo(37430,1820718,"cimmerian boy").
ruolo(72571,90596,"katie").
ruolo(72571,118243,"kristi rey").
ruolo(72571,176748,"julie").
ruolo(72571,579064,"dennis").
ruolo(72571,995457,"young katie").
ruolo(72571,995458,"young kristi").
ruolo(72571,995459,"creepy lady").
ruolo(72571,206112,"randy rosen").
ruolo(72571,155037,"kid").
ruolo(72571,142402,"creepy lady").
ruolo(72571,171401,"grandma lois").
ruolo(77338,33161,"philippe").
ruolo(77338,78423,"driss").
ruolo(77338,219708,"magalie").
ruolo(77338,19370,"yvonne").
ruolo(77338,2411,"marcelle").
ruolo(77338,26107,"elisa").
ruolo(77338,581728,"adama").
ruolo(77338,581729,"albert").
ruolo(77338,333422,"chantal").
ruolo(77338,1411815,"fatou").
ruolo(77338,1411817,"mina").
ruolo(77338,1349054,"amie de philippe").
ruolo(77338,224148,"ami de philippe").
ruolo(77338,1069637,"bastien").
ruolo(77338,146212,"antoine").
ruolo(77338,1632523,"eléonore").
ruolo(77338,84430,"la drh société de courses").
ruolo(77338,999406,"galeriste").
ruolo(77338,1149324,"fred").
ruolo(77338,1632531,"nouvel auxiliaire").
ruolo(77338,1293458,"nouvel auxiliaire").
ruolo(77338,1632532,"candidat").
ruolo(77338,1179883,"candidat").
ruolo(77338,544669,"candidat").
ruolo(77338,1048793,"policier").
ruolo(77338,1171433,"policier").
ruolo(77338,1632533,"voisin mal garé").
ruolo(77338,1385391,"voisin mal garé").
ruolo(77338,1632535,"chanteur opéra").
ruolo(77338,1588451,"garagiste").
ruolo(77338,204675,"serveur des deux magots").
ruolo(77338,1686571,"lycéen").
ruolo(140420,8020,"george voice").
ruolo(140420,116315,"meg voice").
ruolo(140420,1112515,"boss voice").
ruolo(140420,1381547,"finster voice").
ruolo(81005,3292,"jack").
ruolo(81005,73357,"princess isabelle").
ruolo(81005,3061,"elmont").
ruolo(81005,2283,"roderick").
ruolo(81005,6972,"king brahmwell").
ruolo(81005,1665,"crawe").
ruolo(81005,1125,"wicke").
ruolo(81005,11184,"old hamm").
ruolo(81005,2440,"general fallon").
ruolo(81005,53916,"general entin").
ruolo(81005,202760,"fye").
ruolo(81005,27632,"fumm").
ruolo(81005,3072,"jack s dad").
ruolo(81005,590936,"horse merchant").
ruolo(81005,590937,"the kings foot soldier").
ruolo(81005,590938,"soothsayer").
ruolo(81005,590939,"jack s mum").
ruolo(81005,1714,"foe").
ruolo(81005,126042,"tour guide").
ruolo(81005,33310,"the queen").
ruolo(81005,138161,"badger").
ruolo(81005,8399,"uncle").
ruolo(81005,25135,"fee").
ruolo(81005,1231158,"monk").
ruolo(81005,1188778,"bald").
ruolo(81005,1026825,"old maid").
ruolo(81005,1356541,"blacksmith").
ruolo(81005,1664257,"panto erik the great").
ruolo(81005,234867,"panto monk").
ruolo(81005,1222025,"king s artiste").
ruolo(81005,31365,"general fallon s small head").
ruolo(81005,1243685,"small drunk").
ruolo(81005,6985,"fat drunk").
ruolo(81005,1518112,"cook giant").
ruolo(81005,536274,"sentry   bugler giant").
ruolo(81005,39687,"tongue giant").
ruolo(81005,1219242,"1st child").
ruolo(81005,1905674,"2nd child").
ruolo(81005,1279512,"little girl").
ruolo(81005,51579,"master of secrets").
ruolo(81005,938419,"panto giant 1").
ruolo(81005,1905687,"panto giant 2").
ruolo(81005,109165,"panto musician").
ruolo(81005,1399807,"jack s father").
ruolo(81005,1905690,"young jack").
ruolo(81005,1905692,"young isabelle").
ruolo(205596,71580,"alan turing").
ruolo(205596,116,"joan clarke").
ruolo(205596,1247,"hugh alexander").
ruolo(205596,139549,"detective robert nock").
ruolo(205596,85718,"john cairncross").
ruolo(205596,213394,"peter hilton").
ruolo(205596,4391,"commander denniston").
ruolo(205596,2983,"stewart menzies").
ruolo(205596,1362119,"jack good").
ruolo(205596,43034,"sergeant staehl").
ruolo(205596,27764,"superintendent smith").
ruolo(205596,1121975,"keith furman").
ruolo(205596,1379286,"charles richards").
ruolo(205596,1379277,"young alan turing").
ruolo(205596,1449329,"christopher morcom").
ruolo(205596,89822,"helen").
ruolo(205596,1379318,"sherborne student 1").
ruolo(205596,1379313,"sherborne student 2").
ruolo(205596,1379291,"sherborne student 3").
ruolo(205596,1330788,"joan s father").
ruolo(205596,1221046,"joan s mother").
ruolo(205596,176191,"teacher").
ruolo(205596,25680,"headmaster").
ruolo(205596,1679324,"mi6 agent").
ruolo(205596,16692,"military policeman").
ruolo(205596,1327860,"margaret").
ruolo(205596,1543407,"electrical assistant").
ruolo(205596,1379276,"crossword enthusiast").
ruolo(205596,1379279,"mi6 agent uncredited").
ruolo(205596,1374337,"woman in crowd uncredited").
ruolo(205596,1379283,"raf wren uncredited").
ruolo(205596,1379302,"dancer uncredited").
ruolo(205596,1379311,"ministry man uncredited").
ruolo(205596,1379314,"evacuee uncredited").
ruolo(205596,1374158,"wren uncredited").
ruolo(205596,1379287,"dancer uncredited").
ruolo(205596,1379278,"assistant wren uncredited").
ruolo(205596,1379293,"crossword man in pub uncredited").
ruolo(205596,1379305,"mi6 agent uncredited").
ruolo(205596,1379290,"joan clarke s friend uncredited").
ruolo(205596,1379281,"bletchley park agent uncredited").
ruolo(205596,1374338,"passerby uncredited").
ruolo(205596,1379285,"ww2 wren uncredited").
ruolo(205596,1379288,"military policeman 3 uncredited").
ruolo(205596,1379295,"military police uncredited").
ruolo(205596,1379304,"crossword enthusiast uncredited").
ruolo(205596,1379275,"wren uncredited").
ruolo(205596,1379319,"school boy uncredited").
ruolo(205596,1379282,"passerby uncredited").
ruolo(205596,1379315,"paperboy uncredited").
ruolo(205596,1379308,"evacuee uncredited").
ruolo(205596,1379280,"mi6 agent uncredited").
ruolo(205596,1674664,"nunn uncredited").
ruolo(205596,1379320,"mi6 agent uncredited").
ruolo(205596,1379292,"civilian uncredited").
ruolo(205596,1679332,"evacuee uncredited").
ruolo(205596,1295992,"bletchley park operative uncredited").
ruolo(205596,1379317,"joan clarke s friend uncredited").
ruolo(205596,1379312,"wren uncredited").
ruolo(205596,1379303,"technician uncredited").
ruolo(205596,1360008,"mi6 agent uncredited").
ruolo(205596,1379316,"evacuee uncredited").
ruolo(205596,1225115,"young officer uncredited").
ruolo(205596,1358943,"police sergeant white uncredited").
ruolo(205596,1379321,"wren uncredited").
ruolo(205596,1010922,"crossword man uncredited").
ruolo(205596,1379284,"first aid nurse uncredited").
ruolo(205596,1379301,"german pilot uncredited").
ruolo(68737,1229,"master gregory").
ruolo(68737,1231,"mother malkin").
ruolo(68737,25130,"tom ward").
ruolo(68737,227454,"alice deane").
ruolo(68737,239019,"billy bradley").
ruolo(68737,938,"radu").
ruolo(68737,11616,"mam ward").
ruolo(68737,43202,"bony lizzie").
ruolo(68737,58319,"urag").
ruolo(68737,155282,"rogue knight").
ruolo(68737,2250,"old guard").
ruolo(68737,1300745,"fisherman").
ruolo(68737,1392937,"member of mob").
ruolo(68737,27124,"prelate").
ruolo(68737,1328755,"leader soldier").
ruolo(68737,53720,"malcom ward").
ruolo(68737,1061054,"tomb robber").
ruolo(68737,1356538,"strix").
ruolo(68737,583052,"soldier").
ruolo(68737,1366510,"grave robber").
ruolo(68737,58902,"virahadra").
ruolo(68737,2277,"grave-robber").
ruolo(68737,1366661,"simon ward").
ruolo(68737,584543,"cate ward").
ruolo(68737,1392949,"little girl").
ruolo(68737,1368501,"innkeeper").
ruolo(68737,1392950,"young guard").
ruolo(68737,219303,"stray dog").
ruolo(68737,1392952,"jack ward").
ruolo(68737,1392953,"head counselor").
ruolo(68737,1392954,"priest s wife").
ruolo(68737,1259945,"mongolian").
ruolo(68737,1392956,"noblewoman").
ruolo(68737,1392957,"soldier").
ruolo(68737,61168,"timeless hag").
ruolo(277685,444211,"blaire lilly").
ruolo(277685,1385058,"mitch roussel").
ruolo(277685,155621,"jessica jess felton").
ruolo(277685,1011103,"adam sewell").
ruolo(277685,145131,"ken smith").
ruolo(277685,105844,"valerie val rommel").
ruolo(277685,1385057,"laura barns").
ruolo(277685,1385056,"dank jimmy").
ruolo(277685,1385054,"rando pauls").
ruolo(277685,1385055,"matt").
ruolo(277685,1491177,"chatroulette girl").
ruolo(287424,1100,"wade vogel").
ruolo(287424,17140,"maggie vogel").
ruolo(287424,20810,"caroline").
ruolo(287424,60881,"ray").
ruolo(287424,129868,"holt").
ruolo(287424,1485159,"bonnie").
ruolo(287424,204845,"dr. kaplan").
ruolo(287424,1415436,"trent").
ruolo(287424,1123886,"allie").
ruolo(287424,1465051,"bobby").
ruolo(287424,1797595,"molly").
ruolo(287424,41338,"security officer").
ruolo(287424,1133063,"woman in scrubs").
ruolo(287424,283807,"lauretta").
ruolo(287424,1269495,"doctor").
ruolo(287424,931104,"mason").
ruolo(287424,1411664,"nurse").
ruolo(287424,1797599,"nadine").
ruolo(287424,1797600,"holly").
ruolo(287424,483255,"barbara").
ruolo(287424,1317688,"candace").
ruolo(287424,205287,"hospital soldier").
ruolo(287424,1456719,"frightened woman").
ruolo(287424,1410428,"ken").
ruolo(287424,1096595,"soldier #1").
ruolo(287424,565498,"linda").
ruolo(264644,60073,"joy  ma  newsome").
ruolo(264644,1277188,"jack newsome").
ruolo(264644,11148,"nancy newsome").
ruolo(264644,144160,"old nick").
ruolo(264644,3905,"robert newsome").
ruolo(264644,64712,"leo").
ruolo(264644,1232769,"officer parker").
ruolo(264644,86237,"officer grabowski").
ruolo(264644,59214,"dr. mittal").
ruolo(264644,19957,"talk show host").
ruolo(264644,984711,"neighbor").
ruolo(264644,103284,"lawyer").
ruolo(264644,1260011,"neighborhood boy").
ruolo(264644,76514,"fbi agent").
ruolo(264644,1517741,"attending doctor").
ruolo(264644,201951,"news anchor").
ruolo(264644,1239345,"reporter #1").
ruolo(264644,1279082,"reporter #2").
ruolo(264644,1357824,"reporter #3").
ruolo(264644,43258,"doug").
ruolo(264644,1517744,"veteran").
ruolo(264644,88933,"clerk uncredited").
ruolo(264644,1517743,"tv crewman uncredited").
ruolo(264644,1510502,"diner patron uncredited").
ruolo(329833,7399,"derek zoolander").
ruolo(329833,887,"hansel").
ruolo(329833,23659,"mugatu").
ruolo(329833,955,"montana grosso").
ruolo(329833,41091,"alexanya atoz").
ruolo(329833,61110,"vip").
ruolo(329833,1180698,"don atari").
ruolo(329833,63,"katinka").
ruolo(329833,15286,"matilda jeffries").
ruolo(329833,15009,"evil dj").
ruolo(329833,203809,"todd").
ruolo(329833,1493218,"derek jr.").
ruolo(329833,1954,"").
ruolo(329833,1406450,"agent flippo").
ruolo(329833,982,"").
ruolo(329833,71580,"all").
ruolo(329833,1180696,"geoff mille").
ruolo(329833,26042,"maury ballstein").
ruolo(329833,81364," old and lame  show attendee").
ruolo(329833,4720,"").
ruolo(329833,150810,"himself").
ruolo(329833,1255247,"hot shepherdess").
ruolo(329833,212225,"kim kardashian").
ruolo(329833,226001,"latex bdsm").
ruolo(329833,77069,"lenny kravitz").
ruolo(329833,85138,"demi lovato").
ruolo(329833,2628,"").
ruolo(329833,111455,"").
ruolo(329833,6949,"chazz spencer").
ruolo(329833,85757,"").
ruolo(329833,77069,"").
ruolo(329833,89815,"").
ruolo(329833,56367,"").
ruolo(329833,550307,"").
ruolo(329833,533007,"").
ruolo(329833,216294," old and lame  show attendee").
ruolo(329833,930058,"").
ruolo(329833,77068,"").
ruolo(329833,1372421,"").
ruolo(329833,4038,"susan sarandon").
ruolo(329833,28846,"adam").
ruolo(329833,471898,"warden").
ruolo(329833,8261,"himself").
ruolo(329833,110014,"seductress").
ruolo(329833,43120,"don atari s posse").
ruolo(329833,1521445,"a$ap rocky").
ruolo(329833,1431087,"natalka").
ruolo(329833,590424," old and lame  show attendee").
ruolo(329833,1224964,"hairdresser").
ruolo(329833,1358636," old and lame  show dj").
ruolo(329833,1053305,"").
ruolo(329833,1397086,"eve").
ruolo(329833,1686427,"").
ruolo(329833,1572253,"").
ruolo(329833,166658,"").
ruolo(329833,1686428,"").
ruolo(329833,1220599,"").
ruolo(329833,118752,"").
ruolo(329833,1104733,"").
ruolo(329833,1395060,"").
ruolo(329833,141525,"").
ruolo(329833,43120,"").
ruolo(329833,26046,"mom tourist").
ruolo(329833,1578406,"girl tourist").
ruolo(329833,1548295,"police officer").
ruolo(329833,1758921,"4 year old derek jr.").
ruolo(329833,1758923,"nubian princess").
ruolo(329833,74540,"wise village man").
ruolo(329833,1254271,"maori warrior").
ruolo(329833,1758926,"sumo wrestler").
ruolo(329833,491911,"chimney sweep").
ruolo(329833,1758927,"hot milkmaid").
ruolo(329833,1758928,"elfin huntress").
ruolo(329833,1758930,"paparazzo").
ruolo(329833,81510,"paparazzo").
ruolo(329833,1758932,"don atari s posse").
ruolo(329833,1758933,"don atari s posse").
ruolo(329833,1758934,"don atari s posse").
ruolo(329833,1758935,"don atari s posse").
ruolo(329833,1758936,"don atari s posse").
ruolo(329833,1758937,"don atari s posse").
ruolo(329833,1758938,"don atari s posse").
ruolo(329833,1758939,"don atari s posse").
ruolo(329833,1758940,"don atari s posse").
ruolo(329833,1758941,"don atari s posse").
ruolo(329833,1758943," old and lame  show attendee").
ruolo(329833,1758945," old and lame  show attendee").
ruolo(329833,85757," old and lame  show attendee").
ruolo(329833,1758946," old and lame  show attendee").
ruolo(329833,1366924," old and lame show  attendee").
ruolo(329833,95022," old and lame  show attendee").
ruolo(329833,1498184," old and lame  show attendee").
ruolo(329833,142213," old and lame  show attendee").
ruolo(329833,1758958,"alexanya s bodyguard").
ruolo(329833,1758959,"alexanya s bodyguard").
ruolo(329833,1514083,"alexanya s publicist").
ruolo(329833,1758961,"fabrizio").
ruolo(329833,1758962,"sexy twin").
ruolo(329833,1758963,"sexy twin").
ruolo(329833,1758964,"mysterious snake woman").
ruolo(329833,110902,"hasidic man").
ruolo(329833,1758965,"circus strong man").
ruolo(329833,1142305,"babushka").
ruolo(329833,1758976,"former male model prison guard").
ruolo(329833,1758977,"former male model prison guard").
ruolo(329833,1758982,"fashionista").
ruolo(329833,1758990,"fashion designer").
ruolo(329833,1526122,"fashion media").
ruolo(329833,1204167,"gondolier").
ruolo(329833,1758992,"fashion photographer").
ruolo(329833,1634622,"fashionista").
ruolo(329833,1758994,"model").
ruolo(329833,1748085,"model").
ruolo(329833,172178,"british newscaster").
ruolo(329833,1689868,"waiter").
ruolo(329833,1759003,"priest at shop window").
ruolo(329833,1465304,"fashionista").
ruolo(329833,1759007,"fashion media").
ruolo(329833,1265868,"fashionista").
ruolo(329833,1457224,"fashion editor").
ruolo(329833,1759008,"fashion show attendee").
ruolo(329833,1680898,"gleek").
ruolo(329833,1759009,"fashion model").
ruolo(329833,1176558,"hipster salesperson").
ruolo(369557,1539216,"conor cosmo lawler").
ruolo(369557,86232,"raphina").
ruolo(369557,33394,"penny lawlor").
ruolo(369557,49735,"robert lawlor").
ruolo(369557,1007683,"brendan lawlor").
ruolo(369557,1198869,"ann lawlor").
ruolo(369557,1570231,"darren").
ruolo(369557,1539217,"eamon").
ruolo(369557,1570232,"ngig").
ruolo(369557,1570233,"larry").
ruolo(369557,1539215,"fifth former").
ruolo(369557,1570234,"garry").
ruolo(369557,1570235,"barry").
ruolo(369557,111837,"brother baxter").
ruolo(369557,1570236,"mrs. dunne").
ruolo(369557,1553696,"larry").
ruolo(369557,1570239,"surveyor").
ruolo(369557,163544,"eamon s mum").
ruolo(369557,58435,"barry s dad").
ruolo(369557,1608146,"jacinta").
ruolo(369557,1694939,"brother barnabas").
ruolo(369557,1694940,"mick mahon").
ruolo(369557,1544911,"evan").
ruolo(369557,1004707,"surveyor").
ruolo(403119,86132,"kate").
ruolo(403119,16855,"lisa").
ruolo(403119,76795,"javier").
ruolo(403119,130936,"louis").
ruolo(403119,1629275,"benjamin").
ruolo(403119,8654,"taylor").
ruolo(403119,1639308,"band leader").
ruolo(403119,1769594,"sammie").
ruolo(343611,500,"jack reacher").
ruolo(343611,71189,"susan turner").
ruolo(343611,83860,"espin").
ruolo(343611,1466613,"samantha").
ruolo(343611,1223163,"the hunter").
ruolo(343611,7497,"col. morgan").
ruolo(343611,990136,"local deputy").
ruolo(343611,1173099,"onlooker at diner").
ruolo(343611,1374151,"onlooker at diner").
ruolo(343611,20496,"sheriff").
ruolo(343611,1711523,"smuggled woman").
ruolo(343611,1542879,"smuggled woman").
ruolo(343611,1748192,"smuggled woman").
ruolo(343611,1485114,"sgt. leach").
ruolo(343611,149590,"colonel moorcroft").
ruolo(343611,565501,"prud homme´s wife").
ruolo(343611,1367847,"prudhomme").
ruolo(343611,62784,"parasource aide").
ruolo(343611,17343,"general harkness").
ruolo(334543,1717046,"young saroo").
ruolo(334543,76788,"saroo brierley").
ruolo(334543,108916,"lucy").
ruolo(334543,1371,"john brierley").
ruolo(334543,2227,"sue brierley").
ruolo(334543,1750435,"guddu").
ruolo(334543,1410834,"mantosh brierley").
ruolo(334543,1296866,"kamla munshi").
ruolo(334543,150220,"saroj sood").
ruolo(334543,87297,"noor").
ruolo(334543,1750436,"young mantosh").
ruolo(334543,85047,"rama").
ruolo(334543,1371541,"waiter").
ruolo(334543,1671080,"cafe man").
ruolo(334543,1750440,"amita").
ruolo(334543,979599,"prama").
ruolo(334543,1496153,"sami").
ruolo(334543,1606096,"annika").
ruolo(334543,1094512,"bharat").
ruolo(334543,1204264,"swarmina").
ruolo(334543,1515827,"cute bar maid").
ruolo(334543,110425,"luke").
ruolo(334543,1371536,"workmate #1").
ruolo(334543,1381668,"lucy s friend").
ruolo(334543,1606097,"lucy s friend").

%ruolo_crew(movieID, crewID ,job).
ruolo_crew(680,138,"director").
ruolo_crew(680,138,"screenplay").
ruolo_crew(680,8297,"screenplay").
ruolo_crew(680,2545,"producer").
ruolo_crew(680,518,"executive producer").
ruolo_crew(680,5381,"executive producer").
ruolo_crew(680,5382,"executive producer").
ruolo_crew(680,3115,"director of photography").
ruolo_crew(680,156,"editor").
ruolo_crew(680,11799,"casting").
ruolo_crew(680,5507,"casting").
ruolo_crew(680,5779,"production design").
ruolo_crew(680,11800,"art direction").
ruolo_crew(680,11801,"set decoration").
ruolo_crew(680,11802,"costume design").
ruolo_crew(680,1174010,"gaffer").
ruolo_crew(680,37334,"production manager").
ruolo_crew(680,12997,"co-executive producer").
ruolo_crew(680,1307,"co-executive producer").
ruolo_crew(680,59839,"co-executive producer").
ruolo_crew(680,6940,"music supervisor").
ruolo_crew(680,1530166,"music supervisor").
ruolo_crew(680,143893,"makeup artist").
ruolo_crew(680,1552002,"wigmaker").
ruolo_crew(680,1397881,"key hair stylist").
ruolo_crew(680,37333,"post production supervisor").
ruolo_crew(680,22054,"stunt coordinator").
ruolo_crew(680,230436,"adr & dubbing").
ruolo_crew(680,7902,"casting associate").
ruolo_crew(680,41655,"casting").
ruolo_crew(680,1547239,"costume supervisor").
ruolo_crew(680,46589,"assistant costume designer").
ruolo_crew(680,1380055,"set costumer").
ruolo_crew(680,3130,"thanks").
ruolo_crew(680,148455,"first assistant camera").
ruolo_crew(680,1440853,"assistant editor").
ruolo_crew(680,1584695,"electrician").
ruolo_crew(680,1564233,"color timer").
ruolo_crew(680,1545448,"music").
ruolo_crew(680,10630,"sound editor").
ruolo_crew(680,1608789,"location manager").
ruolo_crew(680,53898,"editorial staff").
ruolo_crew(680,1411258,"hairstylist").
ruolo_crew(680,118868,"art department coordinator").
ruolo_crew(680,1545701,"assistant art director").
ruolo_crew(680,1395016,"construction coordinator").
ruolo_crew(680,1549015,"construction foreman").
ruolo_crew(680,1877352,"lead painter").
ruolo_crew(680,960673,"leadman").
ruolo_crew(680,1542283,"location scout").
ruolo_crew(680,1895853,"painter").
ruolo_crew(680,61076,"set designer").
ruolo_crew(680,1399999,"camera operator").
ruolo_crew(680,1895856,"key grip").
ruolo_crew(680,1895857,"grip").
ruolo_crew(680,1395281,"steadicam operator").
ruolo_crew(680,1878556,"hair designer").
ruolo_crew(680,1895858,"set dressing artist").
ruolo_crew(680,1895859,"carpenter").
ruolo_crew(680,1877360,"craft service").
ruolo_crew(680,1895860,"driver").
ruolo_crew(680,1895861,"loader").
ruolo_crew(680,1280435,"makeup effects").
ruolo_crew(680,1877361,"post production assistant").
ruolo_crew(680,1410102,"property master").
ruolo_crew(680,1895863,"security").
ruolo_crew(680,1878556,"set production assistant").
ruolo_crew(680,1596321,"sound recordist").
ruolo_crew(680,1287672,"special effects coordinator").
ruolo_crew(680,1197438,"stand in").
ruolo_crew(680,1197438,"stunts").
ruolo_crew(680,1389625,"transportation coordinator").
ruolo_crew(680,1406792,"unit publicist").
ruolo_crew(680,1895865,"first assistant director").
ruolo_crew(680,58809,"script supervisor").
ruolo_crew(680,33685,"first assistant editor").
ruolo_crew(680,1895867,"best boy electric").
ruolo_crew(680,1718116,"rigging gaffer").
ruolo_crew(680,1895869,"rigging grip").
ruolo_crew(680,1895870,"production accountant").
ruolo_crew(680,1804966,"production coordinator").
ruolo_crew(680,1646284,"boom operator").
ruolo_crew(680,1433718,"assistant sound editor").
ruolo_crew(680,13165,"foley").
ruolo_crew(680,1562457,"music editor").
ruolo_crew(680,6828,"production sound mixer").
ruolo_crew(680,554887,"supervising sound editor").
ruolo_crew(274,117,"original music composer").
ruolo_crew(274,557,"costume design").
ruolo_crew(274,1530,"casting").
ruolo_crew(274,3104,"production sound mixer").
ruolo_crew(274,16294,"director").
ruolo_crew(274,16296,"producer").
ruolo_crew(274,16296,"assistant director").
ruolo_crew(274,16297,"producer").
ruolo_crew(274,16298,"producer").
ruolo_crew(274,16298,"unit production manager").
ruolo_crew(274,16300,"director of photography").
ruolo_crew(274,4869,"editor").
ruolo_crew(274,5339,"adr & dubbing").
ruolo_crew(274,20585,"set decoration").
ruolo_crew(274,9619,"sound designer").
ruolo_crew(274,9178,"production design").
ruolo_crew(274,17148,"storyboard").
ruolo_crew(274,12257,"art direction").
ruolo_crew(274,15431,"makeup effects").
ruolo_crew(274,15308,"music supervisor").
ruolo_crew(274,16786,"novel").
ruolo_crew(274,21718,"assistant art director").
ruolo_crew(274,27098,"executive producer").
ruolo_crew(274,32490,"hair designer").
ruolo_crew(274,54433,"thanks").
ruolo_crew(274,56387,"camera operator").
ruolo_crew(274,57862,"screenplay").
ruolo_crew(274,65209,"location scout").
ruolo_crew(274,92376,"foley").
ruolo_crew(274,92386,"dialogue editor").
ruolo_crew(274,69129,"stunts").
ruolo_crew(274,73842,"post production supervisor").
ruolo_crew(274,74787,"stunts").
ruolo_crew(274,82744,"production intern").
ruolo_crew(274,142156,"sound recordist").
ruolo_crew(274,142161,"stunt coordinator").
ruolo_crew(274,142165,"music editor").
ruolo_crew(274,142168,"transportation captain").
ruolo_crew(274,543384,"assistant sound editor").
ruolo_crew(274,983118,"steadicam operator").
ruolo_crew(274,1031697,"first assistant editor").
ruolo_crew(274,1308375,"foley").
ruolo_crew(274,1321372,"makeup effects").
ruolo_crew(274,1328148,"casting").
ruolo_crew(274,1333607,"costume supervisor").
ruolo_crew(274,1337469,"music").
ruolo_crew(274,1349468,"stunts").
ruolo_crew(274,1355956,"special effects").
ruolo_crew(274,1357070,"transportation coordinator").
ruolo_crew(274,1378068,"makeup effects").
ruolo_crew(274,1391591,"first assistant camera").
ruolo_crew(274,1395360,"property master").
ruolo_crew(274,1395368,"gaffer").
ruolo_crew(274,1400072,"sound re-recording mixer").
ruolo_crew(274,1415964,"adr & dubbing").
ruolo_crew(274,1458527,"makeup artist").
ruolo_crew(274,1474992,"associate producer").
ruolo_crew(274,1538430,"still photographer").
ruolo_crew(274,1544908,"foley").
ruolo_crew(274,1546806,"art department coordinator").
ruolo_crew(274,1549583,"assistant costume designer").
ruolo_crew(274,1550194,"best boy electric").
ruolo_crew(274,1550205,"costume supervisor").
ruolo_crew(274,1552181,"painter").
ruolo_crew(274,1552549,"color timer").
ruolo_crew(274,1554309,"electrician").
ruolo_crew(274,1674650,"key grip").
ruolo_crew(274,1782069,"construction coordinator").
ruolo_crew(274,1782070,"standby painter").
ruolo_crew(274,1782071,"grip").
ruolo_crew(274,1782072,"aerial camera").
ruolo_crew(274,1783214,"set dressing artist").
ruolo_crew(274,1783215,"craft service").
ruolo_crew(274,1783216,"post production assistant").
ruolo_crew(274,1783218,"scenic artist").
ruolo_crew(274,1783219,"set production assistant").
ruolo_crew(274,1783220,"transportation co-captain").
ruolo_crew(274,1783221,"unit publicist").
ruolo_crew(274,1783223,"executive in charge of production").
ruolo_crew(274,1783226,"location manager").
ruolo_crew(274,1783228,"boom operator").
ruolo_crew(274,1783230,"orchestrator").
ruolo_crew(274,1783233,"dolby consultant").
ruolo_crew(9894,7399,"director").
ruolo_crew(9894,60082,"screenplay").
ruolo_crew(9894,41039,"producer").
ruolo_crew(9894,50728,"producer").
ruolo_crew(9894,60083,"executive producer").
ruolo_crew(9894,1298,"executive producer").
ruolo_crew(9894,8859,"executive producer").
ruolo_crew(9894,59354,"producer").
ruolo_crew(9894,56988,"director of photography").
ruolo_crew(9894,9647,"editor").
ruolo_crew(9894,9039,"music").
ruolo_crew(238,1776,"screenplay").
ruolo_crew(238,1776,"director").
ruolo_crew(238,2870,"associate producer").
ruolo_crew(238,2871,"casting").
ruolo_crew(238,2875,"production design").
ruolo_crew(238,457,"producer").
ruolo_crew(238,949,"casting").
ruolo_crew(238,3083,"screenplay").
ruolo_crew(238,3083,"novel").
ruolo_crew(238,3097,"director of photography").
ruolo_crew(238,3098,"original music composer").
ruolo_crew(238,3099,"editor").
ruolo_crew(238,3100,"editor").
ruolo_crew(238,3101,"casting").
ruolo_crew(238,3103,"sound re-recording mixer").
ruolo_crew(238,3104,"sound").
ruolo_crew(238,3105,"sound re-recording mixer").
ruolo_crew(238,3106,"music editor").
ruolo_crew(238,6099,"production manager").
ruolo_crew(238,6851,"costume design").
ruolo_crew(238,16194,"hairstylist").
ruolo_crew(238,10546,"assistant director").
ruolo_crew(238,11789,"unit production manager").
ruolo_crew(238,12288,"executive producer").
ruolo_crew(238,14059,"special effects").
ruolo_crew(238,29654,"makeup artist").
ruolo_crew(238,30580,"set decoration").
ruolo_crew(238,81519,"art direction").
ruolo_crew(238,81532,"costume supervisor").
ruolo_crew(238,81533,"costume design").
ruolo_crew(238,51302,"stunts").
ruolo_crew(238,96912,"special effects").
ruolo_crew(238,718968,"assistant director").
ruolo_crew(238,1318092,"special effects supervisor").
ruolo_crew(238,1433439,"stunt coordinator").
ruolo_crew(238,1518601,"makeup artist").
ruolo_crew(238,1546904,"grip").
ruolo_crew(238,1547035,"casting").
ruolo_crew(238,1614958,"stunts").
ruolo_crew(238,1625346,"production manager").
ruolo_crew(238,1625347,"assistant director").
ruolo_crew(238,1789636,"musician").
ruolo_crew(426,2636,"director").
ruolo_crew(426,2636,"producer").
ruolo_crew(426,5728,"producer").
ruolo_crew(426,1045,"original music composer").
ruolo_crew(426,2654,"director of photography").
ruolo_crew(426,2655,"editor").
ruolo_crew(426,369,"art direction").
ruolo_crew(426,5188,"art direction").
ruolo_crew(426,5735,"screenplay").
ruolo_crew(426,5736,"screenplay").
ruolo_crew(426,4350,"costume design").
ruolo_crew(426,1834770,"other").
ruolo_crew(426,7687,"set decoration").
ruolo_crew(426,5733,"novel").
ruolo_crew(426,5734,"novel").
ruolo_crew(426,1733585,"other").
ruolo_crew(426,100762,"special effects").
ruolo_crew(426,1027339,"special effects").
ruolo_crew(426,111987,"special effects").
ruolo_crew(426,1332196,"set decoration").
ruolo_crew(426,19460,"title designer").
ruolo_crew(426,50581,"assistant director").
ruolo_crew(426,7689,"makeup supervisor").
ruolo_crew(426,50580,"hair supervisor").
ruolo_crew(426,9107,"sound recordist").
ruolo_crew(426,1500450,"sound recordist").
ruolo_crew(426,39055,"conductor").
ruolo_crew(426,2653,"associate producer").
ruolo_crew(567,2636,"director").
ruolo_crew(567,2636,"producer").
ruolo_crew(567,2653,"second unit").
ruolo_crew(567,2654,"director of photography").
ruolo_crew(567,2655,"editor").
ruolo_crew(567,8619,"original music composer").
ruolo_crew(567,4350,"costume design").
ruolo_crew(567,5181,"screenplay").
ruolo_crew(567,5187,"art direction").
ruolo_crew(567,5188,"art direction").
ruolo_crew(567,5728,"producer").
ruolo_crew(567,7687,"set decoration").
ruolo_crew(567,7688,"set decoration").
ruolo_crew(567,7689,"makeup artist").
ruolo_crew(567,7690,"unit production manager").
ruolo_crew(567,7748,"author").
ruolo_crew(975,240,"director").
ruolo_crew(975,14554,"novel").
ruolo_crew(975,240,"screenplay").
ruolo_crew(975,240,"producer").
ruolo_crew(975,10769,"screenplay").
ruolo_crew(975,3335,"screenplay").
ruolo_crew(975,2090,"producer").
ruolo_crew(975,3349,"producer").
ruolo_crew(975,3350,"original music composer").
ruolo_crew(975,14555,"director of photography").
ruolo_crew(975,14556,"editor").
ruolo_crew(975,14557,"art direction").
ruolo_crew(975,11926,"costume design").
ruolo_crew(975,14559,"makeup artist").
ruolo_crew(975,14561,"special effects").
ruolo_crew(975,14560,"sound designer").
ruolo_crew(975,1410819,"production manager").
ruolo_crew(975,35674,"unit manager").
ruolo_crew(975,1317887,"assistant director").
ruolo_crew(975,1457185,"assistant director").
ruolo_crew(975,1043428,"sound re-recording mixer").
ruolo_crew(975,40570,"camera operator").
ruolo_crew(975,1566070,"still photographer").
ruolo_crew(975,240,"additional photography").
ruolo_crew(975,1566072,"script").
ruolo_crew(429,4385,"director").
ruolo_crew(429,5820,"producer").
ruolo_crew(429,1259,"original music composer").
ruolo_crew(429,2361,"director of photography").
ruolo_crew(429,5821,"editor").
ruolo_crew(429,4670,"editor").
ruolo_crew(429,4655,"costume design").
ruolo_crew(429,5810,"screenplay").
ruolo_crew(429,4385,"screenplay").
ruolo_crew(429,5811,"screenplay").
ruolo_crew(429,5812,"screenplay").
ruolo_crew(429,5810,"story").
ruolo_crew(429,4385,"story").
ruolo_crew(429,1458526,"makeup artist").
ruolo_crew(429,1035044,"assistant art director").
ruolo_crew(429,4655,"production design").
ruolo_crew(429,233354,"second unit").
ruolo_crew(429,4985,"special effects").
ruolo_crew(429,589876,"stunts").
ruolo_crew(429,4659,"special effects").
ruolo_crew(429,1090587,"production supervisor").
ruolo_crew(429,97634,"production manager").
ruolo_crew(429,2870,"production manager").
ruolo_crew(429,1542052,"assistant director").
ruolo_crew(429,4610,"stunts").
ruolo_crew(429,4661,"stunts").
ruolo_crew(429,21181,"stunts").
ruolo_crew(429,66641,"camera operator").
ruolo_crew(429,53196,"first assistant camera").
ruolo_crew(429,5819,"still photographer").
ruolo_crew(429,5555,"additional dialogue").
ruolo_crew(429,1633506,"color timer").
ruolo_crew(429,45670,"music director").
ruolo_crew(429,5555,"writer").
ruolo_crew(429,46418,"writer").
ruolo_crew(185,240,"director").
ruolo_crew(185,240,"screenplay").
ruolo_crew(185,240,"producer").
ruolo_crew(185,2284,"original music composer").
ruolo_crew(185,2286,"director of photography").
ruolo_crew(185,2288,"casting").
ruolo_crew(185,568911,"production design").
ruolo_crew(185,2262,"novel").
ruolo_crew(185,14896,"executive producer").
ruolo_crew(185,976789,"executive producer").
ruolo_crew(185,8424,"editor").
ruolo_crew(185,1581363,"sound designer").
ruolo_crew(185,5671,"costume design").
ruolo_crew(335,4385,"director").
ruolo_crew(335,1259,"original music composer").
ruolo_crew(335,2361,"director of photography").
ruolo_crew(335,4670,"editor").
ruolo_crew(335,4655,"production design").
ruolo_crew(335,4984,"costume design").
ruolo_crew(335,4655,"costume design").
ruolo_crew(335,4985,"special effects").
ruolo_crew(335,4610,"stunts").
ruolo_crew(335,4954,"executive producer").
ruolo_crew(335,4986,"producer").
ruolo_crew(335,4955,"story").
ruolo_crew(335,4956,"story").
ruolo_crew(335,4385,"story").
ruolo_crew(335,4385,"screenplay").
ruolo_crew(335,5555,"screenplay").
ruolo_crew(311,376,"producer").
ruolo_crew(311,1259,"original music composer").
ruolo_crew(311,1304,"costume design").
ruolo_crew(311,3662,"casting").
ruolo_crew(311,4385,"screenplay").
ruolo_crew(311,4385,"director").
ruolo_crew(311,4655,"production design").
ruolo_crew(311,4656,"special effects").
ruolo_crew(311,4657,"special effects").
ruolo_crew(311,4658,"special effects").
ruolo_crew(311,4659,"special effects").
ruolo_crew(311,4660,"special effects").
ruolo_crew(311,4661,"stunts").
ruolo_crew(311,4668,"screenplay").
ruolo_crew(311,4669,"executive producer").
ruolo_crew(311,4670,"editor").
ruolo_crew(311,4671,"editor").
ruolo_crew(311,4673,"casting").
ruolo_crew(311,4674,"director of photography").
ruolo_crew(311,4675,"director of photography").
ruolo_crew(311,4676,"camera operator").
ruolo_crew(311,4677,"lighting technician").
ruolo_crew(311,4678,"sound designer").
ruolo_crew(311,4667,"screenplay").
ruolo_crew(311,32048,"screenplay").
ruolo_crew(311,50818,"screenplay").
ruolo_crew(311,69973,"screenplay").
ruolo_crew(311,138247,"additional dialogue").
ruolo_crew(311,234556,"screenplay").
ruolo_crew(311,1344882,"novel").
ruolo_crew(694,240,"director").
ruolo_crew(694,240,"screenplay").
ruolo_crew(694,3027,"novel").
ruolo_crew(694,10404,"screenplay").
ruolo_crew(694,240,"producer").
ruolo_crew(694,5016,"executive producer").
ruolo_crew(694,2284,"original music composer").
ruolo_crew(694,2285,"original music composer").
ruolo_crew(694,2286,"director of photography").
ruolo_crew(694,244,"editor").
ruolo_crew(694,2288,"casting").
ruolo_crew(694,5022,"production design").
ruolo_crew(694,5021,"art direction").
ruolo_crew(694,5671,"costume design").
ruolo_crew(694,10405,"makeup artist").
ruolo_crew(694,10407,"makeup artist").
ruolo_crew(694,10408,"production manager").
ruolo_crew(346,5026,"director").
ruolo_crew(346,7449,"screenplay").
ruolo_crew(346,20827,"screenplay").
ruolo_crew(346,5026,"screenplay").
ruolo_crew(346,20832,"producer").
ruolo_crew(346,7460,"original music composer").
ruolo_crew(346,34380,"director of photography").
ruolo_crew(346,5026,"editor").
ruolo_crew(346,1513913,"production design").
ruolo_crew(346,1069167,"assistant director").
ruolo_crew(346,585115,"assistant director").
ruolo_crew(346,564864,"assistant director").
ruolo_crew(346,33132,"assistant art director").
ruolo_crew(346,1534577,"sound recordist").
ruolo_crew(346,1530334,"lighting technician").
ruolo_crew(346,70129,"first assistant camera").
ruolo_crew(346,1530320,"production office assistant").
ruolo_crew(346,143707,"script supervisor").
ruolo_crew(346,18609,"music").
ruolo_crew(346,1640545,"production supervisor").
ruolo_crew(346,1640546,"sound effects editor").
ruolo_crew(10376,65314,"director").
ruolo_crew(10376,65315,"screenplay").
ruolo_crew(10376,65314,"screenplay").
ruolo_crew(10376,1259,"music").
ruolo_crew(8487,1919,"director of photography").
ruolo_crew(8487,3769,"director of photography").
ruolo_crew(8487,3805,"producer").
ruolo_crew(8487,5174,"director").
ruolo_crew(8487,5174,"producer").
ruolo_crew(8487,7182,"original music composer").
ruolo_crew(8487,9615,"editor").
ruolo_crew(8487,12100,"screenplay").
ruolo_crew(8487,12101,"screenplay").
ruolo_crew(8487,26475,"screenplay").
ruolo_crew(8487,26479,"screenplay").
ruolo_crew(8487,1669267,"stunts").
ruolo_crew(8914,16938,"director").
ruolo_crew(8914,56257,"screenplay").
ruolo_crew(8914,56258,"screenplay").
ruolo_crew(8914,56260,"screenplay").
ruolo_crew(8914,5575,"producer").
ruolo_crew(8914,1296,"executive producer").
ruolo_crew(8914,6870,"executive producer").
ruolo_crew(8914,894,"original music composer").
ruolo_crew(8914,21351,"editor").
ruolo_crew(8914,2533,"editor").
ruolo_crew(8914,7715,"editor").
ruolo_crew(8914,58192,"director of photography").
ruolo_crew(8914,23653,"casting").
ruolo_crew(8914,40471,"costume design").
ruolo_crew(8914,47052,"producer").
ruolo_crew(8914,590075,"production design").
ruolo_crew(8914,6877,"production design").
ruolo_crew(8914,23867,"art direction").
ruolo_crew(8914,961111,"art direction").
ruolo_crew(8914,28862,"set decoration").
ruolo_crew(8914,1206905,"costume supervisor").
ruolo_crew(8914,1421665,"set costumer").
ruolo_crew(8914,32487,"hairstylist").
ruolo_crew(8914,3995,"makeup department head").
ruolo_crew(8914,102343,"makeup artist").
ruolo_crew(8914,8531,"production supervisor").
ruolo_crew(8914,1421666,"art department coordinator").
ruolo_crew(8914,18989,"assistant art director").
ruolo_crew(8914,1337123,"assistant art director").
ruolo_crew(8914,1421667,"assistant art director").
ruolo_crew(8914,46083,"assistant art director").
ruolo_crew(8914,1377214,"construction coordinator").
ruolo_crew(8914,1378219,"property master").
ruolo_crew(8914,1355526,"leadman").
ruolo_crew(8914,1389585,"set designer").
ruolo_crew(8914,1421668,"set designer").
ruolo_crew(8914,92359,"set designer").
ruolo_crew(8914,1400849,"property master").
ruolo_crew(8914,1400812,"adr & dubbing").
ruolo_crew(8914,1376818,"foley").
ruolo_crew(8914,9439,"foley").
ruolo_crew(8914,1392129,"dialogue editor").
ruolo_crew(8914,1392127,"dialogue editor").
ruolo_crew(8914,1421670,"supervising sound editor").
ruolo_crew(8914,1392125,"supervising sound editor").
ruolo_crew(8914,1409271,"sound effects editor").
ruolo_crew(8914,1392130,"sound effects editor").
ruolo_crew(8914,1392134,"sound effects editor").
ruolo_crew(8914,1342626,"sound re-recording mixer").
ruolo_crew(8914,1407681,"sound recordist").
ruolo_crew(8914,60219,"visual effects editor").
ruolo_crew(8914,1405236,"visual effects producer").
ruolo_crew(8914,6063,"visual effects producer").
ruolo_crew(8914,1421671,"visual effects editor").
ruolo_crew(8914,1421672,"visual effects producer").
ruolo_crew(8914,1421673,"visual effects editor").
ruolo_crew(8914,1127957,"visual effects editor").
ruolo_crew(8914,1409750,"visual effects editor").
ruolo_crew(8914,1421677,"visual effects producer").
ruolo_crew(8914,1421678,"cg supervisor").
ruolo_crew(8914,1399636,"visual effects supervisor").
ruolo_crew(8914,16739,"visual effects supervisor").
ruolo_crew(8914,1421679,"visual effects supervisor").
ruolo_crew(8914,16601,"visual effects supervisor").
ruolo_crew(8914,1406110,"visual effects supervisor").
ruolo_crew(8914,1421680,"cg supervisor").
ruolo_crew(8914,141483,"visual effects supervisor").
ruolo_crew(8914,1421681,"animation").
ruolo_crew(8914,1421682,"animation").
ruolo_crew(8914,1421683,"animation").
ruolo_crew(8914,1421684,"animation supervisor").
ruolo_crew(8914,1421685,"cgi supervisor").
ruolo_crew(8914,14771,"stunt coordinator").
ruolo_crew(8914,57432,"second unit cinematographer").
ruolo_crew(8914,1273377,"camera operator").
ruolo_crew(8914,1401593,"camera operator").
ruolo_crew(8914,40546,"camera operator").
ruolo_crew(8914,1421686,"camera operator").
ruolo_crew(8914,1421687,"camera operator").
ruolo_crew(8914,74989,"steadicam operator").
ruolo_crew(8914,1398972,"underwater camera").
ruolo_crew(8914,62085,"additional camera").
ruolo_crew(8914,1377133,"still photographer").
ruolo_crew(8914,1388879,"music editor").
ruolo_crew(8914,6883,"music editor").
ruolo_crew(8914,1377235,"transportation coordinator").
ruolo_crew(8914,1387544,"script supervisor").
ruolo_crew(8914,1401273,"unit publicist").
ruolo_crew(8914,1392925,"script supervisor").
ruolo_crew(8914,1234428,"associate producer").
ruolo_crew(8914,1474777,"producer").
ruolo_crew(8914,74768,"associate producer").
ruolo_crew(8914,47053,"producer").
ruolo_crew(8914,1154553,"executive producer").
ruolo_crew(8914,65839,"co-producer").
ruolo_crew(8914,13434,"supervising art director").
ruolo_crew(8914,21070,"supervising art director").
ruolo_crew(8914,1458273,"construction foreman").
ruolo_crew(8914,1684304,"production illustrator").
ruolo_crew(8914,1434274,"sculptor").
ruolo_crew(8914,1619076,"standby painter").
ruolo_crew(8914,1768099,"first assistant camera").
ruolo_crew(8914,1578170,"grip").
ruolo_crew(8914,1685460,"aerial coordinator").
ruolo_crew(8914,1777221,"assistant costume designer").
ruolo_crew(8914,1411166,"key hair stylist").
ruolo_crew(8914,1311616,"prosthetic makeup artist").
ruolo_crew(8914,1777227,"set dressing artist").
ruolo_crew(8914,1777235,"additional music").
ruolo_crew(8914,1335048,"digital effects supervisor").
ruolo_crew(8914,1648065,"driver").
ruolo_crew(8914,1130137,"post production supervisor").
ruolo_crew(8914,1102139,"production office assistant").
ruolo_crew(8914,1777237,"projection").
ruolo_crew(8914,1777238,"set medic").
ruolo_crew(8914,1777239,"set production assistant").
ruolo_crew(8914,1760138,"special effects coordinator").
ruolo_crew(8914,1691207,"stunts").
ruolo_crew(8914,1777240,"transportation captain").
ruolo_crew(8914,6866,"unit production manager").
ruolo_crew(8914,9558,"utility stunts").
ruolo_crew(8914,1777241,"video assist operator").
ruolo_crew(8914,74768,"assistant director").
ruolo_crew(8914,1429549,"color timer").
ruolo_crew(8914,1741742,"best boy electric").
ruolo_crew(8914,1575753,"electrician").
ruolo_crew(8914,1778004,"gaffer").
ruolo_crew(8914,1778006,"lighting technician").
ruolo_crew(8914,1547129,"rigging gaffer").
ruolo_crew(8914,1559580,"rigging grip").
ruolo_crew(8914,4772,"casting associate").
ruolo_crew(8914,1564997,"executive in charge of production").
ruolo_crew(8914,1377241,"location manager").
ruolo_crew(8914,1578189,"production accountant").
ruolo_crew(8914,1526455,"production manager").
ruolo_crew(8914,1767302,"production office coordinator").
ruolo_crew(8914,1685017,"boom operator").
ruolo_crew(8914,1778009,"assistant sound editor").
ruolo_crew(8914,1551666,"orchestrator").
ruolo_crew(8914,1551870,"production sound mixer").
ruolo_crew(8914,1778010,"digital compositors").
ruolo_crew(8914,1513639,"special effects supervisor").
ruolo_crew(8914,1440848,"visual effects").
ruolo_crew(8914,1724282,"visual effects coordinator").
ruolo_crew(8914,1778013,"storyboard").
ruolo_crew(8914,11001,"additional editing").
ruolo_crew(8914,1778015,"mechanical designer").
ruolo_crew(8914,1069830,"unit manager").
ruolo_crew(128,608,"screenplay").
ruolo_crew(128,608,"director").
ruolo_crew(128,608,"editor").
ruolo_crew(128,636,"original music composer").
ruolo_crew(128,1417,"producer").
ruolo_crew(128,19596,"director of photography").
ruolo_crew(128,19596,"camera supervisor").
ruolo_crew(128,1697,"editor").
ruolo_crew(128,19595,"executive producer").
ruolo_crew(128,19598,"art direction").
ruolo_crew(128,19601,"animation").
ruolo_crew(128,19603,"animation").
ruolo_crew(128,40455,"background designer").
ruolo_crew(128,40336,"animation supervisor").
ruolo_crew(128,78343,"executive producer").
ruolo_crew(128,78345,"animation").
ruolo_crew(128,78360,"executive producer").
ruolo_crew(128,78378,"art direction").
ruolo_crew(128,144663,"animation").
ruolo_crew(128,547985,"art direction").
ruolo_crew(128,555254,"animation supervisor").
ruolo_crew(128,568034,"animation").
ruolo_crew(128,937796,"background designer").
ruolo_crew(128,986214,"art direction").
ruolo_crew(128,1009730,"art direction").
ruolo_crew(128,1011633,"animation").
ruolo_crew(128,1132621,"executive producer").
ruolo_crew(128,1132637,"thanks").
ruolo_crew(128,1172200,"animation").
ruolo_crew(128,1399330,"animation").
ruolo_crew(128,1452508,"sound effects editor").
ruolo_crew(128,1456606,"animation").
ruolo_crew(128,1456614,"animation").
ruolo_crew(128,1456616,"animation supervisor").
ruolo_crew(128,1456617,"animation").
ruolo_crew(128,1456620,"animation manager").
ruolo_crew(128,1456623,"animation").
ruolo_crew(128,1456624,"animation").
ruolo_crew(128,1456626,"animation").
ruolo_crew(128,1456629,"animation").
ruolo_crew(128,1456631,"animation").
ruolo_crew(128,1456633,"animation").
ruolo_crew(128,1456772,"background designer").
ruolo_crew(128,1456773,"animation").
ruolo_crew(128,1456774,"background designer").
ruolo_crew(128,1456775,"background designer").
ruolo_crew(128,1456776,"animation").
ruolo_crew(128,1456777,"animation").
ruolo_crew(128,1456778,"animation").
ruolo_crew(128,1456779,"animation").
ruolo_crew(128,1456780,"animation").
ruolo_crew(128,1456781,"background designer").
ruolo_crew(128,1456782,"animation manager").
ruolo_crew(128,1456783,"animation manager").
ruolo_crew(128,1456784,"animation").
ruolo_crew(128,1456785,"background designer").
ruolo_crew(128,1456786,"background designer").
ruolo_crew(128,1456787,"animation manager").
ruolo_crew(128,1456788,"background designer").
ruolo_crew(128,1456789,"animation").
ruolo_crew(128,1456790,"animation").
ruolo_crew(128,1456791,"animation").
ruolo_crew(128,1456793,"animation").
ruolo_crew(128,1456794,"animation").
ruolo_crew(128,1456795,"color designer").
ruolo_crew(128,1456796,"animation").
ruolo_crew(128,1456797,"background designer").
ruolo_crew(128,1456798,"animation").
ruolo_crew(111,1150,"director").
ruolo_crew(111,1151,"producer").
ruolo_crew(111,1153,"director of photography").
ruolo_crew(111,1154,"original music composer").
ruolo_crew(111,1155,"production design").
ruolo_crew(111,1156,"casting").
ruolo_crew(111,1157,"editor").
ruolo_crew(111,57652,"executive producer").
ruolo_crew(111,1152,"screenplay").
ruolo_crew(111,852,"editor").
ruolo_crew(111,23702,"art direction").
ruolo_crew(111,958383,"set decoration").
ruolo_crew(111,5634,"costume design").
ruolo_crew(111,13347,"novel").
ruolo_crew(111,1549025,"stunts").
ruolo_crew(111,166543,"stunts").
ruolo_crew(111,43010,"stunts").
ruolo_crew(111,1475003,"assistant director").
ruolo_crew(111,161787,"stunts").
ruolo_crew(111,61838,"stunts").
ruolo_crew(111,1354109,"unit production manager").
ruolo_crew(111,92479,"stunts").
ruolo_crew(111,8346,"assistant director").
ruolo_crew(111,1407197,"adr & dubbing").
ruolo_crew(111,13436,"makeup artist").
ruolo_crew(111,1027067,"hairstylist").
ruolo_crew(111,9337,"hairstylist").
ruolo_crew(111,1403399,"special effects").
ruolo_crew(111,26988,"special effects").
ruolo_crew(111,1195390,"projection").
ruolo_crew(111,11882,"casting").
ruolo_crew(111,1628600,"set costumer").
ruolo_crew(111,1554342,"set costumer").
ruolo_crew(111,75250,"set costumer").
ruolo_crew(111,1081358,"set costumer").
ruolo_crew(111,1424000,"thanks").
ruolo_crew(111,1404230,"still photographer").
ruolo_crew(111,1609399,"supervising sound editor").
ruolo_crew(111,10632,"stunts").
ruolo_crew(111,957760,"assistant editor").
ruolo_crew(111,1728594,"stunts").
ruolo_crew(111,34101,"stunts").
ruolo_crew(869,142,"author").
ruolo_crew(869,2215,"casting").
ruolo_crew(869,1226,"production design").
ruolo_crew(869,510,"director").
ruolo_crew(869,531,"original music composer").
ruolo_crew(869,541,"editor").
ruolo_crew(869,553,"supervising art director").
ruolo_crew(869,557,"costume design").
ruolo_crew(869,1297,"producer").
ruolo_crew(869,1301,"director of photography").
ruolo_crew(869,2100,"author").
ruolo_crew(869,2103,"author").
ruolo_crew(869,9618,"art direction").
ruolo_crew(869,12240,"novel").
ruolo_crew(869,13245,"editor").
ruolo_crew(869,13588,"set decoration").
ruolo_crew(869,15017,"makeup artist").
ruolo_crew(869,1319383,"art direction").
ruolo_crew(869,1432957,"modeling").
ruolo_crew(869,1479807,"script supervisor").
ruolo_crew(120,108,"director").
ruolo_crew(120,108,"producer").
ruolo_crew(120,123,"producer").
ruolo_crew(120,1307,"executive producer").
ruolo_crew(120,59839,"executive producer").
ruolo_crew(120,1310,"executive producer").
ruolo_crew(120,1309,"executive producer").
ruolo_crew(120,1311,"executive producer").
ruolo_crew(120,129,"novel").
ruolo_crew(120,108,"screenplay").
ruolo_crew(120,126,"screenplay").
ruolo_crew(120,128,"screenplay").
ruolo_crew(120,117,"original music composer").
ruolo_crew(120,1313,"director of photography").
ruolo_crew(120,1314,"production design").
ruolo_crew(120,1315,"editor").
ruolo_crew(120,1316,"art direction").
ruolo_crew(120,1317,"art direction").
ruolo_crew(120,1318,"art direction").
ruolo_crew(120,1319,"art direction").
ruolo_crew(120,1320,"set decoration").
ruolo_crew(120,1321,"set decoration").
ruolo_crew(120,1322,"costume design").
ruolo_crew(120,1323,"costume design").
ruolo_crew(120,1324,"casting").
ruolo_crew(120,1325,"casting").
ruolo_crew(120,1326,"casting").
ruolo_crew(120,1016176,"casting").
ruolo_crew(120,61624,"casting").
ruolo_crew(120,1401803,"3d supervisor").
ruolo_crew(121,123,"producer").
ruolo_crew(121,117,"original music composer").
ruolo_crew(121,108,"screenplay").
ruolo_crew(121,108,"director").
ruolo_crew(121,108,"producer").
ruolo_crew(121,1307,"executive producer").
ruolo_crew(121,59839,"executive producer").
ruolo_crew(121,1310,"executive producer").
ruolo_crew(121,1309,"executive producer").
ruolo_crew(121,1311,"executive producer").
ruolo_crew(121,129,"novel").
ruolo_crew(121,126,"screenplay").
ruolo_crew(121,128,"screenplay").
ruolo_crew(121,1313,"director of photography").
ruolo_crew(121,1314,"production design").
ruolo_crew(121,1316,"art direction").
ruolo_crew(121,1317,"art direction").
ruolo_crew(121,1318,"art direction").
ruolo_crew(121,1319,"art direction").
ruolo_crew(121,1320,"set decoration").
ruolo_crew(121,1321,"set decoration").
ruolo_crew(121,1322,"costume design").
ruolo_crew(121,1323,"costume design").
ruolo_crew(121,1324,"casting").
ruolo_crew(121,1325,"casting").
ruolo_crew(121,1326,"casting").
ruolo_crew(121,1373,"set decoration").
ruolo_crew(121,1374,"original music composer").
ruolo_crew(121,1376,"editor").
ruolo_crew(121,1377,"editor").
ruolo_crew(121,61624,"casting").
ruolo_crew(121,1016176,"casting").
ruolo_crew(121,1401803,"3d supervisor").
ruolo_crew(121,1447518,"stunts").
ruolo_crew(121,1453498,"animation").
ruolo_crew(121,1460602,"compositors").
ruolo_crew(423,3556,"director").
ruolo_crew(423,3558,"screenplay").
ruolo_crew(423,3556,"producer").
ruolo_crew(423,3560,"producer").
ruolo_crew(423,6635,"novel").
ruolo_crew(423,3564,"editor").
ruolo_crew(423,1400,"original music composer").
ruolo_crew(423,3561,"director of photography").
ruolo_crew(423,3559,"producer").
ruolo_crew(423,970,"casting").
ruolo_crew(423,19919,"casting").
ruolo_crew(423,3563,"production design").
ruolo_crew(423,960832,"art direction").
ruolo_crew(423,41114,"set decoration").
ruolo_crew(423,23584,"set decoration").
ruolo_crew(423,6688,"costume design").
ruolo_crew(423,1288056,"script supervisor").
ruolo_crew(423,1435272,"assistant director").
ruolo_crew(423,1610205,"assistant director").
ruolo_crew(423,1380004,"assistant director").
ruolo_crew(423,32017,"makeup artist").
ruolo_crew(423,32099,"hairstylist").
ruolo_crew(423,68584,"production manager").
ruolo_crew(423,1580668,"production manager").
ruolo_crew(423,936916,"production manager").
ruolo_crew(423,10903,"production supervisor").
ruolo_crew(423,1415957,"stunt coordinator").
ruolo_crew(423,1041802,"stunts").
ruolo_crew(423,1638144,"thanks").
ruolo_crew(423,1632390,"assistant editor").
ruolo_crew(423,41853,"location manager").
ruolo_crew(423,142165,"music editor").
ruolo_crew(423,1180471,"still photographer").
ruolo_crew(423,1358022,"visual effects producer").
ruolo_crew(423,16716,"special effects coordinator").
ruolo_crew(423,40861,"transportation coordinator").
ruolo_crew(423,1335888,"driver").
ruolo_crew(423,1487478,"construction coordinator").
ruolo_crew(423,1602319,"casting").
ruolo_crew(423,44645,"casting").
ruolo_crew(423,1653201,"color designer").
ruolo_crew(423,1061537,"creative consultant").
ruolo_crew(423,1337468,"music editor").
ruolo_crew(423,1547720,"sound editor").
ruolo_crew(423,1404840,"sound mixer").
ruolo_crew(9480,16837,"director").
ruolo_crew(9480,16837,"screenplay").
ruolo_crew(9480,7626,"producer").
ruolo_crew(9480,12922,"producer").
ruolo_crew(9480,7624,"executive producer").
ruolo_crew(9480,376,"producer").
ruolo_crew(9480,2384,"executive producer").
ruolo_crew(9480,5912,"original music composer").
ruolo_crew(9480,21673,"director of photography").
ruolo_crew(9480,21271,"editor").
ruolo_crew(9480,5584,"editor").
ruolo_crew(9480,53648,"casting").
ruolo_crew(9480,4249,"casting").
ruolo_crew(9480,11386,"costume design").
ruolo_crew(9480,10820,"production design").
ruolo_crew(9480,10549,"art direction").
ruolo_crew(9480,9025,"art direction").
ruolo_crew(9480,6055,"set decoration").
ruolo_crew(9480,1416054,"hairstylist").
ruolo_crew(9480,1416093,"hairstylist").
ruolo_crew(9480,1394565,"hairstylist").
ruolo_crew(9480,1416095,"hairstylist").
ruolo_crew(9480,23787,"makeup department head").
ruolo_crew(9480,1323076,"makeup artist").
ruolo_crew(9480,1416096,"makeup artist").
ruolo_crew(9480,1416098,"makeup department head").
ruolo_crew(9480,23785,"makeup artist").
ruolo_crew(9480,112877,"makeup effects").
ruolo_crew(9480,1406299,"makeup effects").
ruolo_crew(9480,1416102,"makeup effects").
ruolo_crew(9480,1416103,"makeup effects").
ruolo_crew(9480,23420,"production manager").
ruolo_crew(9480,1083214,"art department coordinator").
ruolo_crew(9480,62560,"assistant art director").
ruolo_crew(9480,1403432,"construction coordinator").
ruolo_crew(9480,1416150,"construction foreman").
ruolo_crew(9480,1415612,"leadman").
ruolo_crew(9480,1416151,"leadman").
ruolo_crew(9480,1401884,"sculptor").
ruolo_crew(9480,936841,"set designer").
ruolo_crew(9480,1339435,"set designer").
ruolo_crew(9480,1391566,"set designer").
ruolo_crew(9480,1171098,"set designer").
ruolo_crew(9480,1384367,"dialogue editor").
ruolo_crew(9480,113055,"dialogue editor").
ruolo_crew(9480,1398946,"supervising sound editor").
ruolo_crew(9480,1399117,"sound effects editor").
ruolo_crew(9480,1378695,"sound effects editor").
ruolo_crew(9480,7537,"sound designer").
ruolo_crew(9480,113048,"sound recordist").
ruolo_crew(9480,1390527,"sound effects editor").
ruolo_crew(9480,1390524,"sound effects editor").
ruolo_crew(9480,1377220,"sound re-recording mixer").
ruolo_crew(9480,113073,"sound re-recording mixer").
ruolo_crew(9480,113089,"sound recordist").
ruolo_crew(9480,1224272,"special effects coordinator").
ruolo_crew(9480,1416157,"cg supervisor").
ruolo_crew(9480,1416158,"visual effects producer").
ruolo_crew(9480,1056758,"visual effects producer").
ruolo_crew(9480,1416166,"visual effects producer").
ruolo_crew(9480,1416167,"visual effects producer").
ruolo_crew(9480,1416168,"visual effects editor").
ruolo_crew(9480,126824,"visual effects supervisor").
ruolo_crew(9480,180576,"visual effects supervisor").
ruolo_crew(9480,1416170,"visual effects supervisor").
ruolo_crew(9480,1393390,"visual effects supervisor").
ruolo_crew(9480,1399287,"visual effects supervisor").
ruolo_crew(9480,1410574,"visual effects editor").
ruolo_crew(9480,1403537,"visual effects supervisor").
ruolo_crew(9480,1416171,"animation supervisor").
ruolo_crew(9480,57769,"visual effects editor").
ruolo_crew(9480,1416172,"animation supervisor").
ruolo_crew(9480,169628,"stunt coordinator").
ruolo_crew(9480,1132695,"gaffer").
ruolo_crew(9480,1205993,"camera operator").
ruolo_crew(9480,957361,"second unit cinematographer").
ruolo_crew(9480,1416432,"rigging gaffer").
ruolo_crew(9480,1409712,"camera operator").
ruolo_crew(9480,17649,"second unit cinematographer").
ruolo_crew(9480,545844,"gaffer").
ruolo_crew(9480,1186279,"steadicam operator").
ruolo_crew(9480,1400535,"steadicam operator").
ruolo_crew(9480,1404541,"additional camera").
ruolo_crew(9480,1144651,"additional camera").
ruolo_crew(9480,1408393,"still photographer").
ruolo_crew(9480,1400082,"still photographer").
ruolo_crew(9480,1416433,"video assist operator").
ruolo_crew(9480,1416434,"video assist operator").
ruolo_crew(9480,1416435,"video assist operator").
ruolo_crew(9480,1319844,"costume supervisor").
ruolo_crew(9480,1416436,"set costumer").
ruolo_crew(9480,1407823,"digital intermediate").
ruolo_crew(9480,1407824,"digital intermediate").
ruolo_crew(9480,1391694,"first assistant editor").
ruolo_crew(9480,1355525,"first assistant editor").
ruolo_crew(9480,1409877,"music editor").
ruolo_crew(9480,1401305,"music editor").
ruolo_crew(9480,160927,"music editor").
ruolo_crew(9480,1401372,"transportation coordinator").
ruolo_crew(9480,1409283,"unit publicist").
ruolo_crew(9480,1416437,"location manager").
ruolo_crew(9480,1416438,"script supervisor").
ruolo_crew(9480,1119475,"script supervisor").
ruolo_crew(9480,1416439,"location manager").
ruolo_crew(9480,1416440,"studio teachers").
ruolo_crew(9480,1416441,"production accountant").
ruolo_crew(9480,92301,"associate producer").
ruolo_crew(9480,50459,"co-producer").
ruolo_crew(9480,10850,"co-producer").
ruolo_crew(9480,54267,"associate producer").
ruolo_crew(9480,23420,"line producer").
ruolo_crew(9480,1471199,"line producer").
ruolo_crew(9480,2293,"characters").
ruolo_crew(9480,1532354,"gaffer").
ruolo_crew(9480,1408290,"hair department head").
ruolo_crew(9480,1416092,"key hair stylist").
ruolo_crew(9480,8287,"key set costumer").
ruolo_crew(9480,1416155,"additional sound re-recording mixer").
ruolo_crew(9480,1416153,"adr supervisor").
ruolo_crew(9480,1367505,"foley editor").
ruolo_crew(9480,24192,"music supervisor").
ruolo_crew(9480,1569555,"art department assistant").
ruolo_crew(9480,1400510,"location scout").
ruolo_crew(9480,92356,"standby painter").
ruolo_crew(9480,1569556,"painter").
ruolo_crew(9480,1081075,"production illustrator").
ruolo_crew(9480,1569557,"first assistant camera").
ruolo_crew(9480,1508743,"grip").
ruolo_crew(9480,1565672,"underwater camera").
ruolo_crew(9480,23788,"makeup designer").
ruolo_crew(9480,1569558,"craft service").
ruolo_crew(9480,1569559,"digital effects supervisor").
ruolo_crew(9480,1569560,"driver").
ruolo_crew(9480,1569561,"loader").
ruolo_crew(9480,169628,"martial arts choreographer").
ruolo_crew(9480,1569562,"picture car coordinator").
ruolo_crew(9480,1569563,"post production assistant").
ruolo_crew(9480,60934,"post production supervisor").
ruolo_crew(9480,1569564,"projection").
ruolo_crew(9480,135935,"property master").
ruolo_crew(9480,1569565,"propmaker").
ruolo_crew(9480,1553642,"quality control supervisor").
ruolo_crew(9480,1569566,"scenic artist").
ruolo_crew(9480,180576,"second unit").
ruolo_crew(9480,1569823,"security").
ruolo_crew(9480,1569824,"set medic").
ruolo_crew(9480,1569825,"set production assistant").
ruolo_crew(9480,1569826,"software engineer").
ruolo_crew(9480,1496388,"stand in").
ruolo_crew(9480,1368878,"stunt coordinator").
ruolo_crew(9480,1074163,"stunts").
ruolo_crew(9480,1370759,"technical supervisor").
ruolo_crew(9480,1569827,"systems administrators & support").
ruolo_crew(9480,1569828,"telecine colorist").
ruolo_crew(9480,2384,"unit production manager").
ruolo_crew(9480,1569829,"utility stunts").
ruolo_crew(9480,1569830,"assistant director").
ruolo_crew(9480,13223,"color timer").
ruolo_crew(9480,1569833,"editorial production assistant").
ruolo_crew(9480,1535781,"best boy electric").
ruolo_crew(9480,109273,"electrician").
ruolo_crew(9480,1569835,"lighting supervisor").
ruolo_crew(9480,1569836,"lighting technician").
ruolo_crew(9480,1544736,"rigging grip").
ruolo_crew(9480,1569837,"production coordinator").
ruolo_crew(9480,1569838,"production office coordinator").
ruolo_crew(9480,1085294,"production supervisor").
ruolo_crew(9480,1562008,"boom operator").
ruolo_crew(9480,1445874,"first assistant sound editor").
ruolo_crew(9480,1459655,"orchestrator").
ruolo_crew(9480,1569842,"production sound mixer").
ruolo_crew(9480,1569843,"scoring mixer").
ruolo_crew(9480,1432596,"sound engineer").
ruolo_crew(9480,1552062,"sound mixer").
ruolo_crew(9480,1569845,"digital compositors").
ruolo_crew(9480,1559783,"special effects supervisor").
ruolo_crew(9480,1569846,"visual effects coordinator").
ruolo_crew(9480,92344,"storyboard").
ruolo_crew(9480,1569847,"digital producer").
ruolo_crew(9480,1569848,"modeling").
ruolo_crew(9480,83072,"set dresser").
ruolo_crew(9480,1745939,"animal coordinator").
ruolo_crew(9480,1745933,"title designer").
ruolo_crew(9480,1745934,"camera loader").
ruolo_crew(9480,1745935,"dolly grip").
ruolo_crew(9480,1741180,"key grip").
ruolo_crew(9480,92336,"prosthetic makeup artist").
ruolo_crew(9480,483932,"marine coordinator").
ruolo_crew(9480,54267,"first assistant director").
ruolo_crew(9480,1745942,"second assistant director").
ruolo_crew(9480,1733142,"negative cutter").
ruolo_crew(9480,1745945,"rigging supervisor").
ruolo_crew(9480,59055,"adr voice casting").
ruolo_crew(9480,1400007,"assistant production coordinator").
ruolo_crew(9480,52193,"adr editor").
ruolo_crew(9480,1744856,"musician").
ruolo_crew(9620,584,"author").
ruolo_crew(9620,904,"director of photography").
ruolo_crew(9620,2043,"producer").
ruolo_crew(9620,6044,"casting").
ruolo_crew(9620,6877,"production design").
ruolo_crew(9620,6881,"costume design").
ruolo_crew(9620,40795,"publicist").
ruolo_crew(9620,11401,"director").
ruolo_crew(9620,11401,"producer").
ruolo_crew(9620,11404,"producer").
ruolo_crew(9620,11098,"original music composer").
ruolo_crew(9620,14764,"sound effects editor").
ruolo_crew(9620,14765,"supervising sound editor").
ruolo_crew(9620,11001,"editor").
ruolo_crew(9620,15335,"second unit cinematographer").
ruolo_crew(9620,16551,"hair designer").
ruolo_crew(9620,18926,"production manager").
ruolo_crew(9620,20516,"screenplay").
ruolo_crew(9620,21351,"additional editing").
ruolo_crew(9620,11021,"set decoration").
ruolo_crew(9620,29405,"editor").
ruolo_crew(9620,34527,"post production supervisor").
ruolo_crew(9620,53331,"assistant set dresser").
ruolo_crew(9620,53813,"art direction").
ruolo_crew(9620,83069,"second assistant director").
ruolo_crew(9620,91144,"scoring mixer").
ruolo_crew(9620,548429,"sound recordist").
ruolo_crew(9620,932186,"orchestrator").
ruolo_crew(9620,946092,"producer").
ruolo_crew(9620,1043374,"musician").
ruolo_crew(9620,1118402,"special effects coordinator").
ruolo_crew(9620,1190889,"executive producer").
ruolo_crew(9620,1190889,"unit production manager").
ruolo_crew(9620,1222761,"executive producer").
ruolo_crew(9620,1227173,"foley").
ruolo_crew(9620,1229074,"co-producer").
ruolo_crew(9620,1229074,"first assistant director").
ruolo_crew(9620,1271607,"video assist operator").
ruolo_crew(9620,1334485,"sound designer").
ruolo_crew(9620,1346314,"digital compositors").
ruolo_crew(9620,1366708,"stand in").
ruolo_crew(9620,1378677,"assistant art director").
ruolo_crew(9620,1378725,"transportation coordinator").
ruolo_crew(9620,1382059,"best boy electric").
ruolo_crew(9620,1387246,"foley editor").
ruolo_crew(9620,1391679,"dialogue editor").
ruolo_crew(9620,1401593,"aerial director of photography").
ruolo_crew(9620,1401594,"still photographer").
ruolo_crew(9620,1401604,"wigmaker").
ruolo_crew(9620,1404742,"additional camera").
ruolo_crew(9620,1404752,"transportation coordinator").
ruolo_crew(9620,1404841,"adr editor").
ruolo_crew(9620,1410353,"greensman").
ruolo_crew(9620,1410573,"visual effects producer").
ruolo_crew(9620,1410581,"camera operator").
ruolo_crew(9620,1413462,"cg supervisor").
ruolo_crew(9620,1415631,"3d supervisor").
ruolo_crew(9620,1421695,"construction coordinator").
ruolo_crew(9620,1423864,"production illustrator").
ruolo_crew(9620,1425824,"gaffer").
ruolo_crew(9620,1428202,"stunt coordinator").
ruolo_crew(9620,1438621,"steadicam operator").
ruolo_crew(9620,1441238,"key hair stylist").
ruolo_crew(9620,1441271,"hairstylist").
ruolo_crew(9620,1441349,"assistant property master").
ruolo_crew(9620,1441364,"rigging gaffer").
ruolo_crew(9620,1447636,"location manager").
ruolo_crew(9620,1448423,"art department coordinator").
ruolo_crew(9620,1457666,"assistant editor").
ruolo_crew(9620,1472640,"co-producer").
ruolo_crew(9620,1478953,"script supervisor").
ruolo_crew(9620,1484198,"visual effects coordinator").
ruolo_crew(9620,1548639,"unit manager").
ruolo_crew(9620,1549445,"sound engineer").
ruolo_crew(9620,1551219,"music editor").
ruolo_crew(9620,1551523,"supervising adr editor").
ruolo_crew(9620,1552205,"first assistant sound editor").
ruolo_crew(9620,1559140,"first assistant editor").
ruolo_crew(9620,1559180,"systems administrators & support").
ruolo_crew(9620,1562248,"color timer").
ruolo_crew(9620,1564732,"sound mixer").
ruolo_crew(9620,1577050,"dolly grip").
ruolo_crew(9620,1580621,"additional music").
ruolo_crew(9620,1580636,"production accountant").
ruolo_crew(9620,1586922,"conductor").
ruolo_crew(9620,1593506,"electrician").
ruolo_crew(9620,1644457,"conceptual design").
ruolo_crew(9620,1644460,"leadman").
ruolo_crew(9620,1644461,"first assistant camera").
ruolo_crew(9620,1644462,"key grip").
ruolo_crew(9620,1644463,"makeup artist").
ruolo_crew(9620,1644464,"set costumer").
ruolo_crew(9620,1644465,"set dresser").
ruolo_crew(9620,1644466,"carpenter").
ruolo_crew(9620,1644467,"craft service").
ruolo_crew(9620,1644468,"digital effects supervisor").
ruolo_crew(9620,1644469,"post production assistant").
ruolo_crew(9620,1644470,"property master").
ruolo_crew(9620,1644471,"security").
ruolo_crew(9620,1644472,"stunts").
ruolo_crew(9620,1644473,"transportation co-captain").
ruolo_crew(9620,1644474,"utility stunts").
ruolo_crew(9620,1644476,"lighting artist").
ruolo_crew(9620,1644477,"lighting technician").
ruolo_crew(9620,1644478,"rigging grip").
ruolo_crew(9620,1644479,"production coordinator").
ruolo_crew(9620,1644480,"researcher").
ruolo_crew(9620,1644481,"boom operator").
ruolo_crew(9620,1644531,"visual effects").
ruolo_crew(9620,1644532,"visual effects supervisor").
ruolo_crew(9620,1644533,"storyboard").
ruolo_crew(9620,1679120,"third assistant director").
ruolo_crew(9620,1713977,"conceptual illustrator").
ruolo_crew(9620,1715192,"assistant sound editor").
ruolo_crew(9620,1740487,"title designer").
ruolo_crew(9620,1778306,"story editor").
ruolo_crew(9620,1823801,"techno crane operator").
ruolo_crew(9620,1903003,"grip").
ruolo_crew(9620,1903020,"assistant production coordinator").
ruolo_crew(9620,1903021,"casting assistant").
ruolo_crew(11459,4950,"director of photography").
ruolo_crew(11459,5392,"costume design").
ruolo_crew(11459,6880,"set decoration").
ruolo_crew(11459,7733,"production design").
ruolo_crew(11459,9360,"still photographer").
ruolo_crew(11459,10833,"editor").
ruolo_crew(11459,15347,"original music composer").
ruolo_crew(11459,15354,"music editor").
ruolo_crew(11459,38415,"executive producer").
ruolo_crew(11459,41080,"casting").
ruolo_crew(11459,66688,"art direction").
ruolo_crew(11459,64151,"director").
ruolo_crew(11459,64830,"producer").
ruolo_crew(11459,68699,"writer").
ruolo_crew(11459,68700,"writer").
ruolo_crew(11459,69509,"writer").
ruolo_crew(11459,69510,"executive producer").
ruolo_crew(11459,74978,"sound re-recording mixer").
ruolo_crew(11459,83087,"dialogue editor").
ruolo_crew(11459,83088,"dialogue editor").
ruolo_crew(11459,83090,"supervising sound editor").
ruolo_crew(11459,83091,"sound re-recording mixer").
ruolo_crew(11459,122464,"sound effects editor").
ruolo_crew(11459,936194,"makeup department head").
ruolo_crew(11459,957264,"hair department head").
ruolo_crew(11459,1244450,"makeup artist").
ruolo_crew(11459,1323076,"makeup artist").
ruolo_crew(11459,1336716,"cgi supervisor").
ruolo_crew(11459,1344278,"script supervisor").
ruolo_crew(11459,1377502,"still photographer").
ruolo_crew(11459,1387212,"art department coordinator").
ruolo_crew(11459,1389624,"music editor").
ruolo_crew(11459,1400847,"key hair stylist").
ruolo_crew(11459,1415617,"sound effects editor").
ruolo_crew(11459,1415618,"supervising sound editor").
ruolo_crew(11459,1428230,"transportation coordinator").
ruolo_crew(11459,1532248,"makeup artist").
ruolo_crew(11459,1532250,"hairstylist").
ruolo_crew(11459,1551698,"music supervisor").
ruolo_crew(11459,1555488,"production sound mixer").
ruolo_crew(9408,5359,"original music composer").
ruolo_crew(9408,7903,"casting").
ruolo_crew(9408,12905,"screenplay").
ruolo_crew(9408,12905,"director").
ruolo_crew(9408,56042,"editor").
ruolo_crew(9408,15774,"screenplay").
ruolo_crew(9408,15774,"director").
ruolo_crew(9408,58144,"screenplay").
ruolo_crew(9408,58421,"screenplay").
ruolo_crew(9408,58421,"producer").
ruolo_crew(9408,58421,"story").
ruolo_crew(9408,169941,"story").
ruolo_crew(9408,957354,"production design").
ruolo_crew(9408,1081906,"writer").
ruolo_crew(9408,1081907,"writer").
ruolo_crew(9408,1118709,"producer").
ruolo_crew(9408,1127674,"executive producer").
ruolo_crew(9408,1455541,"animation").
ruolo_crew(9408,1455613,"animation").
ruolo_crew(8247,376,"producer").
ruolo_crew(8247,907,"costume design").
ruolo_crew(8247,1593,"casting").
ruolo_crew(8247,3893,"screenplay").
ruolo_crew(8247,7535,"set decoration").
ruolo_crew(8247,7469,"screenplay").
ruolo_crew(8247,8678,"production design").
ruolo_crew(8247,9639,"supervising art director").
ruolo_crew(8247,11098,"music").
ruolo_crew(8247,11657,"editor").
ruolo_crew(8247,11694,"director").
ruolo_crew(8247,11092,"screenplay").
ruolo_crew(8247,11092,"producer").
ruolo_crew(8247,11695,"producer").
ruolo_crew(8247,12374,"unit production manager").
ruolo_crew(8247,14913,"art direction").
ruolo_crew(8247,15005,"editor").
ruolo_crew(8247,10836,"supervising art director").
ruolo_crew(8247,25058,"additional editing").
ruolo_crew(8247,32487,"hairstylist").
ruolo_crew(8247,38657,"producer").
ruolo_crew(8247,49912,"music supervisor").
ruolo_crew(8247,54164,"director of photography").
ruolo_crew(8247,54163,"executive producer").
ruolo_crew(8247,54267,"executive producer").
ruolo_crew(8247,54268,"executive producer").
ruolo_crew(8247,54269,"executive producer").
ruolo_crew(8247,54271,"editor").
ruolo_crew(8247,54272,"visual effects supervisor").
ruolo_crew(8247,113046,"sound mixer").
ruolo_crew(8247,113054,"sound effects editor").
ruolo_crew(8247,113073,"sound mixer").
ruolo_crew(8247,113097,"sound designer").
ruolo_crew(8247,64335,"additional editing").
ruolo_crew(8247,66513,"producer").
ruolo_crew(8247,66513,"associate producer").
ruolo_crew(8247,82132,"unit production manager").
ruolo_crew(8247,91161,"co-producer").
ruolo_crew(8247,102343,"makeup artist").
ruolo_crew(8247,142325,"producer").
ruolo_crew(8247,142325,"stunt coordinator").
ruolo_crew(8247,142325,"associate producer").
ruolo_crew(8247,190936,"casting associate").
ruolo_crew(8247,933333,"casting").
ruolo_crew(8247,954164,"producer").
ruolo_crew(8247,989750,"casting associate").
ruolo_crew(8247,1123819,"novel").
ruolo_crew(8247,1319467,"makeup department head").
ruolo_crew(8247,1340345,"sound designer").
ruolo_crew(8247,1347722,"makeup department head").
ruolo_crew(8247,1364406,"property master").
ruolo_crew(8247,1399505,"camera operator").
ruolo_crew(8247,1399909,"set designer").
ruolo_crew(8247,1399927,"camera operator").
ruolo_crew(8247,1399927,"steadicam operator").
ruolo_crew(8247,1401601,"unit publicist").
ruolo_crew(8247,1403475,"visual effects supervisor").
ruolo_crew(8247,1404326,"music editor").
ruolo_crew(8247,1404850,"still photographer").
ruolo_crew(8247,1408670,"assistant art director").
ruolo_crew(8247,1423203,"key hair stylist").
ruolo_crew(8247,1425975,"construction coordinator").
ruolo_crew(8247,1429245,"special effects supervisor").
ruolo_crew(8247,1442212,"storyboard").
ruolo_crew(8247,1449162,"set designer").
ruolo_crew(8247,1449183,"script supervisor").
ruolo_crew(8247,1465860,"visual effects producer").
ruolo_crew(8247,1526834,"assistant costume designer").
ruolo_crew(8247,1530756,"costume supervisor").
ruolo_crew(8247,1545541,"gaffer").
ruolo_crew(8247,1548529,"sound mixer").
ruolo_crew(8247,1548533,"storyboard").
ruolo_crew(8247,1552360,"special effects coordinator").
ruolo_crew(8247,1553269,"storyboard").
ruolo_crew(8247,1556313,"stunt coordinator").
ruolo_crew(8247,1581500,"assistant costume designer").
ruolo_crew(8247,1651081,"storyboard").
ruolo_crew(8247,1652234,"storyboard").
ruolo_crew(8247,1701149,"set designer").
ruolo_crew(8247,1701150,"storyboard").
ruolo_crew(8247,1701151,"storyboard").
ruolo_crew(8247,1701152,"storyboard").
ruolo_crew(8247,1701153,"storyboard").
ruolo_crew(8247,1701154,"storyboard").
ruolo_crew(8247,1701155,"property master").
ruolo_crew(8247,1701156,"costume supervisor").
ruolo_crew(8247,1701157,"makeup effects").
ruolo_crew(8247,1701160,"location manager").
ruolo_crew(8247,1701161,"production coordinator").
ruolo_crew(155,1113,"casting").
ruolo_crew(155,947,"original music composer").
ruolo_crew(155,282,"producer").
ruolo_crew(155,525,"screenplay").
ruolo_crew(155,525,"director").
ruolo_crew(155,525,"producer").
ruolo_crew(155,527,"screenplay").
ruolo_crew(155,556,"producer").
ruolo_crew(155,559,"director of photography").
ruolo_crew(155,561,"casting").
ruolo_crew(155,1213,"original music composer").
ruolo_crew(155,3893,"story").
ruolo_crew(155,3794,"characters").
ruolo_crew(155,3904,"editor").
ruolo_crew(155,20643,"producer").
ruolo_crew(155,10949,"executive producer").
ruolo_crew(155,10951,"executive producer").
ruolo_crew(155,11167,"art direction").
ruolo_crew(155,10714,"costume design").
ruolo_crew(155,10788,"art direction").
ruolo_crew(155,15845,"makeup artist").
ruolo_crew(155,15327,"production design").
ruolo_crew(155,15328,"supervising art director").
ruolo_crew(155,17677,"art direction").
ruolo_crew(155,44006,"stunt coordinator").
ruolo_crew(155,54211,"executive producer").
ruolo_crew(155,60714,"set decoration").
ruolo_crew(155,68016,"orchestrator").
ruolo_crew(155,81687,"stunts").
ruolo_crew(155,75804,"executive producer").
ruolo_crew(155,113913,"associate producer").
ruolo_crew(155,86591,"art direction").
ruolo_crew(155,138618,"sound re-recording mixer").
ruolo_crew(155,198034,"characters").
ruolo_crew(155,932186,"orchestrator").
ruolo_crew(155,936765,"orchestrator").
ruolo_crew(155,996220,"stunts").
ruolo_crew(155,1025090,"stunts").
ruolo_crew(155,1034754,"art direction").
ruolo_crew(155,1050930,"dialogue editor").
ruolo_crew(155,1233538,"thanks").
ruolo_crew(155,1325917,"supervising art director").
ruolo_crew(155,1327030,"sound re-recording mixer").
ruolo_crew(155,1327404,"stunt coordinator").
ruolo_crew(155,1332017,"stunts").
ruolo_crew(155,1341403,"sound designer").
ruolo_crew(155,1341403,"supervising sound editor").
ruolo_crew(155,1341405,"dialogue editor").
ruolo_crew(155,1356195,"characters").
ruolo_crew(155,1367508,"script supervisor").
ruolo_crew(155,1377220,"sound re-recording mixer").
ruolo_crew(155,1377222,"sound effects editor").
ruolo_crew(155,1390535,"still photographer").
ruolo_crew(155,1395281,"camera operator").
ruolo_crew(155,1395281,"steadicam operator").
ruolo_crew(155,1395430,"art department coordinator").
ruolo_crew(155,1397823,"foley").
ruolo_crew(155,1400088,"music editor").
ruolo_crew(155,1403490,"music editor").
ruolo_crew(155,1411061,"stunts").
ruolo_crew(155,1411118,"unit publicist").
ruolo_crew(155,1417398,"hair department head").
ruolo_crew(155,1417400,"hairstylist").
ruolo_crew(155,1417514,"sound effects editor").
ruolo_crew(155,1426762,"makeup artist").
ruolo_crew(155,1440853,"assistant editor").
ruolo_crew(155,1443032,"hairstylist").
ruolo_crew(155,1486214,"makeup artist").
ruolo_crew(155,1486217,"casting").
ruolo_crew(155,1522745,"set costumer").
ruolo_crew(155,1530327,"orchestrator").
ruolo_crew(155,1532224,"animatronic and prosthetic effects").
ruolo_crew(155,1532610,"first assistant camera").
ruolo_crew(155,1540477,"publicist").
ruolo_crew(155,1550832,"production sound mixer").
ruolo_crew(155,1550851,"stunt coordinator").
ruolo_crew(155,1551776,"stunts").
ruolo_crew(155,1552549,"color timer").
ruolo_crew(155,1566280,"assistant director").
ruolo_crew(155,1571601,"post production supervisor").
ruolo_crew(155,1638257,"prosthetic supervisor").
ruolo_crew(8645,136,"producer").
ruolo_crew(8645,1213,"original music composer").
ruolo_crew(8645,16300,"director of photography").
ruolo_crew(8645,3987,"editor").
ruolo_crew(8645,4504,"executive producer").
ruolo_crew(8645,4507,"executive producer").
ruolo_crew(8645,10571,"line producer").
ruolo_crew(8645,5664,"producer").
ruolo_crew(8645,5669,"casting").
ruolo_crew(8645,9269,"production design").
ruolo_crew(8645,11614,"screenplay").
ruolo_crew(8645,11614,"director").
ruolo_crew(8645,11614,"producer").
ruolo_crew(8645,53677,"executive producer").
ruolo_crew(8645,958493,"producer").
ruolo_crew(8645,964318,"executive producer").
ruolo_crew(8645,966473,"producer").
ruolo_crew(8645,1017377,"casting").
ruolo_crew(8645,1128126,"producer").
ruolo_crew(13387,59,"author").
ruolo_crew(13387,61,"author").
ruolo_crew(13387,45845,"editor").
ruolo_crew(13387,21650,"casting").
ruolo_crew(13387,50954,"music").
ruolo_crew(13387,75035,"director").
ruolo_crew(10313,8376,"sound designer").
ruolo_crew(10313,1461,"producer").
ruolo_crew(10313,2031,"casting").
ruolo_crew(10313,2532,"casting").
ruolo_crew(10313,2950,"director of photography").
ruolo_crew(10313,4061,"costume design").
ruolo_crew(10313,33685,"editor").
ruolo_crew(10313,14653,"makeup department head").
ruolo_crew(10313,25140,"production design").
ruolo_crew(10313,17863,"music supervisor").
ruolo_crew(10313,24190,"original music composer").
ruolo_crew(10313,31511,"director").
ruolo_crew(10313,31511,"producer").
ruolo_crew(10313,64813,"novel").
ruolo_crew(10313,64814,"screenplay").
ruolo_crew(10313,92332,"hair designer").
ruolo_crew(10313,75380,"boom operator").
ruolo_crew(10313,82133,"first assistant director").
ruolo_crew(10313,111050,"producer").
ruolo_crew(10313,117867,"sound effects editor").
ruolo_crew(10313,960673,"art direction").
ruolo_crew(10313,1141899,"script supervisor").
ruolo_crew(10313,1223099,"dialogue editor").
ruolo_crew(10313,1223099,"adr editor").
ruolo_crew(10313,1280234,"stunt coordinator").
ruolo_crew(10313,1335066,"property master").
ruolo_crew(10313,1347760,"dialect coach").
ruolo_crew(10313,1364412,"sound effects editor").
ruolo_crew(10313,1367676,"music editor").
ruolo_crew(10313,1392909,"visual effects supervisor").
ruolo_crew(10313,1400535,"camera operator").
ruolo_crew(10313,1403569,"still photographer").
ruolo_crew(10313,1404232,"set costumer").
ruolo_crew(10313,1406805,"wig designer").
ruolo_crew(10313,1412185,"key makeup artist").
ruolo_crew(10313,1413000,"costume supervisor").
ruolo_crew(10313,1428227,"key set costumer").
ruolo_crew(10313,1549428,"special effects coordinator").
ruolo_crew(10313,1551943,"seamstress").
ruolo_crew(10313,1558697,"chief lighting technician").
ruolo_crew(10313,1865862,"orchestrator").
ruolo_crew(23827,84348,"producer").
ruolo_crew(23827,90591,"screenplay").
ruolo_crew(23827,90591,"director").
ruolo_crew(23827,90591,"director of photography").
ruolo_crew(23827,90591,"editor").
ruolo_crew(23827,90591,"producer").
ruolo_crew(23827,90591,"casting").
ruolo_crew(23827,995456,"executive producer").
ruolo_crew(23827,1030966,"line producer").
ruolo_crew(23827,1125683,"producer").
ruolo_crew(23827,1125685,"line producer").
ruolo_crew(16866,12083,"writer").
ruolo_crew(16866,23401,"editor").
ruolo_crew(16866,56632,"original music composer").
ruolo_crew(16866,62983,"producer").
ruolo_crew(16866,117052,"director").
ruolo_crew(16866,117052,"writer").
ruolo_crew(16866,117056,"art direction").
ruolo_crew(16866,117057,"producer").
ruolo_crew(16866,117057,"writer").
ruolo_crew(16866,968303,"director").
ruolo_crew(16866,968303,"writer").
ruolo_crew(16866,1158156,"director").
ruolo_crew(16866,1158156,"writer").
ruolo_crew(16866,1447378,"animation").
ruolo_crew(16866,1654585,"music").
ruolo_crew(23742,799,"music").
ruolo_crew(23742,19303,"director").
ruolo_crew(23742,17630,"producer").
ruolo_crew(23742,21405,"director of photography").
ruolo_crew(23742,23485,"producer").
ruolo_crew(23742,73453,"executive producer").
ruolo_crew(23742,90542,"executive producer").
ruolo_crew(23742,90542,"writer").
ruolo_crew(23742,90543,"executive producer").
ruolo_crew(23742,90543,"writer").
ruolo_crew(23742,113987,"producer").
ruolo_crew(23437,865,"producer").
ruolo_crew(23437,899,"editor").
ruolo_crew(23437,5140,"characters").
ruolo_crew(23437,17880,"screenplay").
ruolo_crew(23437,17880,"writer").
ruolo_crew(23437,18264,"original music composer").
ruolo_crew(23437,20031,"director").
ruolo_crew(23437,54843,"producer").
ruolo_crew(23437,54844,"producer").
ruolo_crew(23437,69506,"director of photography").
ruolo_crew(23437,62725,"casting").
ruolo_crew(23437,115033,"screenplay").
ruolo_crew(23437,959962,"costume design").
ruolo_crew(23437,1368867,"special effects supervisor").
ruolo_crew(23437,1813644,"stunts").
ruolo_crew(10196,1213,"original music composer").
ruolo_crew(10196,11614,"director").
ruolo_crew(10196,11614,"writer").
ruolo_crew(27205,947,"original music composer").
ruolo_crew(27205,525,"screenplay").
ruolo_crew(27205,525,"director").
ruolo_crew(27205,525,"producer").
ruolo_crew(27205,556,"producer").
ruolo_crew(27205,559,"director of photography").
ruolo_crew(27205,561,"casting").
ruolo_crew(27205,3904,"editor").
ruolo_crew(27205,10958,"set decoration").
ruolo_crew(27205,8705,"art direction").
ruolo_crew(27205,21984,"set decoration").
ruolo_crew(27205,41018,"executive producer").
ruolo_crew(27205,54211,"executive producer").
ruolo_crew(27205,68016,"orchestrator").
ruolo_crew(27205,76054,"art direction").
ruolo_crew(27205,969743,"art direction").
ruolo_crew(27205,1271644,"production design").
ruolo_crew(27205,1271645,"costume design").
ruolo_crew(37430,3956,"producer").
ruolo_crew(37430,3962,"costume design").
ruolo_crew(37430,5328,"casting").
ruolo_crew(37430,5935,"writer").
ruolo_crew(37430,9441,"foley").
ruolo_crew(37430,40684,"stunt coordinator").
ruolo_crew(37430,12383,"production design").
ruolo_crew(37430,15221,"original music composer").
ruolo_crew(37430,16830,"producer").
ruolo_crew(37430,16595,"set designer").
ruolo_crew(37430,17207,"producer").
ruolo_crew(37430,17208,"producer").
ruolo_crew(37430,17209,"producer").
ruolo_crew(37430,29922,"director").
ruolo_crew(37430,19689,"casting").
ruolo_crew(37430,23456,"makeup effects").
ruolo_crew(37430,23812,"supervising art director").
ruolo_crew(37430,29380,"visual effects editor").
ruolo_crew(37430,32806,"digital intermediate").
ruolo_crew(37430,46081,"director of photography").
ruolo_crew(37430,49826,"producer").
ruolo_crew(37430,53297,"writer").
ruolo_crew(37430,53346,"casting").
ruolo_crew(37430,57547,"characters").
ruolo_crew(37430,67242,"set designer").
ruolo_crew(37430,80826,"sound designer").
ruolo_crew(37430,85513,"production manager").
ruolo_crew(37430,102744,"stunts").
ruolo_crew(37430,105690,"production controller").
ruolo_crew(37430,123449,"visual effects producer").
ruolo_crew(37430,138657,"visual effects producer").
ruolo_crew(37430,226464,"camera operator").
ruolo_crew(37430,550113,"producer").
ruolo_crew(37430,934204,"makeup effects").
ruolo_crew(37430,938105,"editor").
ruolo_crew(37430,959506,"supervising art director").
ruolo_crew(37430,968182,"producer").
ruolo_crew(37430,1015623,"assistant art director").
ruolo_crew(37430,1069627,"second unit cinematographer").
ruolo_crew(37430,1116964,"camera operator").
ruolo_crew(37430,1318091,"set decoration").
ruolo_crew(37430,1319153,"assistant art director").
ruolo_crew(37430,1323082,"costume supervisor").
ruolo_crew(37430,1327184,"makeup artist").
ruolo_crew(37430,1327762,"set decoration").
ruolo_crew(37430,1327909,"makeup effects").
ruolo_crew(37430,1345267,"set costumer").
ruolo_crew(37430,1350233,"art department coordinator").
ruolo_crew(37430,1350235,"set designer").
ruolo_crew(37430,1350248,"visual effects supervisor").
ruolo_crew(37430,1350257,"set costumer").
ruolo_crew(37430,1350261,"script supervisor").
ruolo_crew(37430,1355974,"script supervisor").
ruolo_crew(37430,1368850,"assistant art director").
ruolo_crew(37430,1368862,"property master").
ruolo_crew(37430,1368880,"gaffer").
ruolo_crew(37430,1368886,"transportation coordinator").
ruolo_crew(37430,1373432,"visual effects producer").
ruolo_crew(37430,1373433,"visual effects supervisor").
ruolo_crew(37430,1373434,"visual effects producer").
ruolo_crew(37430,1380003,"script supervisor").
ruolo_crew(37430,1391531,"visual effects supervisor").
ruolo_crew(37430,1393443,"adr & dubbing").
ruolo_crew(37430,1394949,"sculptor").
ruolo_crew(37430,1396793,"foley").
ruolo_crew(37430,1396796,"sound recordist").
ruolo_crew(37430,1396805,"visual effects editor").
ruolo_crew(37430,1396811,"visual effects art director").
ruolo_crew(37430,1396827,"music editor").
ruolo_crew(37430,1398190,"production manager").
ruolo_crew(37430,1399302,"visual effects editor").
ruolo_crew(37430,1400317,"still photographer").
ruolo_crew(37430,1402111,"sound re-recording mixer").
ruolo_crew(37430,1405807,"makeup effects").
ruolo_crew(37430,1406253,"digital intermediate").
ruolo_crew(37430,1407033,"unit publicist").
ruolo_crew(37430,1407364,"stunt coordinator").
ruolo_crew(37430,1408667,"makeup effects").
ruolo_crew(37430,1411876,"steadicam operator").
ruolo_crew(37430,1412448,"makeup artist").
ruolo_crew(37430,1412601,"hairstylist").
ruolo_crew(37430,1412602,"makeup artist").
ruolo_crew(37430,1412603,"makeup artist").
ruolo_crew(37430,1412604,"makeup artist").
ruolo_crew(37430,1412686,"hairstylist").
ruolo_crew(37430,1412687,"makeup artist").
ruolo_crew(37430,1412692,"assistant art director").
ruolo_crew(37430,1412693,"construction coordinator").
ruolo_crew(37430,1412694,"sculptor").
ruolo_crew(37430,1412695,"sculptor").
ruolo_crew(37430,1412697,"set designer").
ruolo_crew(37430,1412699,"sound designer").
ruolo_crew(37430,1412702,"sound effects editor").
ruolo_crew(37430,1412703,"sound editor").
ruolo_crew(37430,1412704,"adr & dubbing").
ruolo_crew(37430,1412705,"visual effects producer").
ruolo_crew(37430,1412706,"visual effects editor").
ruolo_crew(37430,1412707,"visual effects producer").
ruolo_crew(37430,1412708,"visual effects producer").
ruolo_crew(37430,1412709,"visual effects producer").
ruolo_crew(37430,1412710,"visual effects producer").
ruolo_crew(37430,1412711,"visual effects editor").
ruolo_crew(37430,1412712,"visual effects editor").
ruolo_crew(37430,1412714,"visual effects editor").
ruolo_crew(37430,1412715,"visual effects supervisor").
ruolo_crew(37430,1412716,"cg supervisor").
ruolo_crew(37430,1412717,"additional camera").
ruolo_crew(37430,1412718,"additional photography").
ruolo_crew(37430,1412719,"best boy electric").
ruolo_crew(37430,1412720,"set costumer").
ruolo_crew(37430,1412721,"digital intermediate").
ruolo_crew(37430,1412722,"digital intermediate").
ruolo_crew(37430,1412723,"digital intermediate").
ruolo_crew(37430,1412724,"production accountant").
ruolo_crew(37430,1460603,"compositors").
ruolo_crew(37430,1463182,"vfx artist").
ruolo_crew(37430,1463185,"compositors").
ruolo_crew(37430,1582866,"writer").
ruolo_crew(72571,494,"casting").
ruolo_crew(72571,54248,"writer").
ruolo_crew(72571,54248,"co-producer").
ruolo_crew(72571,84348,"producer").
ruolo_crew(72571,90591,"producer").
ruolo_crew(72571,136068,"director of photography").
ruolo_crew(72571,141483,"visual effects supervisor").
ruolo_crew(72571,142272,"director").
ruolo_crew(72571,142276,"director").
ruolo_crew(72571,148697,"set decoration").
ruolo_crew(72571,169743,"production design").
ruolo_crew(72571,935493,"casting associate").
ruolo_crew(72571,995456,"producer").
ruolo_crew(72571,995462,"editor").
ruolo_crew(72571,1018071,"visual effects editor").
ruolo_crew(72571,1190783,"script supervisor").
ruolo_crew(72571,1314152,"costume design").
ruolo_crew(72571,1377294,"visual effects producer").
ruolo_crew(72571,1407700,"makeup artist").
ruolo_crew(72571,1470524,"makeup department head").
ruolo_crew(72571,1481011,"hair department head").
ruolo_crew(72571,1547185,"property master").
ruolo_crew(72571,1547186,"special effects coordinator").
ruolo_crew(72571,1547188,"costume supervisor").
ruolo_crew(77338,16734,"set decoration").
ruolo_crew(77338,17535,"production design").
ruolo_crew(77338,47817,"sound editor").
ruolo_crew(77338,47818,"sound re-recording mixer").
ruolo_crew(77338,50517,"director of photography").
ruolo_crew(77338,50517,"art direction").
ruolo_crew(77338,70526,"original music composer").
ruolo_crew(77338,84425,"screenplay").
ruolo_crew(77338,84425,"director").
ruolo_crew(77338,84426,"screenplay").
ruolo_crew(77338,84426,"director").
ruolo_crew(77338,94909,"producer").
ruolo_crew(77338,142982,"producer").
ruolo_crew(77338,937260,"producer").
ruolo_crew(77338,1015894,"casting").
ruolo_crew(77338,1031921,"editor").
ruolo_crew(77338,1031922,"costume design").
ruolo_crew(77338,1031923,"novel").
ruolo_crew(77338,1176753,"additional camera").
ruolo_crew(77338,1402244,"sound recordist").
ruolo_crew(77338,1413908,"dolby consultant").
ruolo_crew(77338,1542950,"steadicam operator").
ruolo_crew(77338,1551972,"gaffer").
ruolo_crew(77338,1558394,"still photographer").
ruolo_crew(77338,1621911,"makeup artist").
ruolo_crew(77338,1724196,"assistant art director").
ruolo_crew(77338,1724197,"assistant art director").
ruolo_crew(77338,1724198,"assistant art director").
ruolo_crew(77338,1724199,"property master").
ruolo_crew(77338,1724200,"script supervisor").
ruolo_crew(77338,1724201,"casting").
ruolo_crew(77338,1724202,"additional camera").
ruolo_crew(77338,1724203,"key hair stylist").
ruolo_crew(77338,1724204,"digital intermediate").
ruolo_crew(140420,7879,"producer").
ruolo_crew(140420,7962,"visual development").
ruolo_crew(140420,8020,"director").
ruolo_crew(140420,23486,"original music composer").
ruolo_crew(140420,61421,"art department coordinator").
ruolo_crew(140420,61958,"additional editing").
ruolo_crew(140420,112609,"sound mixer").
ruolo_crew(140420,525908,"writer").
ruolo_crew(140420,928608,"post-production manager").
ruolo_crew(140420,969945,"editor").
ruolo_crew(140420,971858,"writer").
ruolo_crew(140420,1112515,"art direction").
ruolo_crew(140420,1112517,"producer").
ruolo_crew(140420,1397792,"animation").
ruolo_crew(140420,1397844,"sound mixer").
ruolo_crew(140420,1399914,"sound designer").
ruolo_crew(140420,1447376,"animation").
ruolo_crew(140420,1447573,"visual development").
ruolo_crew(140420,1448084,"animation").
ruolo_crew(140420,1454249,"animation").
ruolo_crew(140420,1460479,"animation").
ruolo_crew(140420,1461370,"sound recordist").
ruolo_crew(140420,1461379,"layout").
ruolo_crew(140420,1464355,"thanks").
ruolo_crew(140420,1464408,"production supervisor").
ruolo_crew(81005,582919,"screenplay").
ruolo_crew(81005,9033,"screenplay").
ruolo_crew(81005,188869,"screenplay").
ruolo_crew(81005,582919,"story").
ruolo_crew(81005,9032,"director").
ruolo_crew(81005,42994,"producer").
ruolo_crew(81005,61091,"executive producer").
ruolo_crew(81005,68691,"executive producer").
ruolo_crew(81005,1116283,"executive producer").
ruolo_crew(81005,54211,"executive producer").
ruolo_crew(81005,1196351,"casting").
ruolo_crew(81005,16363,"casting").
ruolo_crew(81005,498,"costume design").
ruolo_crew(81005,23772,"art direction").
ruolo_crew(81005,7790,"art direction").
ruolo_crew(81005,11225,"art direction").
ruolo_crew(81005,8410,"set decoration").
ruolo_crew(81005,23454,"art direction").
ruolo_crew(81005,3276,"casting").
ruolo_crew(81005,42994,"story").
ruolo_crew(81005,1415009,"dialogue editor").
ruolo_crew(81005,986687,"art direction").
ruolo_crew(81005,90281,"executive producer").
ruolo_crew(81005,9039,"associate producer").
ruolo_crew(81005,1457930,"visual effects").
ruolo_crew(81005,9040,"director of photography").
ruolo_crew(81005,9039,"original music composer").
ruolo_crew(81005,1380003,"script supervisor").
ruolo_crew(81005,23651,"production design").
ruolo_crew(81005,1384393,"music editor").
ruolo_crew(81005,1378722,"music editor").
ruolo_crew(81005,1553743,"production sound mixer").
ruolo_crew(81005,8376,"supervising sound editor").
ruolo_crew(81005,1561989,"first assistant sound editor").
ruolo_crew(81005,13165,"sound editor").
ruolo_crew(81005,1378169,"sound re-recording mixer").
ruolo_crew(81005,1341781,"sound re-recording mixer").
ruolo_crew(81005,1378697,"sound re-recording mixer").
ruolo_crew(81005,548435,"sound mixer").
ruolo_crew(81005,7784,"editor").
ruolo_crew(81005,9039,"editor").
ruolo_crew(81005,1548134,"still photographer").
ruolo_crew(81005,1561994,"art department coordinator").
ruolo_crew(81005,1905809,"in memory of").
ruolo_crew(81005,57465,"producer").
ruolo_crew(81005,11874,"producer").
ruolo_crew(81005,9032,"producer").
ruolo_crew(81005,1428913,"hairstylist").
ruolo_crew(81005,1428913,"makeup artist").
ruolo_crew(81005,1428912,"hairstylist").
ruolo_crew(81005,1416448,"makeup artist").
ruolo_crew(81005,1545925,"makeup artist").
ruolo_crew(81005,1428911,"key makeup artist").
ruolo_crew(81005,1411066,"makeup designer").
ruolo_crew(81005,1574044,"makeup artist").
ruolo_crew(81005,1427495,"makeup artist").
ruolo_crew(81005,1905704,"makeup artist").
ruolo_crew(81005,1448306,"hairstylist").
ruolo_crew(81005,1401126,"wigmaker").
ruolo_crew(81005,1512798,"first assistant director").
ruolo_crew(81005,1551770,"carpenter").
ruolo_crew(81005,1905733,"propmaker").
ruolo_crew(81005,1905734,"prop maker").
ruolo_crew(81005,1905735,"prop maker").
ruolo_crew(81005,1335543,"greensman").
ruolo_crew(81005,1525898,"armorer").
ruolo_crew(81005,1905736,"construction coordinator").
ruolo_crew(81005,1458104,"conceptual design").
ruolo_crew(81005,7790,"supervising art director").
ruolo_crew(81005,1334496,"property master").
ruolo_crew(81005,671,"sound effects editor").
ruolo_crew(81005,40773,"boom operator").
ruolo_crew(81005,1077782,"foley").
ruolo_crew(81005,1338223,"boom operator").
ruolo_crew(81005,1364412,"sound effects editor").
ruolo_crew(81005,1539990,"sound recordist").
ruolo_crew(81005,1424606,"adr supervisor").
ruolo_crew(81005,1393329,"special effects coordinator").
ruolo_crew(81005,1545988,"special effects supervisor").
ruolo_crew(81005,1412705,"visual effects producer").
ruolo_crew(81005,1078710,"visual effects supervisor").
ruolo_crew(81005,1905758,"visual effects coordinator").
ruolo_crew(81005,1399633,"visual effects producer").
ruolo_crew(81005,1905765,"visual effects coordinator").
ruolo_crew(81005,1388878,"stunt coordinator").
ruolo_crew(81005,1400092,"aerial director of photography").
ruolo_crew(81005,1583795,"first assistant camera").
ruolo_crew(81005,1738647,"dolly grip").
ruolo_crew(81005,1905781,"dolly grip").
ruolo_crew(81005,1905782,"dolly grip").
ruolo_crew(81005,1402934,"steadicam operator").
ruolo_crew(81005,1781641,"key grip").
ruolo_crew(81005,1790941,"key grip").
ruolo_crew(81005,1408834,"rigging gaffer").
ruolo_crew(81005,1903907,"dolly grip").
ruolo_crew(81005,1324461,"costume supervisor").
ruolo_crew(81005,1905800,"costume coordinator").
ruolo_crew(81005,1338231,"wardrobe supervisor").
ruolo_crew(81005,1458148,"first assistant editor").
ruolo_crew(81005,1548698,"orchestrator").
ruolo_crew(81005,1456359,"dialect coach").
ruolo_crew(81005,1532215,"armorer").
ruolo_crew(81005,1905805,"production controller").
ruolo_crew(81005,1905806,"title designer").
ruolo_crew(81005,1821633,"production coordinator").
ruolo_crew(81005,1829892,"pilot").
ruolo_crew(81005,1551797,"armorer").
ruolo_crew(81005,1576007,"aerial coordinator").
ruolo_crew(205596,471,"production design").
ruolo_crew(205596,15841,"editor").
ruolo_crew(205596,2949,"original music composer").
ruolo_crew(205596,11271,"costume design").
ruolo_crew(205596,40823,"foley").
ruolo_crew(205596,16363,"casting").
ruolo_crew(205596,51898,"director of photography").
ruolo_crew(205596,58283,"camera operator").
ruolo_crew(205596,60335,"supervising art director").
ruolo_crew(205596,77965,"director").
ruolo_crew(205596,221850,"screenplay").
ruolo_crew(205596,221850,"executive producer").
ruolo_crew(205596,999561,"sound designer").
ruolo_crew(205596,1080589,"producer").
ruolo_crew(205596,1337410,"supervising sound editor").
ruolo_crew(205596,1338217,"construction coordinator").
ruolo_crew(205596,1338277,"property master").
ruolo_crew(205596,1340116,"sound re-recording mixer").
ruolo_crew(205596,1359989,"makeup artist").
ruolo_crew(205596,1367562,"still photographer").
ruolo_crew(205596,1376803,"visual effects supervisor").
ruolo_crew(205596,1384721,"art direction").
ruolo_crew(205596,1384722,"art direction").
ruolo_crew(205596,1384723,"producer").
ruolo_crew(205596,1384724,"producer").
ruolo_crew(205596,1384725,"co-producer").
ruolo_crew(205596,1390382,"music editor").
ruolo_crew(205596,1405798,"steadicam operator").
ruolo_crew(205596,1410205,"script supervisor").
ruolo_crew(205596,1416452,"dialogue editor").
ruolo_crew(205596,1424794,"camera operator").
ruolo_crew(205596,1430497,"second unit cinematographer").
ruolo_crew(205596,1437152,"makeup artist").
ruolo_crew(205596,1437153,"makeup artist").
ruolo_crew(205596,1437155,"assistant art director").
ruolo_crew(205596,1437156,"sound effects editor").
ruolo_crew(205596,1437159,"sound re-recording mixer").
ruolo_crew(205596,1437160,"visual effects producer").
ruolo_crew(205596,1437161,"visual effects supervisor").
ruolo_crew(205596,1437162,"digital intermediate").
ruolo_crew(205596,1437164,"dialect coach").
ruolo_crew(205596,1437168,"location manager").
ruolo_crew(205596,1437169,"production manager").
ruolo_crew(68737,130938,"director").
ruolo_crew(68737,1123892,"novel").
ruolo_crew(68737,1080778,"screenplay").
ruolo_crew(68737,29606,"screenplay").
ruolo_crew(68737,1997,"screenplay").
ruolo_crew(68737,1378249,"executive producer").
ruolo_crew(68737,328645,"associate producer").
ruolo_crew(68737,1392959,"executive producer").
ruolo_crew(68737,1392960,"associate producer").
ruolo_crew(68737,67759,"producer").
ruolo_crew(68737,61091,"executive producer").
ruolo_crew(68737,1382496,"co-producer").
ruolo_crew(68737,54211,"producer").
ruolo_crew(68737,41289,"producer").
ruolo_crew(68737,7229,"music").
ruolo_crew(68737,1355894,"visual effects").
ruolo_crew(68737,1460672,"post production supervisor").
ruolo_crew(68737,5362,"casting").
ruolo_crew(68737,2031,"casting").
ruolo_crew(68737,5363,"casting").
ruolo_crew(68737,958488,"costume design").
ruolo_crew(68737,25061,"art direction").
ruolo_crew(68737,23770,"art direction").
ruolo_crew(68737,129876,"art direction").
ruolo_crew(68737,23414,"art direction").
ruolo_crew(68737,11818,"art direction").
ruolo_crew(68737,1499157,"art direction").
ruolo_crew(68737,1499158,"art direction").
ruolo_crew(68737,6207,"art direction").
ruolo_crew(68737,1311175,"art direction").
ruolo_crew(68737,77513,"art direction").
ruolo_crew(68737,27220,"art direction").
ruolo_crew(68737,2366,"production design").
ruolo_crew(68737,11021,"set decoration").
ruolo_crew(68737,1492146,"hairstylist").
ruolo_crew(68737,32490,"hairstylist").
ruolo_crew(68737,1314465,"hairstylist").
ruolo_crew(68737,1499159,"hairstylist").
ruolo_crew(68737,1441272,"makeup department head").
ruolo_crew(68737,1314465,"makeup artist").
ruolo_crew(68737,1415333,"makeup artist").
ruolo_crew(68737,9040,"director of photography").
ruolo_crew(68737,1415634,"second unit cinematographer").
ruolo_crew(68737,1401595,"gaffer").
ruolo_crew(68737,47102,"second unit cinematographer").
ruolo_crew(68737,1405389,"helicopter camera").
ruolo_crew(68737,91122,"helicopter camera").
ruolo_crew(68737,1378716,"still photographer").
ruolo_crew(68737,1033102,"lighting technician").
ruolo_crew(68737,1499160,"animation supervisor").
ruolo_crew(68737,1320977,"costume supervisor").
ruolo_crew(68737,1378719,"set costumer").
ruolo_crew(68737,1394760,"script supervisor").
ruolo_crew(68737,60711,"executive producer").
ruolo_crew(68737,17831,"supervising art director").
ruolo_crew(277685,23430,"producer").
ruolo_crew(277685,84348,"executive producer").
ruolo_crew(277685,86688,"director").
ruolo_crew(277685,583464,"production manager").
ruolo_crew(277685,583464,"location manager").
ruolo_crew(277685,935493,"casting").
ruolo_crew(277685,1194701,"additional editing").
ruolo_crew(277685,1300755,"sound re-recording mixer").
ruolo_crew(277685,1340318,"sound designer").
ruolo_crew(277685,1347823,"producer").
ruolo_crew(277685,1347823,"writer").
ruolo_crew(277685,1347824,"director of photography").
ruolo_crew(277685,1347824,"co-producer").
ruolo_crew(277685,1347952,"stunts").
ruolo_crew(277685,1385059,"co-executive producer").
ruolo_crew(277685,1401857,"post production assistant").
ruolo_crew(277685,1412386,"editor").
ruolo_crew(277685,1423409,"stunt coordinator").
ruolo_crew(277685,1453878,"editor").
ruolo_crew(277685,1453879,"production design").
ruolo_crew(277685,1453880,"art direction").
ruolo_crew(277685,1453881,"costume design").
ruolo_crew(277685,1453882,"makeup artist").
ruolo_crew(277685,1453883,"sound mixer").
ruolo_crew(277685,1453884,"sound engineer").
ruolo_crew(277685,1453892,"dialogue editor").
ruolo_crew(277685,1453893,"sound engineer").
ruolo_crew(277685,1453894,"mixing engineer").
ruolo_crew(277685,1453896,"sound editor").
ruolo_crew(277685,1453896,"sound re-recording mixer").
ruolo_crew(277685,1453899,"boom operator").
ruolo_crew(277685,1453901,"boom operator").
ruolo_crew(277685,1453903,"stunts").
ruolo_crew(277685,1453903,"stand in").
ruolo_crew(277685,1453905,"stunts").
ruolo_crew(277685,1453907,"digital producer").
ruolo_crew(277685,1453915,"production office assistant").
ruolo_crew(277685,1453916,"production office assistant").
ruolo_crew(277685,1453917,"script supervisor").
ruolo_crew(277685,1456598,"stunts").
ruolo_crew(277685,1491178,"associate producer").
ruolo_crew(287424,1354171,"director").
ruolo_crew(287424,1453641,"writer").
ruolo_crew(287424,1391642,"producer").
ruolo_crew(287424,1371037,"producer").
ruolo_crew(287424,1465052,"producer").
ruolo_crew(287424,18186,"producer").
ruolo_crew(287424,1100,"producer").
ruolo_crew(287424,1465055,"producer").
ruolo_crew(287424,937895,"original music composer").
ruolo_crew(287424,55079,"director of photography").
ruolo_crew(287424,1055498,"editor").
ruolo_crew(287424,1176140,"casting").
ruolo_crew(287424,1319523,"production design").
ruolo_crew(287424,1253678,"set decoration").
ruolo_crew(287424,1017017,"costume design").
ruolo_crew(287424,1425326,"makeup effects").
ruolo_crew(287424,1265230,"makeup effects").
ruolo_crew(287424,1414088,"makeup effects").
ruolo_crew(287424,1340090,"makeup effects").
ruolo_crew(287424,1205705,"production supervisor").
ruolo_crew(287424,1121974,"associate producer").
ruolo_crew(287424,1418414,"associate producer").
ruolo_crew(287424,1024836,"executive producer").
ruolo_crew(287424,65814,"executive producer").
ruolo_crew(287424,132209,"executive producer").
ruolo_crew(287424,1465058,"executive producer").
ruolo_crew(287424,1465059,"executive producer").
ruolo_crew(287424,1453641,"executive producer").
ruolo_crew(287424,62238,"executive producer").
ruolo_crew(287424,1465061,"executive producer").
ruolo_crew(287424,94047,"executive producer").
ruolo_crew(287424,1465060,"producer").
ruolo_crew(287424,68172,"art direction").
ruolo_crew(287424,1418405,"costume supervisor").
ruolo_crew(287424,3498,"producer").
ruolo_crew(287424,1533532,"music supervisor").
ruolo_crew(287424,1404197,"script supervisor").
ruolo_crew(287424,1319524,"assistant art director").
ruolo_crew(287424,1539756,"construction coordinator").
ruolo_crew(287424,1393375,"leadman").
ruolo_crew(287424,1539757,"special effects coordinator").
ruolo_crew(287424,1539758,"visual effects coordinator").
ruolo_crew(287424,1539759,"visual effects coordinator").
ruolo_crew(287424,1539760,"visual effects coordinator").
ruolo_crew(287424,1539761,"visual effects producer").
ruolo_crew(287424,1428906,"visual effects editor").
ruolo_crew(287424,1539762,"visual effects supervisor").
ruolo_crew(287424,1539763,"visual effects supervisor").
ruolo_crew(287424,1539764,"visual effects supervisor").
ruolo_crew(287424,1194884,"second unit cinematographer").
ruolo_crew(287424,1407738,"camera operator").
ruolo_crew(287424,1393860,"gaffer").
ruolo_crew(287424,1367135,"gaffer").
ruolo_crew(287424,1537179,"still photographer").
ruolo_crew(287424,1539765,"first assistant camera").
ruolo_crew(287424,1463775,"first assistant camera").
ruolo_crew(287424,1406292,"set costumer").
ruolo_crew(287424,1002564,"digital intermediate").
ruolo_crew(287424,1350236,"dialogue editor").
ruolo_crew(287424,1539768,"foley").
ruolo_crew(287424,1369374,"foley").
ruolo_crew(287424,1338484,"sound designer").
ruolo_crew(287424,1335147,"sound effects editor").
ruolo_crew(287424,1350237,"sound effects editor").
ruolo_crew(287424,1495179,"sound effects editor").
ruolo_crew(287424,1415330,"hair department head").
ruolo_crew(287424,1402708,"key hair stylist").
ruolo_crew(287424,1401757,"key hair stylist").
ruolo_crew(287424,1404190,"makeup department head").
ruolo_crew(287424,1304298,"makeup artist").
ruolo_crew(287424,1418349,"makeup artist").
ruolo_crew(287424,1338480,"foley").
ruolo_crew(264644,465,"executive producer").
ruolo_crew(264644,11295,"casting").
ruolo_crew(264644,23545,"casting").
ruolo_crew(264644,43144,"executive producer").
ruolo_crew(264644,43147,"producer").
ruolo_crew(264644,56021,"director of photography").
ruolo_crew(264644,75828,"production manager").
ruolo_crew(264644,83281,"director").
ruolo_crew(264644,92234,"stunt coordinator").
ruolo_crew(264644,90693,"costume design").
ruolo_crew(264644,198641,"production design").
ruolo_crew(264644,551482,"original music composer").
ruolo_crew(264644,967559,"art direction").
ruolo_crew(264644,1116093,"executive producer").
ruolo_crew(264644,1167206,"editor").
ruolo_crew(264644,1310031,"screenplay").
ruolo_crew(264644,1310031,"executive producer").
ruolo_crew(264644,1310031,"novel").
ruolo_crew(264644,1375896,"producer").
ruolo_crew(264644,1375897,"executive producer").
ruolo_crew(264644,1492086,"executive producer").
ruolo_crew(264644,1492088,"executive producer").
ruolo_crew(264644,1492089,"set decoration").
ruolo_crew(264644,1510491,"stunt coordinator").
ruolo_crew(329833,15009,"writer").
ruolo_crew(329833,2997,"producer").
ruolo_crew(329833,3184,"producer").
ruolo_crew(329833,7233,"producer").
ruolo_crew(329833,10572,"music").
ruolo_crew(329833,7399,"director").
ruolo_crew(329833,7399,"producer").
ruolo_crew(329833,7399,"writer").
ruolo_crew(329833,14376,"editor").
ruolo_crew(329833,15348,"cinematography").
ruolo_crew(329833,17871,"writer").
ruolo_crew(329833,22302,"producer").
ruolo_crew(329833,52934,"writer").
ruolo_crew(329833,119177,"line producer").
ruolo_crew(329833,1759010,"associate producer").
ruolo_crew(329833,1759012,"associate producer").
ruolo_crew(329833,1759015,"associate producer").
ruolo_crew(369557,45117,"director").
ruolo_crew(369557,45117,"writer").
ruolo_crew(369557,783230,"director of photography").
ruolo_crew(369557,1539218,"editor").
ruolo_crew(369557,4868,"editor").
ruolo_crew(369557,983911,"casting").
ruolo_crew(369557,15732,"production design").
ruolo_crew(369557,45121,"art direction").
ruolo_crew(369557,45121,"set decoration").
ruolo_crew(369557,45123,"costume design").
ruolo_crew(369557,1122012,"line producer").
ruolo_crew(369557,1658523,"associate producer").
ruolo_crew(369557,1658524,"associate producer").
ruolo_crew(369557,321,"producer").
ruolo_crew(369557,45117,"producer").
ruolo_crew(369557,94456,"producer").
ruolo_crew(369557,1658525,"producer").
ruolo_crew(369557,45118,"producer").
ruolo_crew(369557,1413502,"producer").
ruolo_crew(369557,55418,"producer").
ruolo_crew(369557,59839,"executive producer").
ruolo_crew(369557,1307,"executive producer").
ruolo_crew(369557,43142,"executive producer").
ruolo_crew(369557,1427496,"makeup artist").
ruolo_crew(369557,1723011,"key hair stylist").
ruolo_crew(369557,1118382,"stunt coordinator").
ruolo_crew(369557,1534134,"stunts").
ruolo_crew(369557,1608146,"casting assistant").
ruolo_crew(369557,1569647,"casting associate").
ruolo_crew(369557,1403710,"script supervisor").
ruolo_crew(369557,41039,"thanks").
ruolo_crew(369557,33684,"thanks").
ruolo_crew(369557,82426,"thanks").
ruolo_crew(369557,1415042,"steadicam operator").
ruolo_crew(403119,1307,"executive producer").
ruolo_crew(403119,59839,"executive producer").
ruolo_crew(403119,4584,"executive producer").
ruolo_crew(403119,60891,"original music composer").
ruolo_crew(403119,70522,"executive producer").
ruolo_crew(403119,71952,"associate producer").
ruolo_crew(403119,100734,"director").
ruolo_crew(403119,100734,"writer").
ruolo_crew(403119,111121,"associate producer").
ruolo_crew(403119,238120,"casting").
ruolo_crew(403119,239663,"producer").
ruolo_crew(403119,574352,"associate producer").
ruolo_crew(403119,1060635,"co-producer").
ruolo_crew(403119,1121984,"executive producer").
ruolo_crew(403119,1121985,"co-producer").
ruolo_crew(403119,1301112,"writer").
ruolo_crew(403119,1312279,"editor").
ruolo_crew(403119,1346142,"executive producer").
ruolo_crew(403119,1389974,"set decoration").
ruolo_crew(403119,1394055,"associate producer").
ruolo_crew(403119,1408391,"director of photography").
ruolo_crew(403119,1417913,"art direction").
ruolo_crew(403119,1458548,"production design").
ruolo_crew(403119,1531696,"associate producer").
ruolo_crew(403119,1575766,"producer").
ruolo_crew(403119,1639168,"executive producer").
ruolo_crew(403119,1658452,"art direction").
ruolo_crew(403119,1658453,"costume design").
ruolo_crew(403119,1658454,"associate producer").
ruolo_crew(403119,1658455,"executive producer").
ruolo_crew(403119,1658456,"executive producer").
ruolo_crew(403119,1658457,"executive producer").
ruolo_crew(343611,500,"producer").
ruolo_crew(343611,4197,"production design").
ruolo_crew(343611,909,"editor").
ruolo_crew(343611,9181,"screenplay").
ruolo_crew(343611,9181,"director").
ruolo_crew(343611,9182,"screenplay").
ruolo_crew(343611,9033,"producer").
ruolo_crew(343611,11409,"director of photography").
ruolo_crew(343611,15332,"supervising sound editor").
ruolo_crew(343611,16601,"visual effects supervisor").
ruolo_crew(343611,22814,"screenplay").
ruolo_crew(343611,56737,"producer").
ruolo_crew(343611,91932,"aerial coordinator").
ruolo_crew(343611,149960,"second unit director of photography").
ruolo_crew(343611,227440,"original music composer").
ruolo_crew(343611,578730,"key hair stylist").
ruolo_crew(343611,960673,"supervising art director").
ruolo_crew(343611,1046602,"art direction").
ruolo_crew(343611,1056052,"novel").
ruolo_crew(343611,1069869,"key makeup artist").
ruolo_crew(343611,1099633,"sound effects editor").
ruolo_crew(343611,1127957,"visual effects producer").
ruolo_crew(343611,1203712,"visual effects editor").
ruolo_crew(343611,1319157,"set costumer").
ruolo_crew(343611,1319844,"costume design").
ruolo_crew(343611,1322011,"set costumer").
ruolo_crew(343611,1332515,"steadicam operator").
ruolo_crew(343611,1333932,"local casting").
ruolo_crew(343611,1338372,"foley").
ruolo_crew(343611,1338976,"sound re-recording mixer").
ruolo_crew(343611,1339439,"art department coordinator").
ruolo_crew(343611,1367493,"foley").
ruolo_crew(343611,1367502,"gaffer").
ruolo_crew(343611,1368889,"key costumer").
ruolo_crew(343611,1384375,"visual effects producer").
ruolo_crew(343611,1389139,"still photographer").
ruolo_crew(343611,1393372,"construction coordinator").
ruolo_crew(343611,1394750,"visual effects producer").
ruolo_crew(343611,1397725,"set decoration").
ruolo_crew(343611,1399477,"costume supervisor").
ruolo_crew(343611,1400088,"music editor").
ruolo_crew(343611,1401720,"visual effects supervisor").
ruolo_crew(343611,1403413,"camera operator").
ruolo_crew(343611,1403415,"aerial director of photography").
ruolo_crew(343611,1404808,"makeup department head").
ruolo_crew(343611,1411066,"makeup artist").
ruolo_crew(343611,1411271,"camera operator").
ruolo_crew(343611,1412722,"digital intermediate").
ruolo_crew(343611,1414151,"camera operator").
ruolo_crew(343611,1416155,"sound re-recording mixer").
ruolo_crew(343611,1423004,"music editor").
ruolo_crew(343611,1425341,"rigging gaffer").
ruolo_crew(343611,1431552,"hair department head").
ruolo_crew(343611,1434568,"set costumer").
ruolo_crew(343611,1437305,"camera operator").
ruolo_crew(343611,1440877,"special effects supervisor").
ruolo_crew(343611,1456041,"sound re-recording mixer").
ruolo_crew(343611,1457949,"art direction").
ruolo_crew(343611,1463400,"boom operator").
ruolo_crew(343611,1463424,"animation").
ruolo_crew(343611,1463796,"set costumer").
ruolo_crew(343611,1463809,"digital intermediate").
ruolo_crew(343611,1466663,"costume supervisor").
ruolo_crew(343611,1484989,"ager/dyer").
ruolo_crew(343611,1533054,"property master").
ruolo_crew(343611,1548389,"adr supervisor").
ruolo_crew(343611,1548460,"key costumer").
ruolo_crew(343611,1558090,"visual effects coordinator").
ruolo_crew(343611,1564250,"foley").
ruolo_crew(343611,1573031,"visual effects editor").
ruolo_crew(343611,1599066,"casting associate").
ruolo_crew(343611,1644256,"visual effects coordinator").
ruolo_crew(343611,1646230,"armorer").
ruolo_crew(343611,1729038,"gaffer").
ruolo_crew(343611,1729039,"rigging grip").
ruolo_crew(343611,1738103,"aerial camera technician").
ruolo_crew(343611,1738653,"visual effects producer").
ruolo_crew(343611,1757620,"casting associate").
ruolo_crew(343611,1757626,"dolly grip").
ruolo_crew(343611,1759758,"aerial camera technician").
ruolo_crew(343611,1768939,"armorer").
ruolo_crew(343611,1768941,"animal coordinator").
ruolo_crew(343611,1768942,"costume coordinator").
ruolo_crew(343611,1768944,"key costumer").
ruolo_crew(343611,1768945,"seamstress").
ruolo_crew(343611,1768948,"hair department head").
ruolo_crew(343611,1768950,"hairstylist").
ruolo_crew(343611,1768952,"visual effects coordinator").
ruolo_crew(343611,1768953,"visual effects coordinator").
ruolo_crew(343611,1768954,"visual effects coordinator").
ruolo_crew(343611,1768955,"visual effects producer").
ruolo_crew(343611,1768956,"visual effects producer").
ruolo_crew(343611,1768957,"visual effects supervisor").
ruolo_crew(343611,1769079,"boom operator").
ruolo_crew(343611,1769087,"rigging grip").
ruolo_crew(343611,1769089,"rigging grip").
ruolo_crew(343611,1769091,"rigging grip").
ruolo_crew(343611,1769093,"still photographer").
ruolo_crew(343611,1769095,"dolly grip").
ruolo_crew(343611,1769096,"dolly grip").
ruolo_crew(343611,1769097,"dolly grip").
ruolo_crew(343611,1769098,"dolly grip").
ruolo_crew(343611,1769100,"first assistant editor").
ruolo_crew(334543,1307,"executive producer").
ruolo_crew(334543,59839,"executive producer").
ruolo_crew(334543,15330,"hairstylist").
ruolo_crew(334543,21390,"executive producer").
ruolo_crew(334543,37268,"screenplay").
ruolo_crew(334543,37270,"producer").
ruolo_crew(334543,37276,"producer").
ruolo_crew(334543,37277,"line producer").
ruolo_crew(334543,61630,"editor").
ruolo_crew(334543,67113,"director of photography").
ruolo_crew(334543,75151,"dialogue editor").
ruolo_crew(334543,75477,"line producer").
ruolo_crew(334543,80680,"production design").
ruolo_crew(334543,137220,"producer").
ruolo_crew(334543,147855,"digital intermediate").
ruolo_crew(334543,214356,"executive producer").
ruolo_crew(334543,233130,"music").
ruolo_crew(334543,1001794,"executive producer").
ruolo_crew(334543,1023809,"music").
ruolo_crew(334543,1173102,"director").
ruolo_crew(334543,1191326,"set decoration").
ruolo_crew(334543,1196121,"costume design").
ruolo_crew(334543,1198829,"casting").
ruolo_crew(334543,1308567,"camera operator").
ruolo_crew(334543,1311620,"prosthetic makeup artist").
ruolo_crew(334543,1336767,"art department coordinator").
ruolo_crew(334543,1395454,"visual effects producer").
ruolo_crew(334543,1402740,"foley").
ruolo_crew(334543,1410551,"sound designer").
ruolo_crew(334543,1419234,"sound effects editor").
ruolo_crew(334543,1431513,"vfx supervisor").
ruolo_crew(334543,1450272,"book").
ruolo_crew(334543,1452994,"animation").
ruolo_crew(334543,1460254,"drone operator").
ruolo_crew(334543,1505079,"foley").
ruolo_crew(334543,1505086,"music supervisor").
ruolo_crew(334543,1516456,"casting associate").
ruolo_crew(334543,1555186,"costume supervisor").
ruolo_crew(334543,1555211,"key makeup artist").
ruolo_crew(334543,1569342,"steadicam operator").
ruolo_crew(334543,1578021,"sound recordist").
ruolo_crew(334543,1644252,"aerial camera (suggest in addition to helicopter camera)").
ruolo_crew(334543,1660308,"visual effects supervisor").
ruolo_crew(334543,1689963,"music editor").
ruolo_crew(334543,1708703,"key makeup artist").
ruolo_crew(334543,1717739,"cg supervisor").
ruolo_crew(334543,1729046,"visual effects coordinator").
ruolo_crew(334543,1735820,"casting").
ruolo_crew(334543,1735822,"set decoration").
ruolo_crew(334543,1735825,"script supervisor").
ruolo_crew(334543,1735827,"music editor").
ruolo_crew(334543,1735830,"key costumer").
ruolo_crew(334543,1735832,"gaffer").
ruolo_crew(334543,1735833,"first assistant camera").
ruolo_crew(334543,1735855,"animation").
ruolo_crew(334543,1735857,"key makeup artist").
ruolo_crew(334543,1735859,"first assistant editor").
ruolo_crew(334543,1764991,"associate producer").
ruolo_crew(334543,1764992,"associate producer").
ruolo_crew(334543,1764993,"executive producer").

%attore(Nome,Id,Gender)
attore("kevin pollak",7166,2).
attore("diane keaton",3092,1).
attore("al pacino",1158,2).
attore("robert de niro",380,2).
attore("ted levine",15854,2).
attore("william fichtner",886,2).
attore("paul herman",58535,2).
attore("philip ettington",1584544,2).
attore("paul giamatti",13242,2).
attore("miriam colón",1163,1).
attore("sean bean",48,2).
attore("frank welker",15831,2).
attore("anthony hopkins",4173,2).
attore("joan allen",11148,1).
attore("james woods",4512,2).
attore("matthew modine",8654,2).
attore("harris yulin",1166,2).
attore("joe pesci",4517,2).
attore("clem caserta",17921,0).
attore("tim roth",3129,2).
attore("bruce willis",62,2).
attore("quentin tarantino",138,2).
attore("lawrence bender",2545,2).
attore("kathy griffin",3138,1).
attore("paul calderon",3137,2).
attore("salma hayek",3136,1).
attore("jim carrey",206,2).
attore("aida turturro",106791,0).
attore("bill nunn",5502,2).
attore("john travolta",8891,2).
attore("john rothman",60205,2).
attore("julianne moore",1231,1).
attore("kenneth branagh",11181,2).
attore("cloris leachman",9599,1).
attore("janeane garofalo",21197,1).
attore("ron perlman",2372,2).
attore("michelle pfeiffer",1160,1).
attore("elizabeth mcgovern",4513,1).
attore("tom hulce",3999,2).
attore("hugo weaving",1331,2).
attore("steven waddington",27764,2).
attore("susan sarandon",4038,1).
attore("jack black",70851,2).
attore("clancy brown",6574,2).
attore("ian mckellen",1327,2).
attore("cary-hiroyuki tagawa",11398,2).
attore("nicole kidman",2227,1).
attore("alison folland",2841,1).
attore("derrick o connor",14325,2).
attore("morgan freeman",192,2).
attore("kevin spacey",1979,2).
attore("john cassini",12055,2).
attore("leland orser",2221,2).
attore("gene borkan",152638,2).
attore("lennie loftin",42200,2).
attore("charles a. tamburro",16563,0).
attore("john kassir",31365,2).
attore("christian bale",3894,2).
attore("pete postlethwaite",4935,2).
attore("ron gilbert",1235937,0).
attore("helena bonham carter",1283,1).
attore("f. murray abraham",1164,2).
attore("michael rapaport",4688,2).
attore("malcolm mcdowell",56890,2).
attore("charles durning",1466,2).
attore("david keith",18181,2).
attore("kiefer sutherland",2628,2).
attore("william h. macy",3905,2).
attore("rose mcgowan",16850,1).
attore("mary elizabeth mastrantonio",1161,1).
attore("tom lister jr.",8396,2).
attore("michael clarke duncan",61981,2).
attore("george clooney",1461,2).
attore("harvey keitel",1037,2).
attore("brenda hillhouse",11162,0).
attore("kelly preston",11164,1).
attore("cristos",139997,0).
attore("mike moroff",100260,2).
attore("eric stoltz",7036,2).
attore("aldis hodge",83860,0).
attore("jack nicholson",514,2).
attore("joseph gordon-levitt",24045,2).
attore("william forsythe",4520,2).
attore("treat williams",4515,2).
attore("steve buscemi",884,2).
attore("christopher walken",4690,2).
attore("brooke smith",31649,1).
attore("jeff bridges",1229,2).
attore("glenn shadix",13243,2).
attore("john malkovich",6949,2).
attore("bronagh gallagher",33399,0).
attore("uma thurman",139,1).
attore("pruitt taylor vince",3201,2).
attore("richard bright",3174,2).
attore("frank whaley",11805,2).
attore("shaun toub",17857,2).
attore("saïd taghmaoui",5419,0).
attore("lee whitlock",1243685,2).
attore("danny aiello",1004,2).
attore("owen wilson",887,2).
attore("james caan",3085,2).
attore("ben stiller",7399,2).
attore("clint eastwood",190,2).
attore("naomi campbell",56367,1).
attore("kate moss",533007,1).
attore("anna wintour",89815,0).
attore("niall o brien",104758,0).
attore("jodie foster",1038,1).
attore("joe spinell",16525,2).
attore("harry northup",127738,2).
attore("daniel von bargen",1473,2).
attore("joe pantoliano",532,2).
attore("george segal",18364,2).
attore("colin farrell",72466,2).
attore("holt mccallany",7497,2).
attore("connie britton",86310,1).
attore("will smith",2888,2).
attore("stephen lang",32747,2).
attore("leonardo dicaprio",6193,2).
attore("mark wahlberg",13240,2).
attore("chris ellis",8191,2).
attore("roger corman",102429,2).
attore("tim kelleher",72864,2).
attore("lawrence t. wrentz",192268,0).
attore("bruce campbell",11357,2).
attore("viggo mortensen",110,2).
attore("samuel l. jackson",2231,2).
attore("nicky katt",18070,2).
attore("valentine pelka",52375,2).
attore("m. emmet walsh",588,2).
attore("diane lane",2882,1).
attore("ewen bremner",1125,2).
attore("stanley tucci",2283,2).
attore("abe vigoda",3093,2).
attore("charles napier",16119,2).
attore("serge houde",41746,2).
attore("jason lee",11662,2).
attore("ben affleck",880,2).
attore("michael rooker",12132,2).
attore("kevin smith",19303,2).
attore("stan lee",7624,2).
attore("diane baker",6930,0).
attore("tony perez",78498,2).
attore("guillermo díaz",8695,2).
attore("amanda plummer",99,1).
attore("scott glenn",349,2).
attore("peter friedman",54246,2).
attore("gary oldman",64,2).
attore("robert duvall",3087,2).
attore("greg collins",58950,2).
attore("john leguizamo",5723,2).
attore("peter greene",11803,2).
attore("gerard murphy",151943,0).
attore("anthony heald",16293,2).
attore("saffron burrows",9825,0).
attore("aidan gillen",49735,2).
attore("marlon brando",3084,2).
attore("brent hinkley",7134,2).
attore("lisa marie",4452,1).
attore("kevin kline",8945,2).
attore("françois cluzet",33161,0).
attore("richard anderson",12312,2).
attore("jed brophy",173451,0).
attore("jerry stiller",26042,2).
attore("tom cruise",500,2).
attore("andrew tiernan",17290,2).
attore("arnold schwarzenegger",1100,2).
attore("misa koprova",198878,0).
attore("donn lamkin",1254364,0).
attore("ving rhames",10182,2).
attore("david prowse",24342,2).
attore("ian holm",65,2).
attore("john cleese",8930,0).
attore("richard foronjy",47771,2).
attore("brad dourif",1370,2).
attore("sean bridgers",144160,2).
attore("billy zane",1954,2).
attore("cliff curtis",7248,2).
attore("stuart rudin",94435,0).
attore("maria de medeiros",2319,1).
attore("rosanna arquette",2165,1).
attore("duane whitaker",11804,2).
attore("angela jones",71836,1).
attore("phil lamarr",31549,2).
attore("laura lovelace",11807,0).
attore("burr steers",58552,0).
attore("jerome patrick hoban",1174004,2).
attore("michael gilden",1174003,2).
attore("gary shorelle",1174007,0).
attore("susan griffiths",1174000,1).
attore("eric clark",1174001,0).
attore("joseph pilato",54855,2).
attore("brad blumenthal",1174008,2).
attore("lorelei leslie",1099751,1).
attore("emil sitka",107023,0).
attore("chandler lindauer",1174002,0).
attore("sy sher",1174006,0).
attore("robert ruth",1173999,0).
attore("rich turner",46346,0).
attore("don blakely",90337,2).
attore("carl allen",1174005,0).
attore("karen maruyama",157865,1).
attore("venessia valentino",1174009,1).
attore("linda kaye",65907,1).
attore("stephen hibbert",1173998,2).
attore("alexis arquette",19578,1).
attore("julia sweeney",11806,1).
attore("cie allman",1274295,1).
attore("rene beard",1177915,2).
attore("lori pizzo",1274296,1).
attore("glendon rich",1274297,2).
attore("devan richardson",1274298,0).
attore("ani sava",1274299,1).
attore("john bennett",47547,2).
attore("mario cantone",57551,2).
attore("toshir mifune",7450,2).
attore("thomas kretschmann",3491,2).
attore("woody strode",4963,2).
attore("zbigniew zamachowski",1145,2).
attore("darlanne fluegel",4761,1).
attore("eric roberts",21315,2).
attore("kurt russell",6856,2).
attore("djimon hounsou",938,2).
attore("erick avari",18917,2).
attore("wendy crewson",19957,1).
attore("ewan mcgregor",3061,2).
attore("kevin mcdonald",58955,2).
attore("kristen fick",1748085,1).
attore("alan ruck",2394,2).
attore("thomas dekker",34199,2).
attore("clarence williams iii",15864,2).
attore("shelley duvall",10409,0).
attore("joe morton",3977,2).
attore("louise fletcher",7071,1).
attore("elijah wood",109,2).
attore("callum keith rennie",540,2).
attore("daniel lapaine",3072,2).
attore("mark margolis",1173,2).
attore("bai ling",39126,1).
attore("jennifer connelly",6161,1).
attore("robert loggia",1162,2).
attore("dan butler",76470,2).
attore("jason scott lee",58319,2).
attore("matthew broderick",4756,2).
attore("chris isaak",6591,2).
attore("orestes matacena",53403,2).
attore("jon favreau",15277,2).
attore("jason robards",4765,2).
attore("harry o reilly",28101,2).
attore("sean astin",1328,2).
attore("charlton heston",10017,2).
attore("betty buckley",52462,1).
attore("gary carlos cervantes",48136,2).
attore("tony king",55672,2).
attore("david warner",2076,2).
attore("hayden christensen",17244,2).
attore("ian abercrombie",11764,2).
attore("keith gibbs",134772,0).
attore("james russo",785,2).
attore("bill nighy",2440,2).
attore("diedrich bader",5727,2).
attore("lia d. mortensen",1360033,1).
attore("loyd catlett",2277,2).
attore("jorge porcel",47772,2).
attore("ángel salazar",1167,2).
attore("al israel",1171,2).
attore("dean rader duval",1279744,2).
attore("michael p. moran",1170,2).
attore("stephen root",17401,2).
attore("milla jovovich",63,1).
attore("doug ballard",1232399,0).
attore("kasi lemmons",51864,1).
attore("barbara garrick",12932,1).
attore("ron dean",57597,2).
attore("danny goldring",16477,2).
attore("sal richards",1237372,0).
attore("rodney a. grant",7853,2).
attore("joely richardson",20810,1).
attore("andy dick",43120,2).
attore("will zahrn",1226696,0).
attore("adrien brody",3490,2).
attore("charles dance",4391,2).
attore("david wenham",1371,2).
attore("richard belzer",32396,2).
attore("keith szarabajka",87957,2).
attore("ron vawter",32592,2).
attore("obba babatundé",52057,2).
attore("andre b. blake",552526,2).
attore("paul lazar",138988,2).
attore("lauren roselli",1281000,0).
attore("tracey walter",3801,2).
attore("buzz kilman",59329,0).
attore("kenneth utt",16298,2).
attore("jim roche",1280989,0).
attore("peter vaughan",386,2).
attore("mario machado",44050,2).
attore("jacqueline mckenzie",28744,1).
attore("anthony michael hall",1904,2).
attore("tom berenger",13022,2).
attore("joe turkel",592,0).
attore("colm feore",10132,2).
attore("paul ben-victor",85142,2).
attore("buck taylor",71562,2).
attore("stellan skarsgård",1640,2).
attore("christine taylor",15286,1).
attore("robert patrick",418,2).
attore("christopher fairbank",8399,2).
attore("frankie faison",13936,2).
attore("danny darst",183640,2).
attore("alex coleman",1280997,0).
attore("lawrence a. bonney",1280985,0).
attore("don brockett",31118,0).
attore("frank seals jr.",1280986,0).
attore("masha skorobogatov",1280987,0).
attore("jeffrie lane",1280988,0).
attore("leib lensky",68927,0).
attore("george  red  schwartz",68926,0).
attore("james b. howard",1280990,0).
attore("bill miller",174914,2).
attore("chuck aber",102805,0).
attore("pat mcnamara",1174793,0).
attore("darla",1280991,0).
attore("adelle lutz",1041787,1).
attore("george michael",1280992,0).
attore("jim dratfield",175082,0).
attore("stanton-miranda",1280995,0).
attore("rebecca saxon",1280996,0).
attore("cynthia ettinger",1212913,0).
attore("steve wyatt",1111682,0).
attore("david early",15074,2).
attore("bill dalzell",1280998,0).
attore("tommy lafitte",1219514,0).
attore("josh broder",1280999,0).
attore("maria skorobogatov",1447788,0).
attore("lamont arnold",1281001,0).
attore("john hall",102809,0).
attore("ted monte",97902,2).
attore("george a. romero",14999,2).
attore("john w. iwanonkiw",1098036,2).
attore("mark strong",2983,2).
attore("scatman crothers",7077,2).
attore("vito scotti",82779,2).
attore("eli wallach",3265,2).
attore("steven bauer",1159,2).
attore("aasif mandvi",20644,2).
attore("dave foley",21290,0).
attore("dee bradley baker",23680,2).
attore("fabio testi",21181,2).
attore("talia shire",3094,1).
attore("rick petrucelli",1290895,0).
attore("linda gillen",198980,1).
attore("tuesday weld",4514,1).
attore("robert curtis brown",233298,2).
attore("john marley",3142,2).
attore("lukas haas",526,2).
attore("john rhys-davies",655,2).
attore("christopher lee",113,2).
attore("sterling hayden",3088,2).
attore("keenan wynn",4966,2).
attore("liv tyler",882,1).
attore("kris kristofferson",10823,2).
attore("leslie mann",41087,1).
attore("david cross",212,2).
attore("amy stiller",26046,1).
attore("michelle trachtenberg",49961,1).
attore("dennis franz",11901,2).
attore("krzysztof pieczyski",24524,2).
attore("nydia rodriguez terracina",1522073,0).
attore("thomas jane",11155,2).
attore("aubrey morris",2278,0).
attore("seiji miyaguchi",20829,2).
attore("eijirô tôno",106165,2).
attore("richard s. castellano",3086,0).
attore("richard conte",3090,2).
attore("al lettieri",3091,2).
attore("gianni russo",3095,2).
attore("john cazale",3096,2).
attore("rudy bond",3143,2).
attore("al martino",3144,0).
attore("morgana king",933716,1).
attore("lenny montana",106811,2).
attore("john martino",99724,2).
attore("salvatore corsitto",1195877,0).
attore("alex rocco",20752,2).
attore("tony giorgio",3414,2).
attore("victor rendina",3413,2).
attore("simonetta stefanelli",3145,1).
attore("saro urzì",119431,0).
attore("sofia coppola",1769,1).
attore("louis guss",20973,2).
attore("gabriele torrei",138211,0).
attore("tere livrano",982089,1).
attore("julie gregg",160728,1).
attore("angelo infanti",27647,2).
attore("corrado gaipa",24604,2).
attore("franco citti",44860,2).
attore("max brandt",178006,0).
attore("carmine coppola",2872,2).
attore("roman coppola",38803,2).
attore("don costello",1209294,0).
attore("robert dahdah",1394703,0).
attore("gray frederickson",2870,2).
attore("joe lo grippo",1503036,2).
attore("sonny grosso",1233541,0).
attore("randy jurgensen",1068099,0).
attore("tony lip",61241,2).
attore("lou martini jr.",106187,0).
attore("raymond martino",100503,2).
attore("joseph medaglia",1503035,2).
attore("tom rosqui",1213795,2).
attore("frank sivero",11480,2).
attore("filomena spagnuolo",1209678,0).
attore("nick vallelonga",78336,2).
attore("conrad yama",1234848,0).
attore("akira tani",552167,0).
attore("noriko honma",7456,0).
attore("tsuruko mano",136386,0).
attore("willie nelson",8261,2).
attore("santos morales",47463,2).
attore("peter elliott",536274,2).
attore("penélope cruz",955,1).
attore("james stewart",854,2).
attore("bess flowers",121323,1).
attore("kim novak",5729,1).
attore("barbara bel geddes",5730,1).
attore("tom helmore",5731,2).
attore("henry jones",5732,2).
attore("raymond bailey",5737,2).
attore("ellen corby",5738,1).
attore("konstantin shayne",5739,2).
attore("lee patrick",5740,1).
attore("grace kelly",4070,1).
attore("wendell corey",7683,2).
attore("thelma ritter",7684,1).
attore("raymond burr",7685,2).
attore("judith evelyn",7686,1).
attore("ross bagdasarian",49906,2).
attore("georgine darcy",161738,1).
attore("sara berner",121038,1).
attore("frank cady",93622,2).
attore("jesslyn fax",85846,1).
attore("rand harper",184636,0).
attore("irene winston",130373,0).
attore("havis davenport",176534,0).
attore("kathryn grant",861,1).
attore("marla english",106504,1).
attore("alfred hitchcock",2636,2).
attore("anthony warde",33777,0).
attore("gig young",70985,2).
attore("lana clarkson",52144,1).
attore("david charkham",1330788,0).
attore("victor millan",94893,0).
attore("timothy carey",2758,2).
attore("ben frommer",152706,0).
attore("adolphe menjou",14563,2).
attore("maria doyle kennedy",33394,1).
attore("bernard hill",1369,2).
attore("stefanos miltsakakis",1363425,0).
attore("joe pingue",86237,2).
attore("kirk douglas",2090,2).
attore("ben daniels",27632,0).
attore("robert knepper",17343,2).
attore("peter capell",3476,2).
attore("george macready",14564,2).
attore("ralph brown",53916,2).
attore("burt young",4521,2).
attore("henry fonda",4958,2).
attore("lee van cleef",4078,2).
attore("alan howard",1367,2).
attore("silvie laguna",13695,0).
attore("ralph meeker",14562,2).
attore("wayne morris",14565,2).
attore("christiane kubrick",1019259,1).
attore("jerry hausner",117671,2).
attore("emile meyer",14579,2).
attore("bert freed",31503,2).
attore("kem dibbs",94031,2).
attore("fred bell",1077968,0).
attore("john stein",1077970,0).
attore("harold benedict",1077971,0).
attore("paul bös",49435,0).
attore("james b. harris",3349,2).
attore("aldo giuffrè",5813,0).
attore("luigi pistilli",5814,2).
attore("rada rassimov",5815,0).
attore("john bartha",5816,2).
attore("livio lorenzon",5817,2).
attore("antonio casale",5818,0).
attore("angelo novi",5819,0).
attore("josé terrón",5843,0).
attore("enzo petito",1077276,0).
attore("claudio scarchilli",1077277,0).
attore("sandro scarchilli",1077278,0).
attore("benito stefanelli",4661,0).
attore("antonio casas",103529,0).
attore("aldo sambrell",49895,2).
attore("al mulock",129314,2).
attore("sergio mendizábal",37512,0).
attore("antonio molino rojo",102096,0).
attore("lorenzo robledo",100930,0).
attore("mario brega",16318,2).
attore("chelo alonso",535685,2).
attore("fortunato arena",144612,0).
attore("román ariznavarreta",589876,0).
attore("silvana bacci",1127109,0).
attore("frank braña",72888,2).
attore("amerigo castrighella",1046525,0).
attore("saturno cerra",1063555,0).
attore("luigi ciavarro",1281095,0).
attore("romano puppo",102121,0).
attore("tony di mitri",50784,0).
attore("attilio dottesio",43241,0).
attore("veriano ginesi",1467655,2).
attore("jesús guzmán",222591,0).
attore("víctor israel",32830,0).
attore("nazzareno natale",119515,0).
attore("ricardo palacios",32130,2).
attore("antoñito ruiz",1082083,0).
attore("aysanoa runachagua",1059887,0).
attore("cyril shaps",24722,2).
attore("patrick magee",2264,2).
attore("adrienne corri",2265,1).
attore("michael bates",2267,2).
attore("warren clarke",2268,2).
attore("james marcus",2270,0).
attore("michael tarn",2271,2).
attore("carl duering",2272,0).
attore("paul farrell",2273,0).
attore("miriam karlin",2274,0).
attore("sheila raynor",2276,1).
attore("godfrey quigley",2279,0).
attore("clive francis",2280,0).
attore("richard connaught",2290,0).
attore("pauline taylor",2292,0).
attore("philip stone",694,2).
attore("michael gover",1231170,0).
attore("claudia cardinale",4959,1).
attore("charles bronson",4960,2).
attore("gabriele ferzetti",4961,2).
attore("paolo stoppa",4962,2).
attore("jack elam",4965,2).
attore("frank wolff",4968,0).
attore("lionel stander",4969,2).
attore("warwick davis",11184,2).
attore("deep roy",1295,2).
attore("paul shenar",1165,2).
attore("tatsuya nakadai",70131,2).
attore("takeshi katô",72540,2).
attore("steven williams",51579,2).
attore("kevyn major howard",8657,0).
attore("james hayden",4516,0).
attore("larry rapp",4518,0).
attore("olga karlatos",50744,1).
attore("frank gio",1373773,2).
attore("scott schutzman tiler",4750,0).
attore("rusty jacobs",4751,0).
attore("brian bloom",4753,0).
attore("mike monetti",4773,0).
attore("adrian curran",4752,0).
attore("noah moazezi",4754,0).
attore("frank sisto",1373776,0).
attore("jerry strivelli",61236,0).
attore("mike gendel",1373778,0).
attore("sandra solberg",1373779,0).
attore("margherita pace",1373775,0).
attore("bruno iannone",176592,0).
attore("bruno bilotta",27401,2).
attore("ray dittrich",1555142,0).
attore("angelo florio",1881583,0).
attore("yuji okumoto",56120,2).
attore("danny lloyd",10410,2).
attore("barry nelson",10411,2).
attore("anne jackson",10412,1).
attore("tony burton",16504,2).
attore("barry dennen",72742,2).
attore("lia beldam",1413939,0).
attore("billie gibson",1413940,0).
attore("michael caine",3895,2).
attore("david cubitt",155282,2).
attore("vincenzo nicoli",24595,2).
attore("melinda mcgraw",58692,0).
attore("glenn morshower",12797,2).
attore("joseph oliveira",1360008,2).
attore("ivana milievi",29930,1).
attore("tony nappo",76528,2).
attore("richard ridings",6645,2).
attore("nathan jones",24898,2).
attore("jayce bartok",21130,2).
attore("ll cool j",36424,2).
attore("michael jai white",64856,2).
attore("m.c. hammer",1372421,0).
attore("krista allen",21858,1).
attore("k. todd freeman",143328,2).
attore("cate blanchett",112,1).
attore("justin theroux",15009,2).
attore("will ferrell",23659,2).
attore("marton csokas",20982,2).
attore("roger monk",126316,0).
attore("nicholas hoult",3292,2).
attore("adrian hood",1355642,0).
attore("francie swift",118043,1).
attore("miranda otto",502,1).
attore("aaron eckhart",6383,2).
attore("andy serkis",1333,2).
attore("kevin grevioux",3952,2).
attore("kane hodder",62596,2).
attore("brett baker",1096595,2).
attore("jessica biel",10860,1).
attore("chris brailsford",1356541,0).
attore("jennifer garner",9278,1).
attore("lucas elliot eberl",33521,2).
attore("musetta vander",1475,1).
attore("eddie marsan",1665,2).
attore("richard dixon",1222025,2).
attore("michael angarano",11665,2).
attore("debra christofferson",168331,1).
attore("tom mccamus",64712,2).
attore("olivia williams",11616,1).
attore("brian anthony wilson",127070,0).
attore("randall duk kim",9462,2).
attore("kathryn morris",2208,1).
attore("jesse james",10135,2).
attore("tetsu watanabe",20335,0).
attore("frederique van der wal",55254,1).
attore("kevin heffernan",56251,2).
attore("maggie gyllenhaal",1579,1).
attore("christian aubert",14740,2).
attore("gregory cruz",66585,2).
attore("michael rougas",194092,0).
attore("dennis holahan",1172,2).
attore("takashi shimura",7453,2).
attore("yoshio inaba",20828,2).
attore("minoru chiaki",7454,2).
attore("daisuke katô",7457,0).
attore("isao kimura",20830,2).
attore("keiko tsushima",20831,1).
attore("yukiko shimazaki",554250,0).
attore("kamatari fujiwara",96552,2).
attore("yoshio kosugi",134272,0).
attore("bokuzen hidari",34377,0).
attore("yoshio tsuchiya",17540,2).
attore("kokuten kôdô",108028,0).
attore("jun tatara",228547,0).
attore("atsushi watanabe",134294,2).
attore("toranosuke ogawa",134406,0).
attore("isao yamagata",134020,0).
attore("kichijirô ueda",7455,2).
attore("sôjin kamiyama",1173025,0).
attore("gen shimizu",552187,0).
attore("keiji sakakida",1478367,0).
attore("shinpei takagi",121190,0).
attore("shin ôtomo",552174,0).
attore("toshio takahara",1093065,0).
attore("hiroshi sugi",1083308,0).
attore("hiroshi hayashi",125016,2).
attore("sachio sakai",108026,0).
attore("sôkichi maki",1481118,0).
attore("ichirô chiba",552180,0).
attore("noriko sengoku",106161,0).
attore("masanobu ôkubo",1200247,0).
attore("etsuo saijo",1481119,0).
attore("minoru itô",552175,0).
attore("haruya sakamoto",552184,0).
attore("gorô sakurai",1481120,0).
attore("hideo shibuya",1478372,0).
attore("kiyoshi kamoda",1481121,0).
attore("senkichi ômura",552166,0).
attore("takashi narita",1481122,0).
attore("shôichi hirose",552170,0).
attore("kôji uno",1059891,0).
attore("masaaki tachibana",1478373,0).
attore("kamayuki tsubono",1112075,0).
attore("taiji naka",1481123,0).
attore("chindanji miyagawa",1481124,0).
attore("shigemi sunagawa",552181,0).
attore("akio kusama",1185637,0).
attore("ryûtarô amami",1481125,0).
attore("jun mikami",1481126,0).
attore("haruo nakajima",235722,2).
attore("sanpei mine",551810,0).
attore("masahide matsushita",1481127,0).
attore("kaneo ikeda",1481128,0).
attore("takuzô kumagaya",1481129,0).
attore("ippei kawagoe",1481130,0).
attore("ippei kawagoe",1481131,0).
attore("jirô suzukawa",1479150,0).
attore("junpei natsuki",1201022,0).
attore("kyôichi kamiyama",1481132,0).
attore("haruo suzuki",552176,0).
attore("gorô amano",1481133,0).
attore("akira kitchôji",1481134,0).
attore("kôji iwamoto",1167989,0).
attore("hiroshi akitsu",1342305,0).
attore("akira yamada",1200144,0).
attore("kazuo imai",1481135,0).
attore("eisuke nakanishi",1481137,0).
attore("toku ihara",1478371,0).
attore("hideo ôtsuka",1481140,0).
attore("shû ôe",1481142,0).
attore("yasuhisa tsutsumi",1167993,0).
attore("yasumasa ônishi",1481144,0).
attore("tsuneo katagiri",1481145,0).
attore("megeru shimoda",1481146,0).
attore("masayoshi kawabe",1481147,0).
attore("shigeo katô",1117087,0).
attore("yoshikazu kawamata",1481148,0).
attore("takeshi seki",1481149,0).
attore("haruko toyama",1268056,0).
attore("matsue ono",1481151,0).
attore("tsurue ichimanji",1479144,0).
attore("masako ôshiro",1481152,0).
attore("kyôko ozawa",1481154,0).
attore("michiko kadono",1481155,0).
attore("toshiko nakano",1198473,0).
attore("shizuko azuma",1200402,0).
attore("keiko mori",1268329,0).
attore("michiko kawabe",1481158,0).
attore("yûko togawa",1481159,0).
attore("yayoko kitano",1481160,0).
attore("misao suyama",1481161,0).
attore("toriko takahara",1481162,0).
attore("ken utsui",78496,2).
attore("ren yamamoto",931393,0).
attore("sting",982,2).
attore("mik scriba",157021,2).
attore("françois berléand",7693,2).
attore("pepe serna",1169,1).
attore("timothy webber",53720,2).
attore("pat crawford brown",58928,1).
attore("craig hosking",1379517,2).
attore("dee jay jackson",1187262,0).
attore("noel appleby",585902,0).
attore("albert carrier",153686,2).
attore("kerry o malley",100567,0).
attore("don wycherley",111837,0).
attore("michael alldredge",1216866,2).
attore("frankie j. allison",120875,0).
attore("scott terra",56153,2).
attore("raad rawi",73710,0).
attore("laura cayouette",565498,1).
attore("rick baker",16178,2).
attore("frank finlay",6637,2).
attore("gregg henry",2518,2).
attore("linda harrison",13260,1).
attore("ismael  east  carlo",160375,2).
attore("orlando bloom",114,2).
attore("andrew havill",176191,2).
attore("james corden",55466,2).
attore("ava lazar",1217468,1).
attore("jason statham",976,2).
attore("katt shea",102634,1).
attore("richard dillane",176227,2).
attore("heath ledger",1810,2).
attore("david doty",124086,2).
attore("karl urban",1372,2).
attore("angela aames",45463,1).
attore("winston g. ellis",1195758,0).
attore("keira knightley",116,1).
attore("lewis macleod",1074722,0).
attore("mara hobel",150212,1).
attore("vincent marzello",131083,0).
attore("anthony milner",1493073,0).
attore("clotilde mollet",2411,1).
attore("mélanie thierry",59373,1).
attore("gabriele lavia",80503,2).
attore("alberto vazquez",163808,2).
attore("luca de luigi",558801,0).
attore("femi elufowoju jr.",1411985,0).
attore("nigel fan",1411986,0).
attore("leonid zaslavski",1411987,0).
attore("bernard padden",1356009,0).
attore("sofia eng",55255,1).
attore("garcelle beauvais",31647,1).
attore("e.j. callahan",53778,2).
attore("james lashly",69502,2).
attore("jerry wills",1100323,2).
attore("mike h. mcgaughy",16163,0).
attore("bob rumnock",104915,2).
attore("jerry potter",137910,2).
attore("michael sims",1610268,0).
attore("natalie fabry",1610271,1).
attore("seann william scott",57599,2).
attore("david lewis",4095,2).
attore("daniel rey",141808,2).
attore("valente rodriguez",6321,2).
attore("brent roam",67351,2).
attore("eyal podell",61855,2).
attore("erinn bartlett",60953,1).
attore("dan thiel",141809,2).
attore("sabrina geerinckx",141810,0).
attore("tajsha thomas",141811,0).
attore("ronald g. joseph",107982,2).
attore("m. night shyamalan",11614,2).
attore("ritchie coster",13939,2).
attore("gerard plunkett",27124,2).
attore("andrew bicknell",47525,2).
attore("grégoire oestermann",146212,2).
attore("steven o donnell",79885,0).
attore("zooey deschanel",11664,1).
attore("francis guinan",162754,2).
attore("jean-michel dagory",1536351,2).
attore("earl cameron",2246,2).
attore("yji matsuda",622,0).
attore("yuriko ishida",20330,1).
attore("yko tanaka",20331,0).
attore("kaoru kobayashi",20332,2).
attore("masahiko nishimura",20333,2).
attore("tsunehiko kamijô",20334,2).
attore("sumi shimamoto",613,0).
attore("mitsuru satô",20336,0).
attore("akira nagoya",20337,0).
attore("akihiro miwa",20338,0).
attore("mitsuko mori",20339,0).
attore("hisaya morishige",20340,2).
attore("takako fuji",20329,1).
attore("renee olstead",155621,1).
attore("ted hollis",74519,0).
attore("evan parke",3493,2).
attore("julia rayner",6641,0).
attore("justin long",15033,2).
attore("fulvio cecere",65808,2).
attore("patrick warburton",9657,2).
attore("ted beniades",932922,0).
attore("daniel caltagirone",19875,0).
attore("dwayne johnson",18918,2).
attore("shelley taylor morgan",1178618,1).
attore("robert bailey jr.",55426,2).
attore("françois caron",224148,2).
attore("jackie earle haley",17183,2).
attore("manuel padilla jr.",12411,2).
attore("susie essman",56910,1).
attore("richard divizio",1131169,0).
attore("katharine houghton",19729,1).
attore("matthew o neill",1208967,0).
attore("brett ratner",11091,2).
attore("kristen stewart",37917,1).
attore("j.d. evermore",129868,2).
attore("john mccann",160335,2).
attore("maxine wasa",163459,0).
attore("henry kingi",24969,2).
attore("john brandon",88965,2).
attore("john carter",60196,2).
attore("tim griffin",27031,2).
attore("spencer breslin",35654,2).
attore("kelly nish",1502785,1).
attore("nick offerman",17039,2).
attore("shawn roberts",81097,2).
attore("ken watanabe",3899,2).
attore("melody perkins",1225896,2).
attore("yani gellman",130936,2).
attore("jamie bell",478,2).
attore("nancy wetzel",1502787,1).
attore("frank collison",1479,2).
attore("ronan vibert",20523,2).
attore("zahf paroo",58902,2).
attore("olivia tennet",941439,1).
attore("christopher maher",1219530,2).
attore("benita ha",75532,1).
attore("claudette mink",63547,1).
attore("russ fega",535,2).
attore("eric keenleyside",2250,2).
attore("arnaldo santana",1168,0).
attore("garnett smith",1225345,0).
attore("gil barreto",139931,0).
attore("victor campos",152704,2).
attore("rene carrasco",156019,0).
attore("carlos augusto cestero",1360853,2).
attore("roberto contreras",103795,2).
attore("dante d andre",152888,0).
attore("geno silva",54864,2).
attore("lee benton",160253,1).
attore("emilia crow",538318,0).
attore("margaret michaels",1228412,0).
attore("barclay deveau",1378434,0).
attore("marcus shirock",1228651,0).
attore("ilka tanya payán",1614584,1).
attore("estella warren",13241,1).
attore("viv weatherall",16692,2).
attore("sarah mcleod",965278,1).
attore("mandy moore",16855,1).
attore("tom kenny",78798,2).
attore("ian mcshane",6972,2).
attore("eriq ebouaney",25078,2).
attore("roberto lombardi",1209900,2).
attore("kelli clevenger",1192165,1).
attore("chad bannon",44824,0).
attore("martin klebba",4030,2).
attore("john noble",1381,0).
attore("kyle gallner",59219,0).
attore("adam brody",11702,2).
attore("cillian murphy",2037,2).
attore("tracy morgan",56903,2).
attore("nathan lee graham",203809,0).
attore("alexander skarsgård",28846,2).
attore("tommy hilfiger",77068,0).
attore("lenny kravitz",77069,2).
attore("mitch winston",1548295,0).
attore("anne le ny",19370,1).
attore("christian stolte",36091,2).
attore("marie-laure descoureaux",333422,0).
attore("billy boyd",1329,2).
attore("dominic monaghan",1330,2).
attore("craig parker",1332,2).
attore("lawrence makoare",1365,2).
attore("sala baker",1366,2).
attore("megan edwards",1201328,0).
attore("michael elsworth",1590834,2).
attore("mark ferguson",1217771,2).
attore("brent mcintyre",1590835,0).
attore("tom hardy",2524,2).
attore("tom goodman-hill",43034,2).
attore("jim rash",161932,2).
attore("ola sturik",1239345,1).
attore("lynda carter",44935,1).
attore("mark brandon",153847,2).
attore("juan carlos hernández",116714,0).
attore("brad grunberg",159907,2).
attore("jim norton",135855,2).
attore("joshua harto",34544,2).
attore("trudie styler",95022,1).
attore("keith kupferer",1313093,0).
attore("katie couric",166658,1).
attore("robert iler",1218240,0).
attore("abigail breslin",17140,1).
attore("sean cullen",104196,2).
attore("timo dierkes",7816,2).
attore("laila rouass",81346,1).
attore("natalie hallam",1392731,1).
attore("ellen pompeo",9280,1).
attore("dorothée brière",1632523,1).
attore("vincent riotta",26669,2).
attore("matthew leitch",141770,2).
attore("john keogh",49486,2).
attore("calum gittins",1356914,0).
attore("john bach",29094,2).
attore("robbie magasiva",76834,2).
attore("robyn malcolm",125938,1).
attore("bruce phillips",29082,0).
attore("raymond trickitt",156371,2).
attore("stephen ure",1440014,0).
attore("nathaniel lees",41784,2).
attore("sam comery",1892757,0).
attore("bruce hopkins",1214345,0).
attore("john leigh",76851,2).
attore("larissa drekonja",1567422,0).
attore("maureen lipman",6638,1).
attore("emilia fox",6639,1).
attore("ed stoppard",6640,2).
attore("jessica kate meyer",6642,0).
attore("michal zebrowski",6643,2).
attore("wanja mues",6644,0).
attore("nomi sharron",6646,0).
attore("lucy skeaping",1502849,0).
attore("roddy skeaping",1502850,0).
attore("ben harlan",1502851,0).
attore("thomas lawinky",1080994,2).
attore("joachim paul assböck",51651,0).
attore("roy smiles",1446384,0).
attore("paul bradley",1221808,2).
attore("andrzej blumenfeld",1120198,0).
attore("detlev von wangenheim",6647,0).
attore("popeck",11193,0).
attore("zofia czerwiska",1138495,0).
attore("udo kroschwald",48392,2).
attore("uwe rathsam",1537160,0).
attore("joanna brodzik",107874,0).
attore("katarzyna bargieowska",1076083,0).
attore("maja ostaszewska",82312,0).
attore("wojciech smolarz",945055,2).
attore("lech mackiewicz",1275339,0).
attore("ruth platt",181029,0).
attore("peter rappenglück",21837,0).
attore("katarzyna figura",83264,1).
attore("tom strauss",1533548,0).
attore("cezary kosinski",146434,0).
attore("pawe burczyk",1384028,0).
attore("nina franoszek",1221617,0).
attore("rafa mohr",1138082,0).
attore("andrzej pieczynski",107890,2).
attore("morgane polanski",1571182,0).
attore("grzegorz artman",46245,0).
attore("adam bauman",1707197,0).
attore("andrzej szenajch",1139637,0).
attore("zbigniew dziduch",1881588,0).
attore("marian dzidziel",127853,2).
attore("jerzy góralczyk",1730800,0).
attore("jaroslaw kopaczewski",1258568,0).
attore("patrick lanagan",1881604,0).
attore("dorota liliental",1881626,0).
attore("norbert rakowski",1083947,0).
attore("piotr siejka",1175176,0).
attore("tomasz tyndyk",136798,0).
attore("andrzej walden",1290107,0).
attore("zbigniew walerys",97197,0).
attore("maciej winkler",1881651,0).
attore("tadeusz wojtych",1138890,0).
attore("andrzej zieliski",1083418,0).
attore("pawe maaszyski",236188,0).
attore("axel prahl",4621,0).
attore("borys szyc",95105,2).
attore("rafa dajbor",1583956,0).
attore("ryszard kluge",1636697,0).
attore("maciej kowalewski",1062688,0).
attore("carlo corazon",1208125,0).
attore("paul roe",1004707,0).
attore("joe j. garcia",1236548,0).
attore("jim fitzgerald",1425228,0).
attore("casey mccarthy",1416443,0).
attore("louis bernstein",1502759,0).
attore("josie divincenzo",1416444,0).
attore("jorge noa",74836,0).
attore("levett m. washington",1502760,0).
attore("alberto gutierrez",1502761,0).
attore("lakeith s. evans",1502762,0).
attore("carrie geiben",1502763,0).
attore("luke strode",1502764,0).
attore("bruce mibach",1502765,0).
attore("ron mathews",87042,2).
attore("daniel b. wing",1502766,0).
attore("jeff padilla",1502767,0).
attore("dan brinkle",989246,2).
attore("jack reiss",1502768,0).
attore("sonya didenko",1502769,0).
attore("greg  christopher  smith",1502770,2).
attore("christopher prescott",1502771,0).
attore("ari randall",1502772,0).
attore("john s. bakas",1502773,0).
attore("chad tucker",1502774,0).
attore("jamie mahoney",1502775,0).
attore("jorn h. winther",1502776,0).
attore("frank miller",2293,2).
attore("christian boeving",1172972,0).
attore("adam blake boswell",1502777,0).
attore("david burrows",970287,2).
attore("michael duisenberg",966218,2).
attore("halley eveland",1502778,0).
attore("claudine farrell",1502779,0).
attore("andré gordon",1361149,0).
attore("douglas haase",1502780,0).
attore("suzie johnson",1502781,0).
attore("boyd kelly",1502782,0).
attore("tina lorraine",1502783,0).
attore("rebecca michael",1502784,0).
attore("brian m. olson",1502786,0).
attore("kevin porter",1016433,2).
attore("tanoai reed",77824,2).
attore("thierry segall",1077824,0).
attore("sandra teles",1393981,0).
attore("patrick williams",1502788,0).
attore("victoria wicks",1221046,0).
attore("ellen page",27578,1).
attore("shia labeouf",10959,2).
attore("fred armisen",61110,2).
attore("ólafur darri ólafsson",110902,2).
attore("rachel nichols",50347,1).
attore("brian posehn",20405,2).
attore("angus barnett",1714,2).
attore("rob machado",108333,0).
attore("kelly slater",4334,2).
attore("edison chen",20372,0).
attore("jason douglas",20496,0).
attore("cas anvar",59214,2).
attore("arron shiver",105786,2).
attore("des keogh",1694939,2).
attore("marion cotillard",8293,1).
attore("michael c. hall",53820,2).
attore("christopher kennedy",172822,0).
attore("michelle harrison",59240,1).
attore("emily holmes",37979,1).
attore("kendall cross",59185,1).
attore("catherine lough haggquist",77622,1).
attore("ryan zwick",1594647,0).
attore("calvin finlayson",1594648,0).
attore("darryl scheelar",139622,0).
attore("roger haskett",1182672,0).
attore("steve wright",1594652,0).
attore("barclay hope",43431,2).
attore("peter shinkoda",172994,2).
attore("robert clark",1594653,0).
attore("andrea siradze",1594654,0).
attore("isabelle roland",1594655,0).
attore("peter caton",1594656,0).
attore("ryan robbins",77164,2).
attore("chelah horsdal",70175,1).
attore("craig march",61164,0).
attore("jason calder",172901,2).
attore("mike godenir",1340010,0).
attore("brad kelly",172809,0).
attore("brent connolly",1366826,0).
attore("michelle anderson",1399538,0).
attore("lori berlanga",1550819,0).
attore("matthew goode",1247,2).
attore("beatrice rosen",101014,1).
attore("max thieriot",41883,2).
attore("cobie smulders",71189,1).
attore("·",117642,2).
attore("brie larson",60073,1).
attore("matt newton",1227523,2).
attore("bronson webb",75076,2).
attore("jon heder",53926,2).
attore("rashida jones",80591,1).
attore("john warman",1209055,0).
attore("kanye west",4720,2).
attore("jody halse",6985,0).
attore("peter rnic",30450,2).
attore("robert stone",1209051,0).
attore("michael stoyanov",1196130,0).
attore("nestor carbonell",21316,2).
attore("omar sy",78423,2).
attore("william armstrong",29616,2).
attore("benedict cumberbatch",71580,2).
attore("mary elizabeth winstead",17628,1).
attore("annasophia robb",1285,1).
attore("philip philmar",1518112,0).
attore("douglas m. griffin",60881,2).
attore("bob sapp",60716,2).
attore("william sterchi",202830,2).
attore("philip bulcock",1128854,0).
attore("nathalie cox",17337,1).
attore("ashlyn sanchez",18290,1).
attore("colin mcfarlane",128386,2).
attore("raicho vasilev",22019,2).
attore("danielle panabaker",31838,1).
attore("dee jay daniels",69507,0).
attore("kelly vitz",69508,1).
attore("steven strait",54815,2).
attore("malika haqq",1568595,1).
attore("khadijah haqq",1234262,0).
attore("will harris",135786,2).
attore("mark consuelos",112143,2).
attore("milton welsh",902,2).
attore("pete atkin",127153,0).
attore("talulah riley",66441,1).
attore("jim shield",1328755,0).
attore("katie cassidy",55775,1).
attore("brenda mcdonald",61168,1).
attore("richard campbell",1379293,0).
attore("chris wilson",127005,2).
attore("rooney mara",108916,1).
attore("billy slaughter",62784,0).
attore("kellan lutz",34502,2).
attore("haruhiko yamanouchi",74540,2).
attore("ana de la reguera",57409,1).
attore("rebecca mader",54679,1).
attore("nathan gamble",18052,2).
attore("rebecca front",155530,1).
attore("tim krueger",1058964,0).
attore("monique gabriela curnen",53651,1).
attore("eleanor tomlinson",73357,1).
attore("alba gaïa kraghede bellugi",26107,1).
attore("rachel bilson",52783,1).
attore("cornell womack",164494,2).
attore("keith mcerlean",58435,0).
attore("andrew brooke",202760,0).
attore("peter brooke",1070855,0).
attore("ben cooke",11354,0).
attore("nicola peltz",61186,1).
attore("kristen wiig",41091,1).
attore("silvio simac",134414,2).
attore("lucy boynton",86232,1).
attore("kevin wiggins",1240490,2).
attore("cornell john",25135,2).
attore("laurence bouvard",59865,0).
attore("michel winogradoff",204675,2).
attore("tristan tait",170230,2).
attore("daniel jefferson",1207205,0).
attore("kari wahlgren",116315,0).
attore("marcella plunkett",163544,1).
attore("sal masekela",963069,2).
attore("ash brannon",12905,2).
attore("chris buck",15774,0).
attore("dana belben",68863,0).
attore("reed buck",1114051,0).
attore("dominique daguier",1349054,2).
attore("paul birchard",29617,2).
attore("walter lewis",1781739,0).
attore("ben barnes",25130,2).
attore("nonso anozie",43547,2).
attore("benjamin baroche",1171433,2).
attore("nicky marbot",1048793,2).
attore("christopher berry",1173099,2).
attore("stanimir stamatov",559371,0).
attore("sean curley",56418,2).
attore("tandi wright",33310,1).
attore("kevin geer",87478,2).
attore("damon gupton",53454,2).
attore("joshua rollins",1674439,2).
attore("lee boardman",138161,0).
attore("teddy dunn",115729,2).
attore("michael winther",1184028,0).
attore("massimiliano pazzaglia",27427,0).
attore("meredith henderson",43264,1).
attore("clark beasley jr.",1573505,0).
attore("valentino visentini",1573507,0).
attore("lorna gayle",209990,0).
attore("chin han",101015,2).
attore("michael vieau",1052875,2).
attore("william smillie",1334139,0).
attore("olumiji olawumi",1056090,0).
attore("greg beam",1870607,0).
attore("erik hellman",1870608,0).
attore("andy luther",1870609,0).
attore("james farruggio",1870610,0).
attore("tom mcelroy",1840452,0).
attore("james fierro",1870611,0).
attore("patrick leahy",853194,2).
attore("sam derence",1526574,0).
attore("jennifer knox",1870612,1).
attore("patrick clear",1424043,0).
attore("sarah jayne dunn",1220201,1).
attore("charles venn",147895,0).
attore("david dastmalchian",83854,2).
attore("sophia hinshelwood",1870613,0).
attore("joseph luis caballero",1678566,0).
attore("daryl satcher",1870614,0).
attore("chris petschler",1870615,0).
attore("aidan feore",1870616,0).
attore("nancy crane",1631707,0).
attore("matt shallenberger",1464854,0).
attore("michael andrew gorman",1870623,0).
attore("lanny lutz",1870620,0).
attore("peter defaria",1624910,2).
attore("matt rippy",78047,2).
attore("ariyon bakare",1238461,0).
attore("helene wilson",1661772,0).
attore("tommy campbell",122345,0).
attore("craig heaney",1215332,0).
attore("lisa mcallister",139946,1).
attore("dale rivera",1870625,0).
attore("thomas gaitsch",1394354,0).
attore("adam kalesperis",1870627,0).
attore("david ajala",971049,2).
attore("gertrude kyles",1870629,0).
attore("jonathan ryland",119414,2).
attore("james scales",1870631,0).
attore("nigel carrington",1655526,0).
attore("ian pirie",95716,0).
attore("lateef lovejoy",1122545,0).
attore("grahame edwards",578699,0).
attore("ronan summers",1132153,2).
attore("wai wong",1599260,2).
attore("michael corey foster",1870636,0).
attore("hannah gunn",1870637,0).
attore("brandon lambdin",1870638,0).
attore("jon lee brody",1161711,0).
attore("debbi burns",580566,0).
attore("maritza cabrera",1128275,0).
attore("shirin caiola",1185594,0).
attore("laura chernicky",1197335,0).
attore("henry milton chu",1552999,0).
attore("tony domino",580567,0).
attore("david fultz",228305,0).
attore("jordon hodges",593182,0).
attore("erron jay",1086373,0).
attore("thomas kosik",580560,0).
attore("don kress",505400,0).
attore("dan latham",1261397,0).
attore("tom mccomas",1551776,0).
attore("james mellor",1111803,2).
attore("buster reeves",1426334,0).
attore("amit shah",1209046,0).
attore("michelle shields",1058963,0).
attore("sofiya smirnova",98994,0).
attore("bruce spielbauer",1108073,0).
attore("robert patrick stern",1185600,0).
attore("richard strobel",99223,0).
attore("tom townsend",79810,0).
attore("john turk",204276,0).
attore("erik a. williams",1512023,0).
attore("kevin zaideman",1380656,0).
attore("gisella marengo",1114855,0).
attore("nazanin boniadi",142213,1).
attore("nikolay stanoev",559369,0).
attore("bashar rahal",105688,0).
attore("matthew beard",213394,2).
attore("jeremy strong",239271,2).
attore("victoria clark",171633,1).
attore("kristen connolly",210824,1).
attore("traci law",1564329,0).
attore("william james kelly",1564332,0).
attore("art lyle",1343298,0).
attore("jee-yun lee",201951,1).
attore("tannishtha chatterjee",87297,0).
attore("summer bishil",73336,1).
attore("justin mader",76514,2).
attore("kim kardashian",212225,1).
attore("seychelle gabriel",559643,0).
attore("katarzyna wolejnio",90113,1).
attore("alberto bonilla",205586,0).
attore("chris johnson",76795,2).
attore("dev patel",76788,2).
attore("rory kinnear",139549,2).
attore("demi lovato",85138,1).
attore("joe jonas",85757,0).
attore("jackson rathbone",84215,2).
attore("natalya rudakova",75036,1).
attore("david atrakchi",134410,2).
attore("alex kobold",134411,2).
attore("yann sundberg",134412,2).
attore("sebastien vandenberghe",1332485,2).
attore("caroline bourg",1149324,0).
attore("john d leo",1056523,2).
attore("jon daly",1406450,0).
attore("olivia munn",81364,1).
attore("ilan goodman",1121975,2).
attore("mccaleb burnett",204509,2).
attore("mathew horne",82806,2).
attore("dileep rao",95697,2).
attore("dov markowich",1265868,0).
attore("matt lauer",141525,2).
attore("alex macqueen",126042,0).
attore("leo howard",557921,2).
attore("hunter burke",1374151,2).
attore("virgile bramly",133257,2).
attore("antje traue",43202,1).
attore("waleed zuaiter",94431,0).
attore("jacob browne",43596,0).
attore("todd lawson latourrette",1504586,0).
attore("elsa villafane",1504587,0).
attore("fawad siddiqui",1504588,0).
attore("samuel ray gates",1193258,0).
attore("hrach titizian",116447,2).
attore("shafik n. bahou",1504589,0).
attore("jj raschel",1865786,0).
attore("jaime margarida",1865789,0).
attore("drew seltzer",1225183,2).
attore("michael-david aragon",1865795,2).
attore("morse bicknell",223395,0).
attore("katie featherston",90596,1).
attore("micah sloat",90597,2).
attore("mark fredrichs",90598,2).
attore("amber armstrong",967678,1).
attore("ashley palmer",967721,1).
attore("joy mcbrinn",1026825,1).
attore("taylor geare",967376,1).
attore("jack goldenberg",1381547,0).
attore("tuppence middleton",89822,1).
attore("ioan lov",1732807,2).
attore("freddie benedict",968218,2).
attore("alan marriott",235815,0).
attore("rupert degas",211412,0).
attore("emma tate",185065,1).
attore("brian bowles",108399,0).
attore("nawazuddin siddiqui",85047,2).
attore("shelly varod",85516,1).
attore("liann pattison",1411664,0).
attore("maria olsen",142402,1).
attore("cory fernandez",1460926,0).
attore("hannah ware",577478,1).
attore("taya clyne",1392949,0).
attore("julianna damm",1637369,0).
attore("katie schooping knight",1637370,0).
attore("hailey schooping knight",1637371,0).
attore("leah uteg",1637372,0).
attore("don robert cass",1637374,0).
attore("katy perry",111455,0).
attore("amanda brugel",1232769,1).
attore("courtney halverson",105844,1).
attore("billy wickman",1392950,2).
attore("fraser aitcheson",1366510,0).
attore("noah ringer",88816,2).
attore("john d alonzo",1317363,0).
attore("keong sim",164102,2).
attore("ritesh rajan",1440178,2).
attore("jessica jade andres",1377246,1).
attore("tohoru masamune",173212,0).
attore("claire geare",973135,1).
attore("johnathan geare",1677266,2).
attore("ryan hayward",1677267,2).
attore("miranda nolan",1334309,1).
attore("coralie dedykere",1677498,1).
attore("nicolas clerc",1677507,2).
attore("marc raducci",203087,2).
attore("chantelle chung",88933,1).
attore("natalie morales",118752,1).
attore("christina hendricks",110014,1).
attore("sprague grayden",118243,1).
attore("patrick heusinger",1223163,2).
attore("sam hargrave",1120883,0).
attore("steve haze",109165,2).
attore("audrey fleurot",219708,1).
attore("lewis hamilton",216294,2).
attore("mattie liptak",931104,0).
attore("judd lormand",990136,2).
attore("jacob wysocki",145131,2).
attore("claire holt",86132,1).
attore("borislav iliev",1167321,2).
attore("diana lyubenova",1189509,0).
attore("ivana staneva",1812098,0).
attore("alina puscau",1535524,0).
attore("zlatka raikova",1812099,0).
attore("anton trendafilov",1812100,0).
attore("aysun aptulova",1812162,0).
attore("daniel rashev",1264793,2).
attore("jackson spidell",1779512,0).
attore("guillermo grispo",1812165,0).
attore("radoslav parvanov",1108570,2).
attore("teodora duhovnikova",1255958,1).
attore("tezdjan ahmedova",1812166,0).
attore("ulyana chan",1812167,1).
attore("yoanna temelkova",1614484,1).
attore("nadia konakchieva",105687,1).
attore("petya mlluseva",1818122,0).
attore("ruslana kaneva",1818124,0).
attore("gloria petkova",1818126,0).
attore("zdravka krastenyakova",1818128,0).
attore("stanislav pishtalov",105695,2).
attore("velimir velev",1818131,0).
attore("zhaidarbek kunguzhinov",1818132,2).
attore("eric laciste",1818134,0).
attore("brian andrew mendoza",1722811,0).
attore("nuo sun",1818139,0).
attore("kim do",1818140,0).
attore("yoana petrova",1820680,0).
attore("vladimir vladimirov",1820693,0).
attore("david mason chlopecki",1820697,0).
attore("alexandrina vladova",1820702,0).
attore("guerguina ilieva",1820706,0).
attore("stefka berova",141278,0).
attore("vangelitsa karadjova",1820709,0).
attore("blagovesta cakova",1820710,0).
attore("svetlana vasileva",1820711,0).
attore("zornitsa stoicheva",1820712,0).
attore("zhenia zheleva",1820713,0).
attore("nikol vasileva",1820714,0).
attore("adriana kalcheva",1820715,0).
attore("mark amos",1516962,2).
attore("zlateto keremedchieva",559392,0).
attore("raw leiba",226112,0).
attore("radka petkova",1820717,0).
attore("paul stefanov",1820718,0).
attore("eamon farren",110425,0).
attore("deepti naval",150220,1).
attore("william peltz",1011103,2).
attore("lauren bittner",176748,1).
attore("christopher nicholas smith",579064,2).
attore("chloe csengery",995457,1).
attore("jessica tyler brown",995458,1).
attore("marilyn alex",995459,0).
attore("dustin ingram",206112,0).
attore("jessica berger",155037,0).
attore("hallie foote",171401,1).
attore("craig salisbury",1664257,2).
attore("james northcote",1362119,2).
attore("dana gourrier",1133063,1).
attore("teri wyble",565501,1).
attore("joséphine de meaux",84430,1).
attore("cyril mendy",581728,0).
attore("christian ameri",581729,0).
attore("salimata kamate",1411815,1).
attore("absa diatou toure",1411817,1).
attore("thomas solivéres",1069637,2).
attore("emilie caen",999406,1).
attore("sylvain lazard",1632531,2).
attore("jean-françois cayrey",1293458,0).
attore("ian fenelon",1632532,2).
attore("renaud barse",1179883,2).
attore("françois bureloup",544669,0).
attore("jérôme pauwels",1632533,2).
attore("antoine laurent",1385391,2).
attore("fabrice mantegna",1632535,2).
attore("hedi bouchenafa",1588451,2).
attore("elliot latil",1686571,2).
attore("vera horton",1674664,1).
attore("hattie gotobed",1279512,1).
attore("john lebar",938419,2).
attore("denise williamson",483255,1).
attore("alicia vikander",227454,1).
attore("p.j. marshall",1410428,0).
attore("niccolò senni",81510,0).
attore("kit harington",239019,2).
attore("jack reynor",1007683,2).
attore("john kahrs",8020,0).
attore("jeff turley",1112515,0).
attore("allen leech",85718,2).
attore("pallavi sharda",979599,0).
attore("christian wolf-la moy ",590936,2).
attore("duncan jc mais ",590937,0).
attore("santi scinelli ",590938,0).
attore("caroline hayes",590939,0).
attore("simon lowe",1231158,2).
attore("mingus johnston",1188778,0).
attore("peter bonner",234867,2).
attore("don mccorkindale",39687,2).
attore("tayler marshall",1219242,2).
attore("amber vertannes",1905674,0).
attore("phill martin",1905687,0).
attore("tim foley",1399807,0).
attore("michael self",1905690,0).
attore("sydney rawson",1905692,0).
attore("raeden greer",1123886,0).
attore("justin bieber",150810,2).
attore("marc jacobs",1053305,0).
attore("amy brassette",283807,0).
attore("jacob tremblay",1277188,2).
attore("robert catrini",149590,0).
attore("david g. robinson",1358943,0).
attore("taylor ashley murphy",1317688,1).
attore("colin walker",205287,0).
attore("beck bennett",1180696,2).
attore("kyle mooney",1180698,2).
attore("mdlina diana ghenea",1255247,1).
attore("stuart matthews",1295992,0).
attore("derek herd",1510502,2).
attore("thai-hoa le",1300745,2).
attore("luc roderique",1356538,2).
attore("primo allon",1366661,0).
attore("don lemon",1395060,0).
attore("bryce romero",1415436,0).
attore("jack bannon",1449329,2).
attore("shelley hennig",444211,1).
attore("laurence kennedy",25680,0).
attore("jack tarlton",1379286,0).
attore("alex lawther",1379277,2).
attore("dominik charman",1379318,2).
attore("james g. nunn",1379313,2).
attore("charlie manton",1379291,2).
attore("tim van eyken",1679324,2).
attore("miranda bell",1327860,0).
attore("tim steed",1543407,0).
attore("bartosz wandrykow",1379276,2).
attore("lese asquith-coe",1379279,0).
attore("hayley joanne bacon",1374337,0).
attore("lauren beacham",1379283,1).
attore("ingrid benussi",1379302,0).
attore("nicholas blatt",1379311,0).
attore("jack brash",1379314,0).
attore("ancuta breaban",1374158,1).
attore("alex corbet burcher",1379287,2).
attore("grace calder",1379278,1).
attore("daniel chapple",1379305,0).
attore("lisa colquhoun",1379290,0).
attore("alexander cooper",1379281,0).
attore("leigh dent",1374338,0).
attore("esther eden",1379285,1).
attore("sam exley",1379288,2).
attore("ben farrow",1379295,2).
attore("mike firth",1379304,0).
attore("hannah flynn",1379275,0).
attore("james gard",1379319,0).
attore("guna gultniece",1379282,1).
attore("benjamin hardie",1379315,0).
attore("oscar hatton",1379308,0).
attore("luke hope",1379280,0).
attore("vincent idearson",1379320,0).
attore("denis koroshko",1379292,0).
attore("debra leigh-taylor",1679332,1).
attore("amber-rose may",1379317,0).
attore("samantha moran",1379312,0).
attore("adam nowell",1379303,0).
attore("harry leonard parkinson",1379316,0).
attore("john redmann",1225115,0).
attore("alice tapfield",1379321,0).
attore("mark underwood",1010922,2).
attore("nicola-jayne wells",1379284,0).
attore("josh wichard",1379301,0).
attore("sean carey",583052,2).
attore("carmel amit",1392937,0).
attore("julian black antelope",1061054,0).
attore("lilah fitzgerald",584543,0).
attore("faustino di bauda",1368501,0).
attore("duffy",219303,1).
attore("marcel bridges",1392952,0).
attore("yaroslav poverlo",1392953,0).
attore("isabelle landry",1392954,0).
attore("jason asuncion",1259945,0).
attore("joanne bentley",1392956,0).
attore("anthony welch",1392957,0).
attore("skrillex",1358636,0).
attore("peter campion",1544911,0).
attore("rakim mayers",1521445,0).
attore("kelly thornton",1198869,1).
attore("jack fulton",1260011,2).
attore("ashley nicole hudson",1456719,1).
attore("moses jacob storm",1385058,0).
attore("heather sossaman",1385057,0).
attore("mickey river",1385056,0).
attore("cal barnes",1385054,0).
attore("matthew bohrer",1385055,0).
attore("christa hartsock",1491177,0).
attore("moshe kasher",491911,0).
attore("marisela zumbado",1542879,0).
attore("rachel whitman groves",1485159,0).
attore("jodie moore",204845,0).
attore("aiden flowers",1465051,0).
attore("carson flowers",1797595,0).
attore("walter von huene",41338,2).
attore("david a. cole",1269495,0).
attore("maris black",1797599,0).
attore("jessy hughes",1797600,0).
attore("lizeth hutchings",1711523,1).
attore("neil degrasse tyson",550307,2).
attore("kate drummond",984711,1).
attore("randal edwards",103284,2).
attore("zarrin darnell-martin",1517741,1).
attore("rodrigo fernandez- stoll",1279082,2).
attore("rory o shea",1357824,2).
attore("matt gordon",43258,2).
attore("sandy mcmaster",1517744,2).
attore("brad wietersen",1517743,2).
attore("doris mccarthy",1457224,1).
attore("aly mang",1465304,1).
attore("cyrus arnold",1493218,0).
attore("marko caka",1526122,2).
attore("susan boyle",930058,0).
attore("arka das",1496153,0).
attore("ariana grande",226001,1).
attore("madalyn horcher",1485114,1).
attore("romuald andrzej klos",1759003,0).
attore("christopher cagle",1758990,0).
attore("johnny weir",471898,2).
attore("jourdan dunn",1431087,0).
attore("ana beatriz barros",590424,1).
attore("mika",1224964,0).
attore("karlie kloss",1397086,1).
attore("alexander wang",1686427,0).
attore("valentino",1572253,0).
attore("christine amanpour",1686428,0).
attore("jane pauley",1220599,0).
attore("soledad o’brien",1104733,0).
attore("charlotte townsend",1578406,1).
attore("fabiano di leo",1758921,0).
attore("mamy camara",1758923,0).
attore("antonio te maioha",1254271,0).
attore("yama",1758926,0).
attore("christine thollefsen",1758927,1).
attore("fran mills",1758928,1).
attore("pierpaolo piccioli",1758930,0).
attore("fat jewish",1758932,0).
attore("giordana pieri",1758933,0).
attore("olivier langhendries",1758934,0).
attore("antonio calalani",1758935,0).
attore("alexander schuster",1758936,0).
attore("bha diop",1758937,0).
attore("taigen kawabe",1758938,0).
attore("yuki tsuji",1758939,0).
attore("kohhei matsuda",1758940,0).
attore("monchhan monna",1758941,0).
attore("franca sozzani",1758943,0).
attore("jérôme jarre",1758945,0).
attore("eleonora carisi",1758946,1).
attore("diane pernet",1366924,1).
attore("leila yavari",1498184,1).
attore("thiago macedo",1758958,0).
attore("maki besea",1758959,0).
attore("elettra capuano",1514083,1).
attore("gionata curreri",1758961,0).
attore("elga enardu",1758962,1).
attore("serena enardu",1758963,1).
attore("sissi hou",1758964,1).
attore("orlando orfeo",1758965,0).
attore("lucia guzzardi",1142305,1).
attore("martin saints",1758976,0).
attore("davide clivio",1758977,0).
attore("kelly aaron",1758982,1).
attore("alan cappelli goetz",1204167,0).
attore("clinton clark",1758992,0).
attore("marisol correa",1634622,1).
attore("carlijn de jong",1758994,1).
attore("antony hagopian",172178,0).
attore("ray hounsell",1689868,0).
attore("dorry marie",1759007,0).
attore("justin mcgriff",1759008,0).
attore("josh ostrovsky",1680898,0).
attore("skye stracke",1759009,1).
attore("eugenia tempesta",1176558,1).
attore("tegan crowley",1371536,0).
attore("benjamin rigby",1371541,0).
attore("ferdia walsh-peelo",1539216,2).
attore("ben carolan",1570231,2).
attore("mark mckenna",1539217,2).
attore("percy chamburuka",1570232,2).
attore("conor hamilton",1570233,0).
attore("kyle bradley donaldson",1539215,2).
attore("karl rice",1570234,0).
attore("ian kenny",1570235,0).
attore("lydia mcguinness",1570236,1).
attore("connor hamilton",1553696,0).
attore("pádraig j. dunne",1570239,0).
attore("eva-jane gaffney",1608146,1).
attore("kian murphy",1694940,2).
attore("santiago segura",1629275,2).
attore("axel mansella",1639308,0).
attore("mayra juárez",1769594,0).
attore("danika yarosh",1466613,1).
attore("alexandra lucchesi",1748192,0).
attore("austin hébert",1367847,0).
attore("sunny pawar",1717046,2).
attore("abhishek bharate",1750435,2).
attore("divian ladwa",1410834,0).
attore("priyanka bose",1296866,0).
attore("keshav jadhav",1750436,0).
attore("riddhi sen",1671080,0).
attore("rita boy",1750440,0).
attore("emilie cocquerel",1606096,0).
attore("sachin joab",1094512,0).
attore("menik gooneratne",1204264,0).
attore("anna samson",1515827,0).
attore("belinda misevski",1381668,0).
attore("lucy moir",1606097,0).

%membro_crew(ID, Nome, Genere)
membro_crew(7879, "john lasseter", 2).
membro_crew(1429549, "dale e. grahn", 0).
membro_crew(12905, "ash brannon", 2).
membro_crew(7902, "ruth lambert", 1).
membro_crew(16837, "mark steven johnson", 2).
membro_crew(15841, "william goldenberg", 0).
membro_crew(14765, "per hallberg", 0).
membro_crew(1478953, "cate hardman", 1).
membro_crew(16551, "ilona herman", 1).
membro_crew(15845, "john caglione jr.", 0).
membro_crew(14653, "ken diaz", 2).
membro_crew(1338976, "andy nelson", 2).
membro_crew(376, "arnon milchan", 2).
membro_crew(2997, "scott rudin", 2).
membro_crew(1392125, "j. paul huntsman", 0).
membro_crew(53346, "kate dowd", 1).
membro_crew(10714, "lindy hemming", 1).
membro_crew(10788, "steven lawrence", 2).
membro_crew(1532215, "charles bodycomb", 0).
membro_crew(1152, "oliver stone", 2).
membro_crew(6044, "mindy marin", 1).
membro_crew(16938, "renny harlin", 2).
membro_crew(1368867, "allen hall", 0).
membro_crew(2366, "dante ferretti", 2).
membro_crew(138, "quentin tarantino", 2).
membro_crew(2545, "lawrence bender", 2).
membro_crew(3115, "andrzej sekula", 2).
membro_crew(156, "sally menke", 1).
membro_crew(37334, "paul hellerman", 2).
membro_crew(37333, "heidi vogel", 0).
membro_crew(6940, "karyn rachtman", 0).
membro_crew(46589, "mary claire hannan", 1).
membro_crew(1395016, "brian markey", 0).
membro_crew(1549015, "ray maxwell", 0).
membro_crew(1877352, "marc gillson", 0).
membro_crew(148455, "ziad doueiri", 0).
membro_crew(1547239, "jacqueline aronson", 0).
membro_crew(1877360, "derek hurd", 0).
membro_crew(1877361, "ben parker", 0).
membro_crew(1564233, "mike stanwick", 0).
membro_crew(4507, "gary barber", 2).
membro_crew(3805, "jon peters", 2).
membro_crew(1341403, "richard king", 2).
membro_crew(5174, "barry sonnenfeld", 2).
membro_crew(518, "danny devito", 2).
membro_crew(5381, "michael shamberg", 2).
membro_crew(5382, "stacey sher", 1).
membro_crew(11802, "betsy heimann", 1).
membro_crew(1397881, "audrey futterman-stern", 0).
membro_crew(5328, "kerry barden", 2).
membro_crew(3104, "chris newman", 2).
membro_crew(15327, "nathan crowley", 2).
membro_crew(1392129, "john f. reynolds", 0).
membro_crew(1376818, "kevin bartnof", 0).
membro_crew(1342626, "john t. reitz", 0).
membro_crew(1401273, "peter j. silbermann", 0).
membro_crew(4504, "roger birnbaum", 2).
membro_crew(11695, "lucas foster", 2).
membro_crew(32487, "robert l. stevenson", 2).
membro_crew(1530166, "kathy nelson", 1).
membro_crew(282, "charles roven", 0).
membro_crew(1458527, "allen weisinger", 0).
membro_crew(12257, "tim galvin", 2).
membro_crew(1074163, "g.a. aguilar", 2).
membro_crew(957361, "craig haagensen", 0).
membro_crew(1540477, "dennis davidson", 0).
membro_crew(135935, "scott maginnis", 0).
membro_crew(1441238, "thom macintyre", 0).
membro_crew(1313, "andrew lesnie", 2).
membro_crew(5669, "douglas aibel", 2).
membro_crew(15308, "sharon boyle", 1).
membro_crew(957760, "ray hubley", 2).
membro_crew(1393372, "chuck stringer", 0).
membro_crew(3558, "ronald harwood", 2).
membro_crew(531, "danny elfman", 2).
membro_crew(11386, "james acheson", 2).
membro_crew(1530, "howard feuer", 2).
membro_crew(117, "howard shore", 2).
membro_crew(4197, "clay a. griffith", 2).
membro_crew(7537, "steve boeddeker", 0).
membro_crew(10820, "barry chusid", 2).
membro_crew(1377235, "russell mcentyre", 0).
membro_crew(15774, "chris buck", 0).
membro_crew(1397792, "marlon west", 0).
membro_crew(1447376, "anthony derosa", 2).
membro_crew(1447573, "maria gonzalez", 0).
membro_crew(1448084, "dan lund", 0).
membro_crew(1455541, "larry white", 0).
membro_crew(1457930, "james baker", 0).
membro_crew(9032, "bryan singer", 2).
membro_crew(4584, "robert jones", 2).
membro_crew(9040, "newton thomas sigel", 0).
membro_crew(9039, "john ottman", 2).
membro_crew(9033, "christopher mcquarrie", 2).
membro_crew(143893, "michelle bühler", 0).
membro_crew(9025, "james e. tocci", 2).
membro_crew(5812, "furio scarpelli", 2).
membro_crew(66641, "franco di giacomo", 0).
membro_crew(1213, "james newton howard", 2).
membro_crew(11409, "oliver wood", 2).
membro_crew(122464, "david kern", 2).
membro_crew(1415618, "donald j. malouf", 2).
membro_crew(1628600, "linda henrikson", 0).
membro_crew(3027, "stephen king", 2).
membro_crew(5912, "graeme revell", 2).
membro_crew(10630, "dean beville", 0).
membro_crew(1596321, "matthew c. beville", 0).
membro_crew(1433718, "dana gustafson", 0).
membro_crew(1389625, "derek raser", 0).
membro_crew(1552549, "david orr", 0).
membro_crew(4061, "louise frogley", 1).
membro_crew(83087, "john kwiatkowski", 2).
membro_crew(83090, "todd toon", 0).
membro_crew(91122, "dylan goss", 0).
membro_crew(91144, "shawn murphy", 0).
membro_crew(83088, "kimberly ellen lowe", 1).
membro_crew(584, "philip k. dick", 2).
membro_crew(59839, "harvey weinstein", 2).
membro_crew(1307, "bob weinstein", 2).
membro_crew(12997, "richard n. gladstein", 2).
membro_crew(57862, "ted tally", 2).
membro_crew(57465, "patrick mccormick", 2).
membro_crew(557, "colleen atwood", 0).
membro_crew(5507, "ronnie yeskel", 1).
membro_crew(970, "celestia fox", 1).
membro_crew(1411066, "sarah monzani", 0).
membro_crew(11001, "kevin stitt", 2).
membro_crew(5634, "patricia norris", 1).
membro_crew(1301, "philippe rousselot", 2).
membro_crew(5140, "wes craven", 2).
membro_crew(25058, "stuart levy", 0).
membro_crew(947, "hans zimmer", 2).
membro_crew(11404, "terence chang", 0).
membro_crew(11401, "john woo", 2).
membro_crew(1180471, "guy ferrandis", 0).
membro_crew(1558394, "jean-claude lother", 2).
membro_crew(8859, "bernie brillstein", 2).
membro_crew(1298, "brad grey", 2).
membro_crew(9269, "jeannine oppewall", 0).
membro_crew(14764, "christopher assells", 0).
membro_crew(142325, "simon crane", 0).
membro_crew(1332515, "klemens becker", 2).
membro_crew(1638257, "conor o sullivan", 0).
membro_crew(1534134, "alan walsh", 0).
membro_crew(1045, "bernard herrmann", 2).
membro_crew(29654, "dick smith", 0).
membro_crew(1354109, "raymond hartwick", 0).
membro_crew(1546904, "robert ward", 2).
membro_crew(909, "billy weber", 2).
membro_crew(65314, "giuseppe tornatore", 0).
membro_crew(7182, "elmer bernstein", 2).
membro_crew(12288, "robert evans", 2).
membro_crew(21271, "armen minasian", 2).
membro_crew(53648, "eyde belasco", 1).
membro_crew(91932, "cliff fleming", 2).
membro_crew(865, "michael bay", 2).
membro_crew(1581363, "brian blamey", 0).
membro_crew(142, "william broyles jr.", 2).
membro_crew(671, "richard l. anderson", 0).
membro_crew(13165, "ezra dweck", 0).
membro_crew(554887, "stephen hunter flick", 0).
membro_crew(510, "tim burton", 2).
membro_crew(5584, "dennis virkler", 2).
membro_crew(3794, "bob kane", 2).
membro_crew(5575, "akiva goldsman", 2).
membro_crew(10951, "benjamin melniker", 2).
membro_crew(10949, "michael uslan", 2).
membro_crew(1646230, "harry lu", 0).
membro_crew(1569565, "tony chavez", 0).
membro_crew(13588, "rosemary brandenburg", 1).
membro_crew(136, "sam mercer", 2).
membro_crew(541, "chris lebenzon", 2).
membro_crew(1378169, "rick kline", 2).
membro_crew(1388879, "will kaplan", 0).
membro_crew(16300, "tak fujimoto", 2).
membro_crew(27098, "gary goetzman", 2).
membro_crew(8376, "mark a. mangini", 2).
membro_crew(17630, "michael tadross", 2).
membro_crew(1593, "joseph middleton", 2).
membro_crew(2533, "dallas puett", 0).
membro_crew(1553743, "peter lindsay", 2).
membro_crew(1144651, "jeffery j. tufano", 0).
membro_crew(21405, "david klein", 2).
membro_crew(19303, "kevin smith", 2).
membro_crew(12374, "david coatsworth", 2).
membro_crew(61838, "glenn r. wilder", 2).
membro_crew(1224272, "john mcleod", 0).
membro_crew(1327030, "lora hirschberg", 0).
membro_crew(1562457, "rolf johnson", 0).
membro_crew(3987, "conrad buff iv", 2).
membro_crew(2031, "amanda mackey", 1).
membro_crew(2532, "cathy sandrich", 1).
membro_crew(1562248, "dennis mcneill", 2).
membro_crew(1548698, "pete anthony", 2).
membro_crew(17880, "wesley strick", 2).
membro_crew(949, "louis digiaimo", 2).
membro_crew(61, "robert mark kamen", 2).
membro_crew(15005, "don zimmerman", 2).
membro_crew(23653, "christine sheaks", 1).
membro_crew(553, "john dexter", 2).
membro_crew(1456359, "julie adams", 0).
membro_crew(2043, "john davis", 2).
membro_crew(50728, "andrew licht", 2).
membro_crew(59354, "jeffrey a. mueller", 2).
membro_crew(1171098, "darrell l. wight", 0).
membro_crew(1338372, "dan o connell", 0).
membro_crew(1390524, "jay wilkinson", 0).
membro_crew(1341781, "gregg landaker", 0).
membro_crew(14771, "r.a. rondell", 0).
membro_crew(1389624, "jay b. richardson", 0).
membro_crew(1398972, "pete romano", 0).
membro_crew(936765, "jeff atmajian", 0).
membro_crew(1551219, "sally boldt", 0).
membro_crew(1327762, "judy farr", 1).
membro_crew(1776, "francis ford coppola", 2).
membro_crew(25140, "sharon seymour", 1).
membro_crew(1259, "ennio morricone", 2).
membro_crew(21070, "mark w. mansbridge", 2).
membro_crew(3556, "roman polanski", 2).
membro_crew(1400, "wojciech kilar", 2).
membro_crew(2361, "tonino delli colli", 2).
membro_crew(3564, "hervé de luze", 2).
membro_crew(5671, "milena canonero", 1).
membro_crew(1288056, "sylvette baudrot", 0).
membro_crew(3105, "richard portman", 2).
membro_crew(58809, "martin kitrosser", 2).
membro_crew(23788, "matthew w. mungle", 2).
membro_crew(1409283, "alex l. worman", 0).
membro_crew(1919, "stefan czapsky", 2).
membro_crew(1479807, "janna stern", 0).
membro_crew(1454249, "frans vischer", 0).
membro_crew(108, "peter jackson", 2).
membro_crew(126, "fran walsh", 1).
membro_crew(41039, "judd apatow", 2).
membro_crew(12922, "gary foster", 2).
membro_crew(568911, "john barry", 2).
membro_crew(1564732, "chris glyn-jones", 0).
membro_crew(3904, "lee smith", 0).
membro_crew(9647, "steven weisberg", 2).
membro_crew(1050930, "hugo weng", 0).
membro_crew(9181, "edward zwick", 2).
membro_crew(9182, "marshall herskovitz", 2).
membro_crew(1155, "ferdinando scarfiotti", 2).
membro_crew(23702, "edward richardson", 0).
membro_crew(1389139, "david james", 2).
membro_crew(4868, "andrew marcus", 2).
membro_crew(983118, "larry mcconkey", 0).
membro_crew(3184, "clayton townsend", 2).
membro_crew(1376, "michael horton", 2).
membro_crew(6870, "duncan henderson", 2).
membro_crew(6877, "william sandell", 2).
membro_crew(3769, "michael ballhaus", 2).
membro_crew(59, "luc besson", 2).
membro_crew(907, "magali guidasci", 1).
membro_crew(14913, "peter grundy", 2).
membro_crew(8297, "roger avary", 2).
membro_crew(11799, "gary m. zuckerbrod", 2).
membro_crew(5779, "david wasco", 2).
membro_crew(11800, "charles collum", 2).
membro_crew(11801, "sandy reynolds-wasco", 0).
membro_crew(1174010, "vance trussell", 0).
membro_crew(1552002, "bill fletcher", 0).
membro_crew(22054, "ken lesco", 0).
membro_crew(230436, "barbara harris", 0).
membro_crew(41655, "jeff olan", 0).
membro_crew(1380055, "patia prouty", 0).
membro_crew(3130, "jennifer beals", 1).
membro_crew(1440853, "donald likovich", 0).
membro_crew(1584695, "bruce jagoda", 0).
membro_crew(1545448, "mary ramos", 0).
membro_crew(1608789, "haley sweet", 0).
membro_crew(53898, "andrew dickler", 2).
membro_crew(1411258, "linda arnold", 0).
membro_crew(118868, "emily wolfe", 1).
membro_crew(1545701, "samantha gore", 0).
membro_crew(960673, "peter borck", 2).
membro_crew(1542283, "adam silver", 2).
membro_crew(1895853, "giuseppe maini iii", 0).
membro_crew(61076, "daniel bradford", 2).
membro_crew(1399999, "michael levine", 0).
membro_crew(1895856, "mark shane davis", 0).
membro_crew(1895857, "chris ahern", 0).
membro_crew(1395281, "bob gorelick", 2).
membro_crew(1878556, "iain jones", 0).
membro_crew(1895858, "joseph w. grafmuller", 0).
membro_crew(1895859, "gary l. brennan", 0).
membro_crew(1895860, "alonzo brown jr.", 0).
membro_crew(1895861, "angelo de la cruz", 0).
membro_crew(1280435, "thomas l. bellissimo", 2).
membro_crew(1410102, "jonathan r. hodges", 0).
membro_crew(1895863, "ruben cortez", 0).
membro_crew(1287672, "larry fioritto", 0).
membro_crew(1197438, "cameron", 0).
membro_crew(1406792, "deborah wuliger", 0).
membro_crew(1895865, "francis r. mahony iii", 2).
membro_crew(33685, "tatiana s. riegel", 1).
membro_crew(1895867, "anthony hall", 0).
membro_crew(1718116, "marc meisenheimer", 0).
membro_crew(1895869, "michael stocks", 0).
membro_crew(1895870, "julia zane", 0).
membro_crew(1804966, "anna-lisa nilsson", 1).
membro_crew(1646284, "larry scharf", 0).
membro_crew(6828, "ken king", 0).
membro_crew(1338223, "kate morath", 0).
membro_crew(1400812, "hugh waddell", 0).
membro_crew(1416155, "james bolt", 2).
membro_crew(904, "jeffrey l. kimball", 0).
membro_crew(21351, "derek brechin", 2).
membro_crew(1317, "philip ivey", 2).
membro_crew(9441, "ellen heuer", 0).
membro_crew(2384, "bernard williams", 2).
membro_crew(1153, "john a. alonzo", 2).
membro_crew(41289, "lionel wigram", 0).
membro_crew(32017, "didier lavergne", 0).
membro_crew(1554342, "gregory b. peña", 2).
membro_crew(1569558, "chris winn", 0).
membro_crew(161787, "dick ziker", 0).
membro_crew(1410574, "gus duron", 0).
membro_crew(561, "john papsidera", 0).
membro_crew(1392127, "patrick j. foley", 0).
membro_crew(498, "joanna johnston", 1).
membro_crew(9558, "joey box", 2).
membro_crew(1367502, "andy ryan", 0).
membro_crew(2875, "dean tavoularis", 2).
membro_crew(7784, "bob ducsay", 2).
membro_crew(56042, "ivan bilancio", 2).
membro_crew(74978, "terry porter", 0).
membro_crew(4956, "bernardo bertolucci", 2).
membro_crew(1391679, "mike szakmeister", 0).
membro_crew(13434, "bruce crone", 2).
membro_crew(7399, "ben stiller", 2).
membro_crew(2950, "robert elswit", 2).
membro_crew(3995, "jeff dawn", 0).
membro_crew(1319844, "lisa lovaas", 1).
membro_crew(10632, "m. james arnett", 0).
membro_crew(142165, "suzana peric", 0).
membro_crew(1403399, "stan parks", 0).
membro_crew(1457666, "kris cole", 0).
membro_crew(10836, "elinor rose galbraith", 1).
membro_crew(9615, "jim miller", 2).
membro_crew(2100, "lawrence konner", 2).
membro_crew(2103, "mark rosenthal", 2).
membro_crew(56988, "robert brinkmann", 2).
membro_crew(4610, "john landis", 2).
membro_crew(5021, "leslie tomkins", 0).
membro_crew(1157, "david ray", 2).
membro_crew(1150, "brian de palma", 2).
membro_crew(1151, "martin bregman", 2).
membro_crew(57652, "louis a. stroller", 0).
membro_crew(1475003, "chris soldo", 0).
membro_crew(1550205, "mark burchard", 0).
membro_crew(1297, "richard d. zanuck", 2).
membro_crew(7715, "frank j. urioste", 2).
membro_crew(6880, "robert gould", 2).
membro_crew(25061, "maria-teresa barbasso", 1).
membro_crew(1411166, "peter tothpal", 0).
membro_crew(1206905, "james w. tyson", 0).
membro_crew(4673, "joy todd", 1).
membro_crew(1412705, "tricia henry ashford", 0).
membro_crew(1551870, "tim cooney", 0).
membro_crew(1685017, "todd bassman", 0).
membro_crew(15017, "bill corso", 2).
membro_crew(16601, "william mesa", 2).
membro_crew(1377502, "sam emerson", 0).
membro_crew(3335, "jim thompson", 2).
membro_crew(1402708, "donna spahn", 1).
membro_crew(117867, "george simpson", 2).
membro_crew(6883, "dick bernstein", 0).
membro_crew(957264, "susan germaine", 1).
membro_crew(6881, "erica edell phillips", 1).
membro_crew(1077782, "gary a. hecker", 2).
membro_crew(1056758, "nancy bernstein", 1).
membro_crew(92479, "gary hymes", 0).
membro_crew(1403415, "david b. nowell", 2).
membro_crew(1400849, "jerry moss", 0).
membro_crew(1357070, "denny caira", 0).
membro_crew(75380, "robert jackson", 2).
membro_crew(1733142, "gary burritt", 0).
membro_crew(936194, "christina smith", 1).
membro_crew(7233, "jeff mann", 2).
membro_crew(1100, "arnold schwarzenegger", 2).
membro_crew(1226, "rick heinrichs", 2).
membro_crew(1400082, "zade rosenthal", 0).
membro_crew(83072, "p. scott bailey", 0).
membro_crew(1778009, "catherine calleson", 0).
membro_crew(3097, "gordon willis", 2).
membro_crew(1549583, "kathleen gerlach", 0).
membro_crew(369, "henry bumstead", 2).
membro_crew(16294, "jonathan demme", 2).
membro_crew(16296, "ronald m. bozman", 2).
membro_crew(16297, "edward saxon", 2).
membro_crew(16298, "kenneth utt", 2).
membro_crew(4869, "craig mckay", 2).
membro_crew(20585, "karen o hara", 0).
membro_crew(9178, "kristi zea", 1).
membro_crew(32490, "alan d angerio", 0).
membro_crew(1031697, "colleen sharp", 1).
membro_crew(1378068, "carl fullerton", 0).
membro_crew(1550194, "ken connors", 0).
membro_crew(3893, "david s. goyer", 2).
membro_crew(4249, "donna isaacson", 1).
membro_crew(2293, "frank miller", 2).
membro_crew(1530327, "brad dechter", 2).
membro_crew(1564250, "james ashwill", 0).
membro_crew(6688, "anna b. sheppard", 1).
membro_crew(3563, "allan starski", 2).
membro_crew(1487478, "waldemar weiss", 0).
membro_crew(2871, "fred roos", 2).
membro_crew(7790, "peter russell", 0).
membro_crew(75804, "kevin de la noy", 2).
membro_crew(1404840, "dean humphreys", 2).
membro_crew(9360, "suzanne tenner", 1).
membro_crew(1416093, "janine rath", 0).
membro_crew(1390535, "stephen vaughan", 2).
membro_crew(1460602, "roger huynh", 0).
membro_crew(1341405, "michael magill", 0).
membro_crew(17148, "kalina ivanov", 1).
membro_crew(1416054, "elle elliott", 0).
membro_crew(244, "ray lovejoy", 2).
membro_crew(5339, "david boulton", 0).
membro_crew(9619, "skip lievsay", 0).
membro_crew(15431, "neal martz", 0).
membro_crew(16786, "thomas harris", 2).
membro_crew(21718, "gary kosko", 0).
membro_crew(54433, "james deeth", 0).
membro_crew(56387, "tony c. jannelli", 0).
membro_crew(65209, "brian hartman", 0).
membro_crew(92376, "marko a. costanzo", 2).
membro_crew(92386, "marissa littlefield", 0).
membro_crew(69129, "george p. wilbur", 2).
membro_crew(73842, "marshall persinger", 2).
membro_crew(74787, "walter robles", 0).
membro_crew(82744, "matthew myers", 2).
membro_crew(142156, "john fundus", 0).
membro_crew(142161, "john robotham", 0).
membro_crew(142168, "john leonidas", 0).
membro_crew(543384, "brian johnson", 0).
membro_crew(1308375, "frank kern", 2).
membro_crew(1321372, "todd kleitsch", 0).
membro_crew(1328148, "donna m. belajac", 1).
membro_crew(1333607, "hartsell taylor", 0).
membro_crew(1337469, "nic ratner", 0).
membro_crew(1349468, "michael cassidy", 2).
membro_crew(1355956, "dwight benjamin-creel", 0).
membro_crew(1391591, "bruce maccallum", 0).
membro_crew(1395360, "ann miller", 1).
membro_crew(1395368, "russell engels", 0).
membro_crew(1400072, "tom fleischman", 0).
membro_crew(1415964, "deborah wallach", 0).
membro_crew(1474992, "grace blake", 0).
membro_crew(1538430, "ken regan", 2).
membro_crew(1544908, "steven visscher", 2).
membro_crew(1546806, "francine byrne", 0).
membro_crew(1552181, "chris call", 0).
membro_crew(1554309, "michael f. burke", 2).
membro_crew(1674650, "billy miller", 0).
membro_crew(1782069, "s. bruce wineinger", 0).
membro_crew(1782070, "c.a. kelly", 0).
membro_crew(1782071, "richard aversa", 0).
membro_crew(1782072, "mark streapy", 0).
membro_crew(1783214, "ed lohrer iii", 0).
membro_crew(1783215, "richard fishwick", 0).
membro_crew(1783216, "trish breganti", 0).
membro_crew(1783218, "eileen garrigan", 0).
membro_crew(1783219, "catherine marie mcdonald", 0).
membro_crew(1783220, "dennis radesky", 0).
membro_crew(1783221, "judy arthur", 0).
membro_crew(1783223, "larry jackson", 0).
membro_crew(1783226, "neri kyle tannenbaum", 0).
membro_crew(1783228, "dennis maitland ii", 0).
membro_crew(1783230, "homer denison", 0).
membro_crew(1783233, "robert f. warren", 0).
membro_crew(1461379, "rasoul azadani", 0).
membro_crew(102343, "allan a. apone", 0).
membro_crew(7733, "bruce robert hill", 2).
membro_crew(3560, "alain sarde", 2).
membro_crew(113073, "paul massey", 0).
membro_crew(5733, "pierre boileau", 2).
membro_crew(5734, "thomas narcejac", 2).
membro_crew(500, "tom cruise", 2).
membro_crew(18989, "jonathan mckinstry", 2).
membro_crew(10833, "peter amundson", 2).
membro_crew(3098, "nino rota", 2).
membro_crew(1432957, "ross shuman", 0).
membro_crew(1325, "john hubbard", 2).
membro_crew(46081, "thomas kloss", 2).
membro_crew(7748, "cornell woolrich", 2).
membro_crew(1377133, "merie weismiller wallace", 0).
membro_crew(1367493, "john t. cucci", 0).
membro_crew(23787, "deborah la mia denaver", 1).
membro_crew(17649, "alexander witt", 2).
membro_crew(932186, "bruce fowler", 2).
membro_crew(1271644, "guy hendrix dyas", 0).
membro_crew(1113, "lucinda syson", 1).
membro_crew(23867, "héctor romero", 0).
membro_crew(180576, "rich thorne", 2).
membro_crew(40546, "guillermo rosas", 2).
membro_crew(240, "stanley kubrick", 2).
membro_crew(5820, "alberto grimaldi", 2).
membro_crew(4667, "franco arcalli", 0).
membro_crew(1035044, "carlo leva", 2).
membro_crew(6055, "victor j. zolfo", 2).
membro_crew(8678, "oliver scholl", 0).
membro_crew(9618, "sean haworth", 0).
membro_crew(1391566, "julia k. levine", 0).
membro_crew(123, "barrie m. osborne", 2).
membro_crew(60082, "lou holtz jr.", 0).
membro_crew(60083, "marc gurvitz", 0).
membro_crew(1367508, "steve gehrke", 2).
membro_crew(54272, "joel hynek", 0).
membro_crew(1403475, "kevin elam", 0).
membro_crew(130938, "sergei bodrov", 0).
membro_crew(16595, "pier luigi basile", 0).
membro_crew(1324, "victoria burrows", 1).
membro_crew(1314, "grant major", 2).
membro_crew(1373, "dan hennah", 2).
membro_crew(1326, "liz mullane", 1).
membro_crew(1401594, "douglas curran", 0).
membro_crew(1410205, "beverly winston", 0).
membro_crew(1407197, "maurice schell", 0).
membro_crew(1434274, "jim mcpherson", 0).
membro_crew(1404230, "sidney ray baldwin", 0).
membro_crew(2870, "gray frederickson", 2).
membro_crew(457, "albert s. ruddy", 2).
membro_crew(3083, "mario puzo", 2).
membro_crew(3099, "william reynolds", 2).
membro_crew(3100, "peter zinner", 2).
membro_crew(3101, "andrea eastman", 0).
membro_crew(3103, "charles grenzbach", 0).
membro_crew(3106, "john c. hammell", 0).
membro_crew(6099, "valerio de paolis", 0).
membro_crew(6851, "anna hill johnstone", 1).
membro_crew(16194, "philip leto", 0).
membro_crew(10546, "fred t. gallo", 2).
membro_crew(11789, "fred c. caruso", 0).
membro_crew(14059, "sass bedig", 0).
membro_crew(30580, "philip smith", 2).
membro_crew(81519, "warren clymer", 0).
membro_crew(81532, "george newman", 0).
membro_crew(81533, "marilyn putnam", 0).
membro_crew(51302, "joe bucaro iii", 2).
membro_crew(96912, "joe lombardi", 0).
membro_crew(718968, "stephen f. kesten", 2).
membro_crew(1318092, "paul j. lombardi", 2).
membro_crew(1433439, "paul baxley", 2).
membro_crew(1518601, "phil rhodes", 0).
membro_crew(1547035, "riccardo bertoni", 0).
membro_crew(1614958, "steven burnett", 0).
membro_crew(1625346, "ned kopp", 0).
membro_crew(1625347, "tony brandt", 0).
membro_crew(1789636, "carl fortina", 0).
membro_crew(1530334, "shigeru mori", 0).
membro_crew(4671, "zach staenberg", 2).
membro_crew(53813, "sandy cochrane", 0).
membro_crew(58144, "don rhymer", 2).
membro_crew(15335, "brian smrz", 2).
membro_crew(13436, "stephen abrums", 2).
membro_crew(1404326, "thomas a. carlson", 0).
membro_crew(1440877, "garry elmendorf", 0).
membro_crew(21984, "larry dias", 2).
membro_crew(7535, "hilton rosemarin", 0).
membro_crew(7689, "wally westmore", 2).
membro_crew(9107, "harold lewis", 2).
membro_crew(8619, "franz waxman", 2).
membro_crew(4350, "edith head", 1).
membro_crew(2636, "alfred hitchcock", 2).
membro_crew(5728, "james c. katz", 2).
membro_crew(2654, "robert burks", 2).
membro_crew(2655, "george tomasini", 2).
membro_crew(5188, "hal pereira", 2).
membro_crew(5735, "alec coppel", 2).
membro_crew(5736, "samuel a. taylor", 2).
membro_crew(1834770, "john ferren", 0).
membro_crew(7687, "sam comer", 2).
membro_crew(1733585, "richard mueller", 0).
membro_crew(100762, "john p. fulton", 0).
membro_crew(1027339, "farciot edouart", 0).
membro_crew(111987, "w. wallace kelley", 2).
membro_crew(1332196, "frank r. mckelvy", 0).
membro_crew(19460, "saul bass", 2).
membro_crew(50581, "daniel mccauley", 0).
membro_crew(50580, "nellie manley", 0).
membro_crew(1500450, "winston h. leverett", 0).
membro_crew(39055, "muir mathieson", 2).
membro_crew(2653, "herbert coleman", 2).
membro_crew(5181, "john michael hayes", 2).
membro_crew(5187, "j. mcmillan johnson", 0).
membro_crew(7688, "ray moyer", 2).
membro_crew(7690, "c.o. erickson", 2).
membro_crew(34101, "tom steele", 0).
membro_crew(2288, "james liggat", 2).
membro_crew(29405, "christopher rouse", 0).
membro_crew(5026, "akira kurosawa", 2).
membro_crew(894, "trevor rabin", 2).
membro_crew(1118402, "al di sarro", 2).
membro_crew(1227173, "robin harlan", 0).
membro_crew(1332017, "brian christensen", 2).
membro_crew(1423864, "brent boates", 0).
membro_crew(959962, "mari-an ceo", 1).
membro_crew(590075, "joseph bennett", 0).
membro_crew(961111, "andrew rothschild", 2).
membro_crew(6207, "doug hardwick", 0).
membro_crew(11694, "doug liman", 2).
membro_crew(49912, "julianne jordan", 0).
membro_crew(1997, "charles leavitt", 0).
membro_crew(68699, "mark mccorkle", 2).
membro_crew(68700, "bob schooley", 2).
membro_crew(74989, "mark emery moore", 2).
membro_crew(11882, "bob morones", 2).
membro_crew(799, "harold faltermeyer", 2).
membro_crew(1463182, "aaron williams", 0).
membro_crew(1463185, "elizabeth mcclurg", 0).
membro_crew(1416435, "david schmalz", 2).
membro_crew(53331, "tristan oliver", 0).
membro_crew(1405798, "peter wignall", 0).
membro_crew(38415, "mario iscovich", 2).
membro_crew(4658, "danilo bollettini", 0).
membro_crew(4659, "giovanni corridori", 0).
membro_crew(1547720, "gérard hardy", 0).
membro_crew(14554, "humphrey cobb", 0).
membro_crew(10769, "calder willingham", 0).
membro_crew(2090, "kirk douglas", 2).
membro_crew(3349, "james b. harris", 2).
membro_crew(3350, "gerald fried", 2).
membro_crew(14555, "georg krause", 2).
membro_crew(14556, "eva kroll", 1).
membro_crew(14557, "ludwig reiber", 0).
membro_crew(11926, "ilse dubois", 0).
membro_crew(14559, "arthur schramm", 0).
membro_crew(14561, "erwin lange", 0).
membro_crew(14560, "martin müller", 2).
membro_crew(1410819, "john pommer", 0).
membro_crew(35674, "helmut ringelmann", 0).
membro_crew(1317887, "franz-josef spieker", 2).
membro_crew(1457185, "hans stumpf", 0).
membro_crew(1043428, "al gramaglia", 0).
membro_crew(40570, "hannes staudinger", 0).
membro_crew(1566070, "lars looschen", 0).
membro_crew(1566072, "trudy von trotha", 0).
membro_crew(1310, "saul zaentz", 2).
membro_crew(10407, "tom smith", 2).
membro_crew(10408, "douglas twiddy", 0).
membro_crew(4385, "sergio leone", 2).
membro_crew(5821, "eugenio alabiso", 2).
membro_crew(4670, "nino baragli", 2).
membro_crew(4655, "carlo simi", 2).
membro_crew(5810, "luciano vincenzoni", 0).
membro_crew(5811, "agenore incrocci", 2).
membro_crew(1458526, "rino carboni", 0).
membro_crew(233354, "giancarlo santi", 0).
membro_crew(4985, "eros bacciucchi", 0).
membro_crew(589876, "román ariznavarreta", 0).
membro_crew(1090587, "aldo pomilia", 0).
membro_crew(97634, "josé antonio pérez giner", 2).
membro_crew(1542052, "fabrizio gianni", 0).
membro_crew(4661, "benito stefanelli", 0).
membro_crew(21181, "fabio testi", 2).
membro_crew(53196, "sergio salvati", 2).
membro_crew(5819, "angelo novi", 0).
membro_crew(5555, "sergio donati", 0).
membro_crew(1633506, "neri nazzareno", 0).
membro_crew(45670, "bruno nicolai", 0).
membro_crew(46418, "mickey knox", 2).
membro_crew(2284, "wendy carlos", 1).
membro_crew(2286, "john alcott", 2).
membro_crew(2262, "anthony burgess", 2).
membro_crew(14896, "si litvinoff", 0).
membro_crew(976789, "max l. raab", 2).
membro_crew(8424, "bill butler", 2).
membro_crew(852, "gerald b. greenberg", 2).
membro_crew(8346, "jerry ziesmer", 2).
membro_crew(4984, "antonella pompei", 1).
membro_crew(4954, "bino cicogna", 0).
membro_crew(4986, "fulvio morsella", 0).
membro_crew(4955, "dario argento", 2).
membro_crew(6866, "todd arnow", 2).
membro_crew(20827, "hideo oguni", 2).
membro_crew(34380, "asakazu nakai", 2).
membro_crew(70129, "takao saitô", 2).
membro_crew(33132, "yoshirô muraki", 0).
membro_crew(143707, "teruyo nogami", 0).
membro_crew(1534577, "fumio yanoguchi", 0).
membro_crew(5016, "jan harlan", 2).
membro_crew(1304, "gabriella pescucci", 1).
membro_crew(3662, "cis corman", 1).
membro_crew(4656, "gabe videla", 0).
membro_crew(4657, "louis craig", 2).
membro_crew(4660, "jacques godbout", 0).
membro_crew(4668, "franco ferrini", 2).
membro_crew(4669, "claudio mancini", 0).
membro_crew(4674, "sandro battaglia", 0).
membro_crew(4675, "antonio scaramuzza", 0).
membro_crew(4676, "carlo tafani", 0).
membro_crew(4677, "romano mancini", 0).
membro_crew(4678, "bruno charier", 0).
membro_crew(32048, "enrico medioli", 0).
membro_crew(50818, "ernesto gastaldi", 2).
membro_crew(69973, "piero de bernardi", 0).
membro_crew(138247, "stuart kaminsky", 0).
membro_crew(234556, "leonardo benvenuti ", 0).
membro_crew(1344882, "harry grey", 0).
membro_crew(10549, "justin scoppa jr.", 2).
membro_crew(26988, "ken pepiot", 0).
membro_crew(1397844, "gabriel guy", 0).
membro_crew(12240, "pierre boulle", 2).
membro_crew(10404, "diane johnson", 1).
membro_crew(2285, "rachel elkind", 1).
membro_crew(5022, "roy walker", 2).
membro_crew(10405, "barbara daly", 0).
membro_crew(1327404, "rick le fevour", 0).
membro_crew(1522745, "patrick caulfield", 0).
membro_crew(1398946, "john a. larsen", 0).
membro_crew(1697, "takeshi seyama", 2).
membro_crew(1344278, "pamela alch", 1).
membro_crew(1415957, "jim dowdall", 0).
membro_crew(1728594, "don pulford", 0).
membro_crew(1154, "giorgio moroder", 2).
membro_crew(1513639, "john richardson", 0).
membro_crew(92301, "kathleen m. courtney", 1).
membro_crew(1552062, "peter j. devlin", 0).
membro_crew(1337123, "nick navarro", 2).
membro_crew(1416440, "barbara bass", 0).
membro_crew(1401803, "guy williams", 0).
membro_crew(24190, "rolfe kent", 2).
membro_crew(12083, "joe stillman", 2).
membro_crew(7229, "marco beltrami", 2).
membro_crew(1778013, "gary damian thomas", 0).
membro_crew(1413000, "richard schoen", 0).
membro_crew(1377220, "doug hemphill", 2).
membro_crew(1223099, "christopher t. welch", 0).
membro_crew(13223, "jim passon", 0).
membro_crew(58192, "stephen f. windon", 2).
membro_crew(1399927, "angelo colavecchia", 0).
membro_crew(9439, "catherine harper", 0).
membro_crew(3276, "roger mussenden", 2).
membro_crew(1156, "alixe gordin", 0).
membro_crew(61421, "david womersley", 0).
membro_crew(1407681, "rick hromadka", 0).
membro_crew(548435, "nerses gezalyan", 0).
membro_crew(1421685, "serge sretschinsky", 0).
membro_crew(11874, "neal h. moritz", 2).
membro_crew(15328, "kevin kavanaugh", 0).
membro_crew(11225, "gary tomkins", 2).
membro_crew(23456, "shaune harrison", 0).
membro_crew(1034754, "james hambidge", 0).
membro_crew(1367562, "jack english", 2).
membro_crew(1440848, "joshua i. kolden", 0).
membro_crew(1512798, "jamie christopher", 0).
membro_crew(19595, "yasuyoshi tokuma", 2).
membro_crew(16363, "nina gold", 1).
membro_crew(1335066, "andrew petrotta", 0).
membro_crew(28862, "debra echard", 1).
membro_crew(899, "glen scantlebury", 2).
membro_crew(92344, "marc baird", 0).
membro_crew(1102139, "jason d. mcgatlin", 0).
membro_crew(1551666, "tom calderaro", 0).
membro_crew(1684304, "harald belker", 0).
membro_crew(23772, "rod mclean", 0).
membro_crew(55418, "paul trijbits", 2).
membro_crew(11098, "john powell", 2).
membro_crew(15332, "mark p. stoeckinger", 0).
membro_crew(8705, "brad ricker", 2).
membro_crew(969743, "dean wolcott", 2).
membro_crew(138618, "gary rizzo", 0).
membro_crew(1644462, "steve smith", 0).
membro_crew(57547, "robert e. howard", 0).
membro_crew(986687, "mark harris", 2).
membro_crew(1325917, "simon lamont", 0).
membro_crew(1403490, "alex gibson", 0).
membro_crew(1130137, "ilyse a. reutlinger", 0).
membro_crew(18926, "casey grant", 0).
membro_crew(11021, "elizabeth wilcox", 1).
membro_crew(21673, "ericson core", 2).
membro_crew(1367505, "ted caplan", 0).
membro_crew(1390527, "dave kulczycki", 0).
membro_crew(1416153, "donald sylvester", 0).
membro_crew(1548639, "yvonne melville", 0).
membro_crew(92332, "waldo sanchez", 0).
membro_crew(113055, "mildred iatrou", 0).
membro_crew(81687, "rick avery", 2).
membro_crew(169628, "jeff imada", 2).
membro_crew(1186279, "jacques jouffret", 0).
membro_crew(1389585, "bill taliaferro", 0).
membro_crew(5359, "mychael danna", 2).
membro_crew(1393443, "robert jackson", 2).
membro_crew(1453892, "david grant", 0).
membro_crew(9337, "toni-ann walker", 0).
membro_crew(1399636, "jerry pooler", 0).
membro_crew(1416096, "whitney james", 0).
membro_crew(40471, "mark bridges", 2).
membro_crew(1401601, "karen pidgurski", 0).
membro_crew(471, "maria djurkovic", 1).
membro_crew(1429245, "yves de bono", 0).
membro_crew(7903, "mary hidalgo", 1).
membro_crew(52193, "r.j. kizer", 2).
membro_crew(60711, "brent o connor", 2).
membro_crew(2215, "denise chamian", 1).
membro_crew(47052, "tony ludwig", 2).
membro_crew(47053, "alan riche", 2).
membro_crew(82133, "david webb", 2).
membro_crew(8531, "anna roth", 0).
membro_crew(1392925, "portia tickell", 0).
membro_crew(1347760, "elizabeth himelstein", 0).
membro_crew(1416434, "michael j. hogan", 2).
membro_crew(1428227, "tom cummins", 0).
membro_crew(1569557, "richard mosier", 0).
membro_crew(1400092, "jeremy braben", 0).
membro_crew(29606, "matt greenberg", 2).
membro_crew(5363, "coreen mayrs", 1).
membro_crew(49826, "john baldecchi", 2).
membro_crew(1378725, "blue angus", 0).
membro_crew(1387544, "kelly moon", 0).
membro_crew(1399287, "mark dornfeld", 0).
membro_crew(1421695, "craig henderson", 0).
membro_crew(16739, "jeffrey a. okun", 0).
membro_crew(57432, "gary capo", 2).
membro_crew(1118709, "lydia bottegoni", 0).
membro_crew(1403710, "renee burke", 0).
membro_crew(1410581, "ciaran kavanagh", 0).
membro_crew(1319383, "philip toolin", 0).
membro_crew(1578170, "gustavo covarrubias", 0).
membro_crew(66513, "jeffrey harlacker", 0).
membro_crew(636, "joe hisaishi", 2).
membro_crew(11614, "m. night shyamalan", 2).
membro_crew(1393329, "carmila gittens", 0).
membro_crew(74768, "thomas j. mack", 0).
membro_crew(40795, "bronwyn preston", 0).
membro_crew(160927, "scott stambler", 2).
membro_crew(9639, "thomas valentine", 2).
membro_crew(41080, "allison jones", 1).
membro_crew(1392130, "andrew somers", 0).
membro_crew(1392134, "jayme s. parker", 0).
membro_crew(1401593, "phil pastuhov", 0).
membro_crew(1409271, "adam johnston", 2).
membro_crew(1404742, "lance fisher", 0).
membro_crew(113089, "dennis rogers", 0).
membro_crew(54267, "kim h. winther", 0).
membro_crew(1407364, "noon orsatti", 0).
membro_crew(1416438, "rebecca robertson", 1).
membro_crew(1415333, "elaine l. offers", 0).
membro_crew(1417398, "janice alexander", 0).
membro_crew(83091, "dean a. zupancic", 2).
membro_crew(62725, "lisa fields", 0).
membro_crew(1455613, "brett paton", 0).
membro_crew(1549428, "kevin harris", 0).
membro_crew(1463424, "donald myers", 0).
membro_crew(29380, "steven ramirez", 2).
membro_crew(1405236, "thomas boland", 0).
membro_crew(7449, "shinobu hashimoto", 2).
membro_crew(20832, "sôjirô motoki", 2).
membro_crew(7460, "fumio hayasaka", 2).
membro_crew(1513913, "takashi matsuyama", 0).
membro_crew(1069167, "sakae hirosawa", 0).
membro_crew(585115, "hiromichi horikawa", 0).
membro_crew(564864, "yasuyoshi tajitsu", 0).
membro_crew(1530320, "takeharu shimada", 0).
membro_crew(18609, "masaru satô", 2).
membro_crew(1640545, "hiroshi nezu", 0).
membro_crew(1640546, "ichirô minawa", 0).
membro_crew(1425824, "dan delgado", 0).
membro_crew(5362, "heike brandstatter", 1).
membro_crew(1364412, "piero mura", 0).
membro_crew(1561994, "lavinia waters", 0).
membro_crew(1576007, "marc wolff", 2).
membro_crew(1132695, "carl boles", 0).
membro_crew(608, "hayao miyazaki", 2).
membro_crew(1061537, "andrew mollo", 0).
membro_crew(129, "j.r.r. tolkien", 2).
membro_crew(1335543, "roger holden", 0).
membro_crew(10572, "theodore shapiro", 2).
membro_crew(17871, "john hamburg", 2).
membro_crew(7626, "avi arad", 2).
membro_crew(7624, "stan lee", 2).
membro_crew(1401372, "craig fehrman", 0).
membro_crew(1442212, "patrick janicke", 0).
membro_crew(1459655, "ken kugler", 0).
membro_crew(1370759, "chris romano", 0).
membro_crew(1399117, "david c. hughes", 0).
membro_crew(1340345, "craig henighan", 0).
membro_crew(1404850, "michael gibson", 0).
membro_crew(1532354, "john w. deblau", 0).
membro_crew(42994, "david dobkin", 2).
membro_crew(1586922, "gavin greenaway", 0).
membro_crew(22302, "stuart cornfeld", 2).
membro_crew(15732, "alan macdonald", 2).
membro_crew(1296, "bruce berman", 2).
membro_crew(23486, "christophe beck", 2).
membro_crew(1392909, "thomas j. smith", 0).
membro_crew(23420, "bill carraro", 2).
membro_crew(15348, "daniel mindel", 0).
membro_crew(1550832, "ed novick", 0).
membro_crew(5664, "barry mendel", 2).
membro_crew(11657, "saar klein", 2).
membro_crew(54248, "christopher b. landon", 2).
membro_crew(933333, "john buchan", 0).
membro_crew(10958, "douglas a. mowat", 0).
membro_crew(1569823, "joseph keideth", 0).
membro_crew(1404808, "leigh ann yandle", 0).
membro_crew(22814, "richard wenk", 2).
membro_crew(41018, "chris brigham", 0).
membro_crew(1334485, "alan rankin", 0).
membro_crew(8410, "richard roberts", 2).
membro_crew(1417514, "michael babcock", 0).
membro_crew(525, "christopher nolan", 2).
membro_crew(556, "emma thomas", 1).
membro_crew(1425975, "joe curtin", 0).
membro_crew(23651, "gavin bocquet", 2).
membro_crew(1314465, "thomas nellen", 0).
membro_crew(1190889, "stratton leopold", 0).
membro_crew(65315, "alessandro baricco", 0).
membro_crew(12100, "jeffrey price", 2).
membro_crew(12101, "peter s. seaman", 2).
membro_crew(26475, "brent maddock", 2).
membro_crew(26479, "s. s. wilson", 2).
membro_crew(1669267, "alex madison", 1).
membro_crew(75250, "g. tony scarano", 0).
membro_crew(1400535, "colin anderson", 0).
membro_crew(1813644, "karin silvestri", 1).
membro_crew(56257, "duncan kennedy", 0).
membro_crew(56258, "donna powers", 1).
membro_crew(56260, "wayne powers", 2).
membro_crew(1421665, "carrie bauer", 0).
membro_crew(1421666, "beth bajuk", 0).
membro_crew(1421667, "ligia ornelas", 0).
membro_crew(46083, "david sandefur", 0).
membro_crew(1377214, "gary deaton", 0).
membro_crew(1378219, "eric j. bates", 0).
membro_crew(1355526, "russell r. anderson", 0).
membro_crew(1421668, "javier nava", 0).
membro_crew(92359, "karl j. martin", 0).
membro_crew(1421670, "robb wilson", 0).
membro_crew(60219, "scott balcerek", 2).
membro_crew(6063, "kristen branan", 0).
membro_crew(1421671, "kevin clark", 0).
membro_crew(1421672, "scott dougherty", 0).
membro_crew(1421673, "mark eggenweiler", 0).
membro_crew(1127957, "lincoln kupchak", 0).
membro_crew(1409750, "steve shaw", 0).
membro_crew(1421677, "heather smith", 0).
membro_crew(1421678, "john e. sasaki", 0).
membro_crew(1421679, "craig a. mumma", 0).
membro_crew(1406110, "rebecca marie", 0).
membro_crew(1421680, "douglas r. macmillan", 0).
membro_crew(141483, "jamie dixon", 0).
membro_crew(1421681, "constance bracewell", 0).
membro_crew(1421682, "julie nelson", 0).
membro_crew(1421683, "bruce pearson", 0).
membro_crew(1421684, "ken stranahan", 0).
membro_crew(1273377, "leo j. napolitano", 0).
membro_crew(1421686, "gregory j. schmidt", 0).
membro_crew(1421687, "marc spicer", 0).
membro_crew(62085, "frederick iannone", 0).
membro_crew(1234428, "patrick lynn", 0).
membro_crew(1474777, "don macbain", 0).
membro_crew(1154553, "jonathan schwartz", 0).
membro_crew(65839, "rebecca spikings", 1).
membro_crew(1458273, "william apperson", 0).
membro_crew(1619076, "anthony gaudio", 0).
membro_crew(1768099, "frank flick", 0).
membro_crew(1685460, "david paris", 2).
membro_crew(1777221, "karla stevens flanigan", 0).
membro_crew(1311616, "chad atkinson", 0).
membro_crew(1777227, "chris adams", 0).
membro_crew(1777235, "michael jay", 0).
membro_crew(1335048, "simon giles", 0).
membro_crew(1648065, "rick kelleher", 2).
membro_crew(1777237, "tom ajar", 0).
membro_crew(1777238, "sarah catizone", 0).
membro_crew(1777239, "jose jimenez", 0).
membro_crew(1760138, "sergio jara", 0).
membro_crew(1691207, "lesley aletter", 0).
membro_crew(1777240, "hugo chew", 0).
membro_crew(1777241, "jeff burrage", 0).
membro_crew(1741742, "r. gern trowbridge", 0).
membro_crew(1575753, "matt buchan", 0).
membro_crew(1778004, "mick morris", 0).
membro_crew(1778006, "bruce sharp", 0).
membro_crew(1547129, "ismael  izzy  gonzalez", 0).
membro_crew(1559580, "jonas juhanson", 2).
membro_crew(4772, "cassandra kulukundis", 1).
membro_crew(1564997, "mark scoon", 0).
membro_crew(1377241, "michael john meehan", 0).
membro_crew(1578189, "armando amador", 0).
membro_crew(1526455, "anthony franco", 0).
membro_crew(1767302, "francis meade warner", 0).
membro_crew(1778010, "john rauh", 0).
membro_crew(1724282, "jack geist", 0).
membro_crew(1778015, "larry cheng", 0).
membro_crew(1069830, "rafael cuervo", 0).
membro_crew(545844, "antonio soriano", 0).
membro_crew(1453498, "shane prigmore", 0).
membro_crew(7962, "lou romano", 2).
membro_crew(958493, "john rusk", 2).
membro_crew(92336, "clinton wayne", 2).
membro_crew(92356, "carmine goglia", 0).
membro_crew(494, "terri taylor", 1).
membro_crew(1412702, "thomas o neil younkman", 0).
membro_crew(1569847, "paula bonhomme", 0).
membro_crew(7469, "jim uhls", 2).
membro_crew(1408290, "patricia miller", 0).
membro_crew(1402111, "marshall garlington", 0).
membro_crew(1401305, "ashley revell", 0).
membro_crew(166543, "mario roberts", 0).
membro_crew(1417, "toshio suzuki", 2).
membro_crew(19596, "atsushi okui", 0).
membro_crew(19598, "youji takeshige", 0).
membro_crew(19601, "makiko futaki", 0).
membro_crew(19603, "takeshi imamura", 0).
membro_crew(40455, "noboru yoshida", 0).
membro_crew(40336, "masashi ando", 0).
membro_crew(78343, "seiji okuda", 2).
membro_crew(78345, "katsuya kondô", 2).
membro_crew(78360, "seiichiro ujiie", 0).
membro_crew(78378, "naoya tanaka", 0).
membro_crew(144663, "seiki tamura", 0).
membro_crew(547985, "kazuo oga", 0).
membro_crew(555254, "yoshifumi kondô", 0).
membro_crew(568034, "junichi taniguchi", 0).
membro_crew(937796, "sayaka hirahara", 0).
membro_crew(986214, "satoshi kuroda", 0).
membro_crew(1009730, "nizou yamamoto", 0).
membro_crew(1011633, "yoshinori kanada", 0).
membro_crew(1132621, "yutaka narita", 0).
membro_crew(1132637, "todd olsson", 0).
membro_crew(1172200, "ikuo kuwana", 0).
membro_crew(1399330, "masaru matsuse", 0).
membro_crew(1452508, "michihiro ito", 0).
membro_crew(1456606, "masaaki endo", 0).
membro_crew(1456614, "megumi kagawa", 0).
membro_crew(1456616, "kitarou kousaka", 0).
membro_crew(1456617, "hiroko minowa", 0).
membro_crew(1456620, "kazuyoshi onoda", 0).
membro_crew(1456623, "shinji otsuka", 0).
membro_crew(1456624, "sachiko sugino", 0).
membro_crew(1456626, "ken ichi yamada", 0).
membro_crew(1456629, "eiji yamamori", 0).
membro_crew(1456631, "hideaki yoshio", 0).
membro_crew(1456633, "atsuko tanaka", 0).
membro_crew(1456772, "sadayuki arai", 0).
membro_crew(1456773, "tsutomu awata", 0).
membro_crew(1456774, "ryôko ina", 0).
membro_crew(1456775, "naomi kasugai", 0).
membro_crew(1456776, "toshio kawaguchi", 0).
membro_crew(1456777, "ken ichi konishi", 0).
membro_crew(1456778, "mariko matsuo", 0).
membro_crew(1456779, "michio mihara", 0).
membro_crew(1456780, "noriko moritomo", 0).
membro_crew(1456781, "kyouko naganawa", 0).
membro_crew(1456782, "rie nakagome", 0).
membro_crew(1456783, "katsutoshi nakamura", 0).
membro_crew(1456784, "takehiro noda", 0).
membro_crew(1456785, "masako osada", 0).
membro_crew(1456786, "hisae saitô", 0).
membro_crew(1456787, "masaya saitô", 0).
membro_crew(1456788, "hiroaki sasaki", 0).
membro_crew(1456789, "shinsaku sasaki", 0).
membro_crew(1456790, "hiroshi shimizu", 0).
membro_crew(1456791, "masako shinohara", 0).
membro_crew(1456793, "hitomi tateno", 0).
membro_crew(1456794, "keiko tomizawa", 0).
membro_crew(1456795, "michiyo yasuda", 0).
membro_crew(1456796, "ken ichi yoshida", 0).
membro_crew(1456797, "kiyomi ôta", 0).
membro_crew(1456798, "atsuko ôtani", 0).
membro_crew(92234, "jean frenette", 2).
membro_crew(1405807, "c.j. goldman", 0).
membro_crew(1403432, "robert a. blackburn", 0).
membro_crew(90693, "lea carlson", 1).
membro_crew(936841, "greg berry", 0).
membro_crew(8020, "john kahrs", 0).
membro_crew(75477, "pravesh sahni", 0).
membro_crew(64151, "mike mitchell", 2).
membro_crew(1449183, "samantha armstrong", 1).
membro_crew(23545, "robin d. cook", 0).
membro_crew(1384367, "susan dawes", 0).
membro_crew(1027067, "janice d. brandow", 0).
membro_crew(938105, "ken blackwell", 2).
membro_crew(1745942, "richard oswald", 0).
membro_crew(1393390, "ray mcintyre jr.", 0).
membro_crew(3962, "wendy partridge", 1).
membro_crew(61624, "ann robinson", 1).
membro_crew(1409712, "john trapman", 0).
membro_crew(1319153, "anneke van oort", 0).
membro_crew(1401604, "stacey butterworth", 0).
membro_crew(4950, "shelly johnson", 2).
membro_crew(60891, "tomandandy", 2).
membro_crew(995462, "gregory plotkin", 0).
membro_crew(1449162, "michael shocrylas", 0).
membro_crew(1569566, "christopher woodworth", 0).
membro_crew(58421, "christopher jenkins", 2).
membro_crew(1403413, "joe chess", 0).
membro_crew(112609, "david e. fluhr", 0).
membro_crew(15330, "paul pattison", 2).
membro_crew(1229074, "arthur anderson", 0).
membro_crew(1552205, "anne couk", 0).
membro_crew(1602319, "vanessa baker", 0).
membro_crew(1320977, "jana macdonald", 0).
membro_crew(1412707, "mara hamilton", 0).
membro_crew(10850, "kevin feige", 2).
membro_crew(60934, "patrick esposito", 0).
membro_crew(1644480, "chris allen", 0).
membro_crew(61091, "jon jashni", 2).
membro_crew(321, "anthony bregman", 2).
membro_crew(1404841, "zack davis", 0).
membro_crew(8287, "donna o neal", 0).
membro_crew(76054, "luke freeborn", 0).
membro_crew(1400847, "candace neal", 0).
membro_crew(1397823, "alyson dee moore", 0).
membro_crew(47102, "brian pearson", 2).
membro_crew(1537179, "tracy bennett", 0).
membro_crew(14376, "greg hayden", 2).
membro_crew(465, "tessa ross", 1).
membro_crew(1403537, "cosmas paul bolger jr.", 0).
membro_crew(1416157, "mike hardison", 0).
membro_crew(66688, "william hawkins", 2).
membro_crew(60714, "peter lando", 0).
membro_crew(958488, "jacqueline west", 1).
membro_crew(24192, "dave jordan", 2).
membro_crew(1741180, "colin edwards", 0).
membro_crew(1401884, "yann denoual", 0).
membro_crew(113046, "david giammarco", 0).
membro_crew(2949, "alexandre desplat", 2).
membro_crew(1549025, "scott wilder", 0).
membro_crew(33684, "bono", 2).
membro_crew(17535, "françois emmanuelli", 0).
membro_crew(1542950, "patrick de ranter", 0).
membro_crew(1323076, "john e. jackson", 2).
membro_crew(1416432, "charles meere iii", 2).
membro_crew(1569843, "mark curry", 2).
membro_crew(1347722, "judy chin", 0).
membro_crew(15221, "tyler bates", 2).
membro_crew(1324461, "david crossman", 2).
membro_crew(527, "jonathan nolan", 2).
membro_crew(559, "wally pfister", 2).
membro_crew(1409877, "stephanie lowry", 0).
membro_crew(1417400, "deena adair", 0).
membro_crew(23485, "marc platt", 2).
membro_crew(958383, "bruce weintraub", 2).
membro_crew(13347, "armitage trail", 0).
membro_crew(43010, "thomas rosales jr.", 0).
membro_crew(1195390, "bill hansard", 0).
membro_crew(1081358, "randi mavestrand", 0).
membro_crew(1424000, "nick navarro", 0).
membro_crew(1609399, "edward beyer", 2).
membro_crew(1415617, "adam kopald", 0).
membro_crew(1428202, "gregg smrz", 2).
membro_crew(1569836, "timothy mccrary", 0).
membro_crew(1823801, "bryan fletchall", 0).
membro_crew(1043374, "george doering", 0).
membro_crew(1551797, "joss skottowe", 0).
membro_crew(57769, "peter s. elliot", 2).
membro_crew(1416167, "john kilkenny", 0).
membro_crew(149960, "bruce dickson", 0).
membro_crew(1377294, "michelle eisenreich", 0).
membro_crew(1367676, "nick south", 0).
membro_crew(1309, "mark ordesky", 2).
membro_crew(32099, "jean-max guérin", 0).
membro_crew(16830, "boaz davidson", 2).
membro_crew(17209, "avi lerner", 2).
membro_crew(13245, "joel negron", 2).
membro_crew(1441271, "susan boyd", 0).
membro_crew(59055, "caitlin mckenna-wilkinson", 1).
membro_crew(1416439, "france myung fagin", 0).
membro_crew(45117, "john carney", 2).
membro_crew(43147, "ed guiney", 2).
membro_crew(1461, "george clooney", 2).
membro_crew(91161, "joe hartwick jr.", 0).
membro_crew(54164, "barry peterson", 2).
membro_crew(1553269, "raymond consing", 0).
membro_crew(113048, "tim gomillion", 0).
membro_crew(1387212, "richard bloom", 0).
membro_crew(1319467, "marie nardella", 0).
membro_crew(105690, "alan j. lam", 2).
membro_crew(1311175, "andrew li", 0).
membro_crew(1394760, "kimi webber", 0).
membro_crew(1401126, "alex rouse", 0).
membro_crew(1411118, "mira husseini", 0).
membro_crew(86591, "craig jackson", 0).
membro_crew(47817, "jean goudier", 0).
membro_crew(960832, "nenad peur", 2).
membro_crew(1555488, "paul ledford", 0).
membro_crew(1399914, "laurent kossayan", 0).
membro_crew(1551972, "michel sabourdy", 0).
membro_crew(1311, "michael lynne", 2).
membro_crew(128, "philippa boyens", 1).
membro_crew(1315, "john gilbert", 2).
membro_crew(1316, "joe bleakley", 0).
membro_crew(1318, "rob outterside", 0).
membro_crew(1319, "mark robins", 0).
membro_crew(1320, "alan lee", 2).
membro_crew(1321, "john howe", 2).
membro_crew(1322, "ngila dickson", 1).
membro_crew(1323, "richard taylor", 2).
membro_crew(1016176, "amy hubbard", 0).
membro_crew(11271, "sammy sheldon", 1).
membro_crew(1404232, "ali lammari", 0).
membro_crew(1412704, "sarah payan", 0).
membro_crew(1427495, "fran needham", 0).
membro_crew(1471199, "bruce devan", 0).
membro_crew(1355525, "matthew schmidt", 0).
membro_crew(1391694, "emily wallin", 0).
membro_crew(1744856, "m.b. gordy", 0).
membro_crew(68172, "frank zito", 0).
membro_crew(1569556, "michael spitaletto", 0).
membro_crew(1415634, "don mccuaig", 0).
membro_crew(1416092, "kerry mendenhall", 0).
membro_crew(17677, "naaman marshall", 0).
membro_crew(1566280, "nilo otero", 0).
membro_crew(23401, "alex rodríguez", 2).
membro_crew(1404541, "craig fikse", 0).
membro_crew(937895, "david wingo", 0).
membro_crew(1411271, "michael j. walker", 2).
membro_crew(1384393, "amanda goodpaster", 0).
membro_crew(1416095, "norma lee", 0).
membro_crew(23454, "phil harvey", 2).
membro_crew(11818, "michael diner", 2).
membro_crew(37270, "emile sherman", 0).
membro_crew(1428911, "ailbhe lemass", 0).
membro_crew(1740487, "garson yu", 0).
membro_crew(1558697, "rick thomas", 2).
membro_crew(548429, "brian basham", 0).
membro_crew(64830, "andrew gunn", 2).
membro_crew(1128126, "jose l. rodriguez", 2).
membro_crew(1340318, "paul berolzheimer", 0).
membro_crew(1377222, "michael w. mitchell", 0).
membro_crew(50517, "mathieu vadepied", 2).
membro_crew(1397725, "lisa k. sessions", 1).
membro_crew(21650, "swan pham", 0).
membro_crew(44006, "paul jennings", 0).
membro_crew(3498, "bill johnson", 2).
membro_crew(1018071, "robert malina", 0).
membro_crew(11167, "mark bartholomew", 0).
membro_crew(40823, "peter burgis", 0).
membro_crew(1414088, "matthew o toole", 0).
membro_crew(113097, "derek vanderhorst", 0).
membro_crew(1078710, "berj bannayan", 0).
membro_crew(1374, "elizabeth fraser", 0).
membro_crew(1377, "jabez olssen", 0).
membro_crew(1447518, "sean button", 0).
membro_crew(6635, "wladyslaw szpilman", 0).
membro_crew(3561, "pawel edelman", 2).
membro_crew(3559, "robert benmussa", 2).
membro_crew(19919, "heta mantscheff", 0).
membro_crew(41114, "wieslawa chojkowska", 0).
membro_crew(23584, "gabriele wolff", 0).
membro_crew(1435272, "weronika migon", 1).
membro_crew(1610205, "zbigniew gruz", 0).
membro_crew(1380004, "caroline veyssière", 0).
membro_crew(68584, "oliver lüer", 0).
membro_crew(1580668, "sonja sommer", 0).
membro_crew(936916, "micha szczerbic", 0).
membro_crew(10903, "henning molfenter", 0).
membro_crew(1041802, "janusz chlebowski", 0).
membro_crew(1638144, "didier duverger", 0).
membro_crew(1632390, "lionel cassan", 0).
membro_crew(41853, "grazyna kozlowska", 0).
membro_crew(1358022, "thomas tannenberger", 0).
membro_crew(16716, "alister mazzotti", 0).
membro_crew(40861, "inga meissner", 0).
membro_crew(1335888, "nils konrad", 0).
membro_crew(44645, "brendan donnison", 0).
membro_crew(1653201, "fabien pascal", 0).
membro_crew(1337468, "nancy allen", 1).
membro_crew(64335, "timothy alverson", 2).
membro_crew(23812, "james steuart", 2).
membro_crew(1441272, "monica huppert", 0).
membro_crew(1652234, "rob mccallum", 0).
membro_crew(1394565, "michael reitz", 0).
membro_crew(1416098, "jamie kelman", 0).
membro_crew(23785, "tegan taylor", 0).
membro_crew(112877, "tom devlin", 0).
membro_crew(1406299, "kris kobzina", 0).
membro_crew(1416102, "charles o brien", 0).
membro_crew(1416103, "eddie vargas", 0).
membro_crew(1083214, "jamie neese", 0).
membro_crew(62560, "gerald sullivan", 0).
membro_crew(1416150, "joseph gray", 0).
membro_crew(1415612, "richard brunton", 0).
membro_crew(1416151, "david m. milstien", 0).
membro_crew(1339435, "lorrie campbell", 0).
membro_crew(1378695, "erik aadahl", 0).
membro_crew(1416158, "lee berger", 0).
membro_crew(1416166, "rachel fondiller", 0).
membro_crew(1416168, "shannon leigh olds", 0).
membro_crew(126824, "kevin vanhook", 2).
membro_crew(1416170, "derek spears", 0).
membro_crew(1416171, "erik de boer", 0).
membro_crew(1416172, "steve ziolkowski", 0).
membro_crew(1205993, "ken fisher", 0).
membro_crew(1408393, "hopper stone", 0).
membro_crew(1416433, "samuel r. harrison iii", 0).
membro_crew(1416436, "brenda donoho", 0).
membro_crew(1407823, "terra bliss-alvarez", 0).
membro_crew(1407824, "amy tompkins", 0).
membro_crew(1416437, "rose viggiano", 0).
membro_crew(1119475, "samantha c. kirkeby", 0).
membro_crew(1416441, "christopher aubin", 0).
membro_crew(50459, "becki cross trujillo", 0).
membro_crew(1569555, "marny nahrwold", 0).
membro_crew(1400510, "damon michael gordon", 2).
membro_crew(1081075, "tim flattery", 0).
membro_crew(1508743, "rick pratt", 0).
membro_crew(1565672, "paul santoni", 0).
membro_crew(1569559, "tyler foell", 0).
membro_crew(1569560, "marcelle  kitty  dutton", 0).
membro_crew(1569561, "melanie banders", 0).
membro_crew(1569562, "michael ralph price", 0).
membro_crew(1569563, "lonnie a. mathes", 0).
membro_crew(1569564, "dennis nelson", 0).
membro_crew(1553642, "timothy michael cairns", 0).
membro_crew(1569824, "ericka bryce", 0).
membro_crew(1569825, "stephen dudycha", 0).
membro_crew(1569826, "eugene vendrovsky", 0).
membro_crew(1496388, "bill mcadams jr.", 0).
membro_crew(1368878, "damon caro", 0).
membro_crew(1569827, "samson bamimore", 0).
membro_crew(1569828, "eric putz", 0).
membro_crew(1569829, "jay krueger", 0).
membro_crew(1569830, "john glasser", 0).
membro_crew(1569833, "chris mcclintock", 0).
membro_crew(1535781, "tom percarpio", 0).
membro_crew(109273, "tom anderson", 0).
membro_crew(1569835, "arthur jeppe", 0).
membro_crew(1544736, "dave mcallister", 0).
membro_crew(1569837, "nicole kwak", 0).
membro_crew(1569838, "brian cooper", 2).
membro_crew(1085294, "sara e. white", 0).
membro_crew(1562008, "kevin cerchiai", 0).
membro_crew(1445874, "skip longfellow", 0).
membro_crew(1569842, "glenn e. berkovitz", 0).
membro_crew(1432596, "derek casari", 0).
membro_crew(1569845, "tony barraza", 0).
membro_crew(1559783, "mike edmonson", 0).
membro_crew(1569846, "l. patrick mccormack", 0).
membro_crew(1569848, "moriba duncan", 0).
membro_crew(1745939, "catherine pittman", 0).
membro_crew(1745933, "charles khoury", 0).
membro_crew(1745934, "steve briante", 0).
membro_crew(1745935, "richard l. carden", 0).
membro_crew(483932, "mark vollmers", 0).
membro_crew(1745945, "joe mancewicz", 0).
membro_crew(1400007, "michelle brattson", 0).
membro_crew(1378249, "maguy r. cohen", 0).
membro_crew(1551523, "robert ulrich", 2).
membro_crew(1399633, "greg baxter", 0).
membro_crew(1426762, "nancy hancock", 1).
membro_crew(1401595, "david tickell", 0).
membro_crew(1391642, "matthew baer", 0).
membro_crew(67759, "basil iwanyk", 2).
membro_crew(1412699, "david esparza", 0).
membro_crew(1410353, "dave emmonds", 0).
membro_crew(1378677, "nancy anna brown", 0).
membro_crew(1410573, "denise davis", 0).
membro_crew(1413462, "rusty ippolito", 0).
membro_crew(1271607, "tony rush", 0).
membro_crew(1559180, "shawn wallbridge", 0).
membro_crew(1580636, "maryjane layani", 0).
membro_crew(1346314, "jason booth", 0).
membro_crew(11295, "fiona weir", 1).
membro_crew(34527, "kiki morris", 0).
membro_crew(1580621, "t.j. lindgren", 0).
membro_crew(1644469, "john dietrick", 0).
membro_crew(1408667, "patrick baxter", 0).
membro_crew(1378722, "joseph bonn", 0).
membro_crew(1532250, "susan carol schwary", 0).
membro_crew(1412721, "elizabeth hitt", 0).
membro_crew(20516, "dean georgaris", 2).
membro_crew(1387246, "willard overstreet", 0).
membro_crew(1300755, "scott a. jennings", 2).
membro_crew(1551698, "lisa brown", 0).
membro_crew(23414, "ross dempster", 2).
membro_crew(1448423, "slava shmakin", 0).
membro_crew(1378719, "carolyn bentley", 0).
membro_crew(1549445, "john bires", 0).
membro_crew(21390, "david glasser", 2).
membro_crew(1396827, "shannon erbe", 0).
membro_crew(1410551, "robert mackenzie", 0).
membro_crew(1265230, "elvis jones", 0).
membro_crew(3956, "henry winterstern", 2).
membro_crew(1402934, "stuart howell", 0).
membro_crew(1593506, "jesse deacon", 0).
membro_crew(31511, "grant heslov", 2).
membro_crew(29922, "marcus nispel", 2).
membro_crew(18264, "steve jablonsky", 2).
membro_crew(54843, "andrew form", 2).
membro_crew(54844, "bradley fuller", 2).
membro_crew(17863, "linda cohen", 1).
membro_crew(61630, "alexandre de franceschi", 2).
membro_crew(61958, "tim mertens", 2).
membro_crew(1464355, "bérénice robinson", 0).
membro_crew(1399505, "perry hoffman", 0).
membro_crew(56737, "don granger", 2).
membro_crew(62983, "guy collins", 2).
membro_crew(1437160, "lucy ainsworth-taylor", 0).
membro_crew(23770, "dimitri capuani", 0).
membro_crew(27220, "luca tranchino", 0).
membro_crew(1390382, "kirsty whalley", 0).
membro_crew(83069, "jamie marshall", 0).
membro_crew(946092, "michael hackett", 2).
membro_crew(1222761, "david solomon", 0).
membro_crew(1366708, "claire smithies", 1).
membro_crew(1382059, "jeff harvey", 0).
membro_crew(1404752, "mike sassen", 0).
membro_crew(1415631, "conrad dueck", 0).
membro_crew(1438621, "junichi hosoi", 0).
membro_crew(1441349, "brian epp", 0).
membro_crew(1441364, "bruce borland", 0).
membro_crew(1447636, "bruce l. brownstein", 0).
membro_crew(1472640, "caroline macaulay", 0).
membro_crew(1484198, "ian cope", 0).
membro_crew(1559140, "carolle alain", 0).
membro_crew(1577050, "michael mclellan", 0).
membro_crew(1644457, "natasha rand", 0).
membro_crew(1644460, "pat waller", 0).
membro_crew(1644461, "bob findlay", 0).
membro_crew(1644463, "emanuela daus", 0).
membro_crew(1644464, "marco pimenta", 0).
membro_crew(1644465, "dennis simard", 0).
membro_crew(1644466, "janice lynn coats", 0).
membro_crew(1644467, "jason ybarra", 0).
membro_crew(1644468, "patrick kavanaugh", 0).
membro_crew(1644470, "phil gough", 0).
membro_crew(1644471, "corinna gagnon", 0).
membro_crew(1644472, "mark aisbett", 0).
membro_crew(1644473, "ryan moroz", 0).
membro_crew(1644474, "paul m. lane", 0).
membro_crew(1644476, "alex murtaza", 0).
membro_crew(1644477, "dave roughley", 0).
membro_crew(1644478, "cliff cenerini", 0).
membro_crew(1644479, "jasmine barry", 0).
membro_crew(1644481, "kristian bailey", 0).
membro_crew(1644531, "pam hammond", 0).
membro_crew(1644532, "chris bond", 0).
membro_crew(1644533, "raymond dumas", 0).
membro_crew(1679120, "daniel mansfield", 0).
membro_crew(1713977, "adrien van viersen", 0).
membro_crew(1715192, "ronnie morgan", 0).
membro_crew(1778306, "marc marcum", 0).
membro_crew(1903003, "karl harrison", 0).
membro_crew(1903020, "rhiannon a. charles", 0).
membro_crew(1903021, "james mckenzie moore", 0).
membro_crew(10571, "john bernard", 0).
membro_crew(328645, "martin cohen", 2).
membro_crew(1545541, "brent poe", 0).
membro_crew(1654585, "chris brown", 0).
membro_crew(1548529, "john j. thomson", 0).
membro_crew(1548533, "rob ballantyne", 0).
membro_crew(1423203, "karola dirnberger", 0).
membro_crew(1400088, "daniel pinder", 0).
membro_crew(82132, "jim powers", 0).
membro_crew(1428906, "christopher learmonth", 0).
membro_crew(1547188, "linda huse", 0).
membro_crew(20031, "samuel bayer", 2).
membro_crew(1380003, "julie brown", 0).
membro_crew(20643, "lorne orleans", 0).
membro_crew(999561, "andy kennedy", 0).
membro_crew(32806, "paul carlin", 2).
membro_crew(1532224, "jim boulden", 0).
membro_crew(1437161, "eran barnea", 0).
membro_crew(16734, "olivia bloch-lainé", 0).
membro_crew(1336716, "dottie starling", 0).
membro_crew(1583795, "barny crocker", 0).
membro_crew(12383, "chris august", 0).
membro_crew(1017377, "stephanie holbrook", 1).
membro_crew(5392, "michael wilkinson", 2).
membro_crew(56632, "james seymour brett", 0).
membro_crew(1191326, "nicki gardiner", 1).
membro_crew(1651081, "martin l. mercer", 0).
membro_crew(1430497, "steven hall", 0).
membro_crew(1405389, "ronald hersey", 0).
membro_crew(1055498, "jane rizzo", 0).
membro_crew(1463809, "thomas kuo", 0).
membro_crew(15347, "michael giacchino", 2).
membro_crew(15354, "stephen m. davis", 2).
membro_crew(1428912, "zoe clare brown", 0).
membro_crew(1525898, "richard hooper", 0).
membro_crew(198641, "ethan tobman", 0).
membro_crew(1532248, "june brickman", 0).
membro_crew(71952, "simon lewis", 0).
membro_crew(75151, "glenn newnham", 0).
membro_crew(58283, "albert carreras", 0).
membro_crew(51898, "óscar faura", 0).
membro_crew(119177, "marco valerio pugini", 0).
membro_crew(5935, "sean hood", 2).
membro_crew(1413908, "michel monier", 0).
membro_crew(53297, "thomas dean donnelly", 2).
membro_crew(1582866, "joshua oppenheimer", 0).
membro_crew(17208, "danny lerner", 2).
membro_crew(138657, "scott coulter", 2).
membro_crew(1318091, "valentina mladenova", 0).
membro_crew(1368862, "dirk buchmann", 0).
membro_crew(1396811, "simeon asenov", 0).
membro_crew(1398190, "veselin karadjov", 0).
membro_crew(68691, "ori marmur", 0).
membro_crew(77965, "morten tyldum", 2).
membro_crew(1399909, "william cheng", 0).
membro_crew(1701153, "jamie rama", 0).
membro_crew(113054, "warren hendriks", 2).
membro_crew(1701154, "jeremy simser", 0).
membro_crew(69506, "jeff cutter", 2).
membro_crew(23430, "timur bekmambetov", 2).
membro_crew(1545988, "dominic tuohy", 0).
membro_crew(11092, "simon kinberg", 2).
membro_crew(1339439, "lindsay good", 0).
membro_crew(40773, "gary dodkin", 0).
membro_crew(1561989, "mark coffey", 0).
membro_crew(1411061, "mark mottram", 0).
membro_crew(1423409, "joe perez", 0).
membro_crew(69509, "paul hernandez", 2).
membro_crew(69510, "ann marie sanderlin", 0).
membro_crew(1244450, "jane english", 0).
membro_crew(1428230, "tom rebber", 0).
membro_crew(17207, "les weldon", 2).
membro_crew(1196121, "cappi ireland", 0).
membro_crew(1338277, "nick thomas", 2).
membro_crew(50954, "alexandre azaria", 0).
membro_crew(1865862, "tony blondal", 0).
membro_crew(1378716, "kimberly french", 0).
membro_crew(80680, "chris kennedy", 2).
membro_crew(56021, "danny cohen", 2).
membro_crew(62238, "jim seibel", 2).
membro_crew(1340116, "martin jensen", 0).
membro_crew(1415042, "roger tooley", 0).
membro_crew(1373433, "paul graff", 0).
membro_crew(68016, "kevin kaska", 0).
membro_crew(18186, "pierre-ange le pogam", 2).
membro_crew(52934, "nicholas stoller", 2).
membro_crew(1416448, "sue ignatius", 0).
membro_crew(1416452, "dan green", 0).
membro_crew(1412703, "mandell winter", 0).
membro_crew(80826, "stuart provine", 0).
membro_crew(40684, "david leitch", 2).
membro_crew(37268, "luke davies", 0).
membro_crew(37276, "iain canning", 0).
membro_crew(37277, "libby sharpe", 0).
membro_crew(233130, "dustin o halloran", 2).
membro_crew(1338480, "vicki vandegrift", 0).
membro_crew(54211, "thomas tull", 0).
membro_crew(17831, "grant van der slagt", 0).
membro_crew(19689, "paul schnee", 0).
membro_crew(1532610, "bob hall", 0).
membro_crew(1551776, "tom mccomas", 0).
membro_crew(85513, "gabriel georgiev", 2).
membro_crew(1069627, "ross w. clarkson", 0).
membro_crew(1350233, "anna hadzhieva", 0).
membro_crew(1412601, "dimitrina stoyanova", 0).
membro_crew(1412604, "ivon ivanova", 1).
membro_crew(55079, "lukas ettlin", 2).
membro_crew(1547186, "thomas mertz", 0).
membro_crew(113913, "jordan goldberg", 0).
membro_crew(1443032, "kimberley spiteri", 0).
membro_crew(1334496, "ty teiger", 0).
membro_crew(1376803, "angela barson", 0).
membro_crew(1408834, "ronnie phillips", 0).
membro_crew(1689963, "tim ryan", 0).
membro_crew(1437305, "michael applebaum", 0).
membro_crew(1196351, "jeremy rich", 0).
membro_crew(1346142, "andy mayson", 0).
membro_crew(1327909, "scott wheeler", 2).
membro_crew(1394750, "thomas nittmann", 0).
membro_crew(53677, "ronnie screwvala", 2).
membro_crew(964318, "zarina screwvala", 0).
membro_crew(43142, "mary callery", 0).
membro_crew(43144, "andrew lowe", 2).
membro_crew(84348, "jason blum", 2).
membro_crew(83281, "lenny abrahamson", 2).
membro_crew(551482, "stephen rennicks", 2).
membro_crew(1378697, "tim leblanc", 0).
membro_crew(70522, "will clarke", 2).
membro_crew(70526, "ludovico einaudi", 0).
membro_crew(1460672, "jake rice", 0).
membro_crew(45118, "martina niland", 1).
membro_crew(45121, "tamara conboy", 1).
membro_crew(45123, "tiziana corvisieri", 0).
membro_crew(1015894, "gigi akoka", 0).
membro_crew(169941, "christian darren", 2).
membro_crew(957354, "paul lasaine", 2).
membro_crew(1081906, "lisa addario", 1).
membro_crew(1081907, "joe syracuse", 2).
membro_crew(1127674, "andrea miloro", 0).
membro_crew(1401720, "erik liles", 0).
membro_crew(1391531, "vladimir leschinski", 0).
membro_crew(1407033, "diane slattery", 0).
membro_crew(1406805, "martial corneville", 0).
membro_crew(1373432, "christina graff", 0).
membro_crew(38657, "jay sanders", 0).
membro_crew(60335, "nick dent", 0).
membro_crew(45845, "carlo rizzo", 0).
membro_crew(15009, "justin theroux", 2).
membro_crew(550113, "joe gatta", 2).
membro_crew(54163, "stacy maes", 1).
membro_crew(54268, "vince gerardis", 2).
membro_crew(54269, "ralph vicinanza", 2).
membro_crew(54271, "dean zimmerman", 2).
membro_crew(190936, "jason knight", 0).
membro_crew(954164, "georgina pope", 0).
membro_crew(989750, "deanna brigidi", 1).
membro_crew(1123819, "steven gould", 0).
membro_crew(1364406, "gary tuers", 0).
membro_crew(1408670, "itsuko kurono", 0).
membro_crew(1465860, "ellen somers", 0).
membro_crew(1526834, "pauline chung", 0).
membro_crew(1530756, "marcia scott", 0).
membro_crew(1552360, "rob sanderson", 0).
membro_crew(1556313, "wade eastwood", 0).
membro_crew(1581500, "lisa martin", 0).
membro_crew(1701149, "eric deros", 0).
membro_crew(1701150, "robbie consing", 0).
membro_crew(1701151, "darren denlinger", 0).
membro_crew(1701152, "james goodman", 0).
membro_crew(1701155, "tory bellingham", 0).
membro_crew(1701156, "sheila pruden", 0).
membro_crew(1701157, "sean sansom", 0).
membro_crew(1701160, "keith large", 0).
membro_crew(1701161, "elspeth cassar", 0).
membro_crew(67113, "greig fraser", 0).
membro_crew(1395454, "ineke majoor", 0).
membro_crew(1338231, "georgina gunner", 0).
membro_crew(198034, "bill finger", 0).
membro_crew(996220, "jessie graff", 1).
membro_crew(1025090, "jim wilkey", 2).
membro_crew(1233538, "richard m. daley", 0).
membro_crew(1356195, "jerry robinson", 0).
membro_crew(1395430, "jenne lee", 0).
membro_crew(1486214, "sue robb-king", 1).
membro_crew(1486217, "nicholas gall", 0).
membro_crew(1550851, "tom struthers", 0).
membro_crew(1571601, "david e. hall", 0).
membro_crew(132209, "ed cathell iii", 0).
membro_crew(94909, "nicolas duval-adassovsky", 0).
membro_crew(1412185, "jay wejebe", 0).
membro_crew(1408391, "mark silk", 0).
membro_crew(966473, "deven khote", 0).
membro_crew(73453, "adam siegel", 2).
membro_crew(1456041, "oleg kulchytskyi", 0).
membro_crew(1355894, "anthony di ninno", 0).
membro_crew(226464, "anton bakarski", 0).
membro_crew(1015623, "ivan ranghelov", 2).
membro_crew(1400317, "simon varsano", 0).
membro_crew(1412602, "daniela avramova", 0).
membro_crew(1402244, "pascal armant", 0).
membro_crew(1551943, "deborah andrews", 0).
membro_crew(64814, "peter straughan", 2).
membro_crew(1427496, "corinne bossu", 0).
membro_crew(77513, "alessandro santucci", 0).
membro_crew(1555186, "riyaz ali merchant", 0).
membro_crew(1555211, "kamlesh u. shinde", 0).
membro_crew(169743, "jennifer spence", 1).
membro_crew(928608, "brent w. hall", 0).
membro_crew(75035, "olivier megaton", 2).
membro_crew(1428913, "jacqueline bhavnani", 0).
membro_crew(1141899, "coraly santaliz", 0).
membro_crew(1403569, "laura magruder", 0).
membro_crew(1176753, "simon beaufils", 0).
membro_crew(1481011, "renee j. vaca", 0).
membro_crew(1322011, "jennifer kamrath", 0).
membro_crew(1415330, "donita miller", 0).
membro_crew(47818, "jean-paul hurier", 2).
membro_crew(75828, "hartley gorenstein", 0).
membro_crew(1327184, "yana stoyanova", 1).
membro_crew(1350235, "alessandro troso", 0).
membro_crew(1345267, "georgi petrov yakimov", 0).
membro_crew(1412603, "sofi hvarleva", 0).
membro_crew(67242, "sonya savova", 0).
membro_crew(1116964, "georgi raykov", 0).
membro_crew(1350248, "nikolay gachev", 0).
membro_crew(1350257, "asen karanikolov", 0).
membro_crew(1368880, "yavor zahariev", 2).
membro_crew(227440, "henry jackman", 2).
membro_crew(959506, "antonello rubino", 2).
membro_crew(1121974, "charles v. bender", 0).
membro_crew(1350261, "shelly stoyanova", 1).
membro_crew(1460603, "dhumal sagar", 0).
membro_crew(142982, "laurent zeitoun", 0).
membro_crew(1425341, "ferdinand duplantier jr.", 0).
membro_crew(1412719, "george mihailov", 0).
membro_crew(1412448, "brian blair", 0).
membro_crew(1424606, "chris ward", 0).
membro_crew(1333932, "elizabeth coulon", 0).
membro_crew(1393375, "pat a. o connor", 0).
membro_crew(1017017, "claire breaux", 1).
membro_crew(935493, "john mcalary	", 0).
membro_crew(64813, "jon ronson", 0).
membro_crew(111050, "paul lister", 0).
membro_crew(1280234, "jeffrey lee gibson", 0).
membro_crew(123449, "mathieu burri", 0).
membro_crew(578730, "amy wood", 0).
membro_crew(90591, "oren peli", 2).
membro_crew(995456, "steven schneider", 0).
membro_crew(1030966, "jeanette brill", 1).
membro_crew(1125683, "amir zbeda", 0).
membro_crew(1125685, "rick osako", 2).
membro_crew(90281, "alex garcia", 2).
membro_crew(1122012, "jo homewood", 0).
membro_crew(1394949, "aaron jordan", 0).
membro_crew(1368850, "alexei karagyaur", 0).
membro_crew(1412693, "axel nicolet", 0).
membro_crew(117052, "jorge blanco", 2).
membro_crew(117056, "fernando juárez", 0).
membro_crew(117057, "ignacio pérez dolset", 0).
membro_crew(968303, "javier abad", 2).
membro_crew(1158156, "marcos martínez", 0).
membro_crew(1447378, "yannick honore", 0).
membro_crew(94456, "kevin scott frakes", 0).
membro_crew(1176140, "ryan glorioso", 0).
membro_crew(1323082, "djanina baykoucheva", 0).
membro_crew(1708703, "luize joyce margaret", 0).
membro_crew(90542, "mark cullen", 2).
membro_crew(90543, "robb cullen", 0).
membro_crew(113987, "polly johnsen", 0).
membro_crew(1415009, "joel dougherty", 0).
membro_crew(1118382, "donal o farrell", 0).
membro_crew(1407700, "paula jane hamilton", 0).
membro_crew(1368886, "kalin nikolov", 0).
membro_crew(1337410, "lee walpole", 0).
membro_crew(1437159, "stuart hilliker", 0).
membro_crew(1548134, "daniel smith", 0).
membro_crew(115033, "eric heisserer", 2).
membro_crew(1388878, "rowley irlam", 2).
membro_crew(582919, "darren lemke ", 0).
membro_crew(967559, "michelle lannon", 1).
membro_crew(1271645, "jerry kurland", 0).
membro_crew(1533054, "kris peck", 0).
membro_crew(1396793, "lara dale", 0).
membro_crew(1396796, "tim limer", 0).
membro_crew(1396805, "eric a. tuxen", 0).
membro_crew(1414151, "robert foster", 2).
membro_crew(1384375, "max leonard", 0).
membro_crew(136068, "magdalena górka", 1).
membro_crew(968182, "fredrik malmberg", 2).
membro_crew(142272, "henry joost", 2).
membro_crew(142276, "ariel schulman", 2).
membro_crew(1406253, "christian prejza", 0).
membro_crew(148697, "kelly berry", 1).
membro_crew(937260, "yann zenou", 0).
membro_crew(1031921, "dorian rigal-ansous", 0).
membro_crew(1190783, "diane weiss", 1).
membro_crew(1116093, "rose garnett", 0).
membro_crew(1384725, "peter heslop", 0).
membro_crew(1412708, "thomas m. horton", 0).
membro_crew(1539990, "ric schnupp", 0).
membro_crew(1412723, "michael landon", 0).
membro_crew(1373434, "magdalena wolf", 0).
membro_crew(1350236, "angela hemingway", 0).
membro_crew(1350237, "steven iba", 0).
membro_crew(1412711, "nikolay pachov", 0).
membro_crew(1412716, "adam klein", 0).
membro_crew(1116283, "john rickard", 0).
membro_crew(1198829, "kirsty mcgregor", 0).
membro_crew(1516456, "maribeth fox", 0).
membro_crew(1253678, "ryan martin dwyer", 0).
membro_crew(783230, "yaron orbach", 0).
membro_crew(1304298, "melanie deforrest", 0).
membro_crew(1033102, "anthony g. nakonechnyj", 0).
membro_crew(525908, "clio chiang", 0).
membro_crew(969945, "lisa linder", 1).
membro_crew(971858, "kendelle hoyer", 0).
membro_crew(1461370, "kaspar hugentobler", 0).
membro_crew(1402740, "adam connelly", 0).
membro_crew(102744, "monique ganderton", 1).
membro_crew(934204, "shaun smith", 0).
membro_crew(1355974, "stefania velichkova", 1).
membro_crew(1399302, "kevin crandell", 0).
membro_crew(1411876, "christopher tj mcguire", 0).
membro_crew(1412686, "marco perna", 0).
membro_crew(1412687, "dave snyder", 0).
membro_crew(1412692, "billie-jo thomson", 0).
membro_crew(1412694, "vasko bardarov", 0).
membro_crew(1412695, "svetozar doichev", 0).
membro_crew(1412697, "ivailo nikolov", 0).
membro_crew(1412706, "tom driscoll", 0).
membro_crew(1412709, "amit jhamb", 0).
membro_crew(1412710, "dhas karthick", 0).
membro_crew(1412712, "luis f. pazos", 0).
membro_crew(1412714, "adrian scherger", 0).
membro_crew(1412715, "abhinav sah", 0).
membro_crew(1412717, "mihail yanakiev", 0).
membro_crew(1412718, "hristo genkov", 0).
membro_crew(1412720, "aneta velizar kounova", 0).
membro_crew(1412722, "joe ken", 0).
membro_crew(1412724, "delyan borisov", 0).
membro_crew(1393860, "allen parks", 0).
membro_crew(1314152, "leah butler", 1).
membro_crew(1470524, "kymber blake", 0).
membro_crew(1547185, "zachery alexander", 0).
membro_crew(1069869, "kimberly amacker", 0).
membro_crew(1401757, "margeaux fox", 0).
membro_crew(1539763, "patrick murphy", 2).
membro_crew(1419234, "james ashton", 0).
membro_crew(84425, "eric toledano", 0).
membro_crew(84426, "olivier nakache", 0).
membro_crew(1031922, "isabelle pannetier", 0).
membro_crew(1031923, "philippe pozzo di borgo", 0).
membro_crew(1621911, "thi thanh tu nguyen", 0).
membro_crew(1724196, "gabriel botcherby", 0).
membro_crew(1724197, "maëlys deschard", 0).
membro_crew(1724198, "charles rempenault", 0).
membro_crew(1724199, "christine teulier", 0).
membro_crew(1724200, "nathalie vierny", 0).
membro_crew(1724201, "liv charpentier", 0).
membro_crew(1724202, "océane lavergne", 0).
membro_crew(1724203, "catherine duplan", 0).
membro_crew(1724204, "barbara albucher", 0).
membro_crew(86688, "levan gabriadze", 0).
membro_crew(1002564, "paul lavoie", 0).
membro_crew(1423004, "david metzner", 0).
membro_crew(238120, "colin jones", 2).
membro_crew(1375896, "david gross", 0).
membro_crew(1375897, "jesse shapira", 0).
membro_crew(583464, "joe wicker", 2).
membro_crew(1024836, "claudia bluemhuber", 1).
membro_crew(1340090, "amy c. weinberg", 1).
membro_crew(1335147, "trevor gates", 0).
membro_crew(1458148, "joseph kirkland", 0).
membro_crew(1448306, "jeanette redmond", 0).
membro_crew(1319157, "hannah gates", 0).
membro_crew(1466663, "heather leat", 0).
membro_crew(239663, "james harris", 0).
membro_crew(1575766, "mark lane", 0).
membro_crew(1499159, "forest sala", 0).
membro_crew(100734, "johannes roberts", 2).
membro_crew(1194884, "brett pawlak", 0).
membro_crew(1112515, "jeff turley", 0).
membro_crew(1112517, "kristina reed", 0).
membro_crew(1460479, "rachel r. bibb", 0).
membro_crew(1464408, "lorry ann shea", 0).
membro_crew(65814, "barry brooker", 0).
membro_crew(1404190, "karri farris", 0).
membro_crew(1407738, "michael stumpf", 0).
membro_crew(1056052, "lee child", 0).
membro_crew(1417913, "maría fernanda sabogal", 0).
membro_crew(1080589, "teddy schwarzman", 0).
membro_crew(1203712, "michael nouryeh", 0).
membro_crew(188869, "dan studney", 0).
membro_crew(1905809, "peter casey", 0).
membro_crew(1545925, "camilla kirk-reynolds", 0).
membro_crew(1574044, "nicola mount", 0).
membro_crew(1905704, "lisa pickering", 0).
membro_crew(1551770, "paul duff", 0).
membro_crew(1905733, "scott elms", 0).
membro_crew(1905734, "stefano ferrara", 0).
membro_crew(1905735, "toby hawkes", 0).
membro_crew(1905736, "debbie morgan", 0).
membro_crew(1458104, "steven messing", 0).
membro_crew(1905758, "jennifer-jo barker", 0).
membro_crew(1905765, "alex carr", 0).
membro_crew(1738647, "claudio del gobbo", 0).
membro_crew(1905781, "andy edridge", 0).
membro_crew(1905782, "ricky hall", 0).
membro_crew(1781641, "david maund", 0).
membro_crew(1790941, "tommaso mele", 0).
membro_crew(1903907, "fulvio segianni", 0).
membro_crew(1905800, "susanna fyson", 0).
membro_crew(1905805, "anamarie c. gonzaga", 0).
membro_crew(1905806, "dongho lee", 0).
membro_crew(1821633, "lulu morgan", 0).
membro_crew(1829892, "will samuelson", 0).
membro_crew(1431513, "julian dimsey", 0).
membro_crew(1382496, "jillian share", 1).
membro_crew(94047, "stan wertlieb", 0).
membro_crew(1458548, "david bryan", 0).
membro_crew(1533532, "laura katz", 1).
membro_crew(1658456, "alastair burlingham", 0).
membro_crew(1431552, "daina daigle", 0).
membro_crew(1425326, "bailey domke", 0).
membro_crew(1492089, "mary kirkland", 1).
membro_crew(1437152, "roo maurice", 0).
membro_crew(1434568, "molly kamrath", 0).
membro_crew(1418414, "jason waggenspack", 0).
membro_crew(1371037, "colin bates", 0).
membro_crew(1338484, "chris terhune", 0).
membro_crew(1452994, "guillaume roux", 0).
membro_crew(1338217, "nicky ackland-snow", 0).
membro_crew(983911, "louise kiely", 1).
membro_crew(1735830, "barbara pinn", 0).
membro_crew(1312279, "martin brinkler", 0).
membro_crew(1368889, "jaclyn tamizato", 0).
membro_crew(1194701, "josh ethier", 2).
membro_crew(1367135, "trenton mcrae", 0).
membro_crew(1399477, "laura wolford", 0).
membro_crew(1080778, "max borenstein", 2).
membro_crew(1599066, "judith sunga", 0).
membro_crew(1167206, "nathan nugent", 0).
membro_crew(1401857, "phillip dawe", 0).
membro_crew(1418349, "lediedra richard-baldwin", 0).
membro_crew(1418405, "heidi howell", 0).
membro_crew(1413502, "raj brinder singh", 0).
membro_crew(1404197, "nick dirosa", 0).
membro_crew(1505079, "alex francis", 0).
membro_crew(1384722, "marco anton restivo", 0).
membro_crew(1505086, "jemma burns", 0).
membro_crew(1369374, "kyle arzt", 0).
membro_crew(221850, "graham moore", 0).
membro_crew(1359989, "denise kum", 0).
membro_crew(1384721, "rebecca milton", 0).
membro_crew(1384723, "nora grossman", 0).
membro_crew(1384724, "ido ostrowsky", 0).
membro_crew(1424794, "marc gómez del moral", 0).
membro_crew(1437153, "amy riley", 0).
membro_crew(1437155, "lauren briggs-miller", 0).
membro_crew(1437156, "joe beal", 0).
membro_crew(1437162, "jonathan collard", 0).
membro_crew(1437164, "sarah shepherd", 0).
membro_crew(1437168, "richard george", 0).
membro_crew(1437169, "suzie shearer", 0).
membro_crew(1492088, "david kosse", 0).
membro_crew(1463400, "chris welcker", 0).
membro_crew(1453905, "kara petersen", 0).
membro_crew(1121984, "wayne marc godfrey", 0).
membro_crew(1121985, "arnaud lannic", 0).
membro_crew(1639168, "lee vandermolen", 0).
membro_crew(1569342, "andrew johnson", 2).
membro_crew(1644252, "peter beeh", 0).
membro_crew(1319523, "gabor norman", 0).
membro_crew(1319524, "julie ziah", 0).
membro_crew(1336767, "erica brien", 0).
membro_crew(1123892, "joseph delaney", 0).
membro_crew(1392959, "alysia cotter", 0).
membro_crew(1392960, "louis ferrara", 0).
membro_crew(129876, "federico costantini", 0).
membro_crew(1499157, "elena dubova", 0).
membro_crew(1499158, "daniela giovannoni", 0).
membro_crew(1492146, "anne carroll", 0).
membro_crew(1499160, "chris street", 0).
membro_crew(1301112, "ernest riera", 0).
membro_crew(1406292, "amanda steeley", 0).
membro_crew(1394055, "christophe lannic", 0).
membro_crew(1460254, "stephen ohl", 0).
membro_crew(1046602, "brian stultz", 0).
membro_crew(1495179, "james miller", 0).
membro_crew(137220, "angie fielder", 0).
membro_crew(1463796, "kelly herdus", 0).
membro_crew(1311620, "larry van duynhoven", 0).
membro_crew(1023809, "volker bertelmann", 0).
membro_crew(1347823, "nelson greaves", 0).
membro_crew(1347824, "adam sidman", 0).
membro_crew(1347952, "omid zader", 0).
membro_crew(1385059, "alan khamoui", 0).
membro_crew(1412386, "parker laramie", 0).
membro_crew(1453878, "andrew wesman", 0).
membro_crew(1453879, "heidi koleto", 0).
membro_crew(1453880, "brooks fairley", 0).
membro_crew(1453881, "veronika belenikina", 0).
membro_crew(1453882, "erica akin", 0).
membro_crew(1453883, "clint allday", 0).
membro_crew(1453884, "jon gerdemann", 0).
membro_crew(1453893, "michael c. martin jr.", 0).
membro_crew(1453894, "ojan missaghi", 0).
membro_crew(1453896, "mike moeding", 0).
membro_crew(1453899, "gray morison", 0).
membro_crew(1453901, "joanne wu", 0).
membro_crew(1453903, "alixzandra dove", 0).
membro_crew(1453907, "sean goller", 0).
membro_crew(1453915, "jackie kreterfield", 0).
membro_crew(1453916, "adam parkening", 0).
membro_crew(1453917, "elizabeth seaford", 0).
membro_crew(1456598, "nick benseman", 0).
membro_crew(1491178, "kathleen switzer", 0).
membro_crew(1457949, "bryan felty", 0).
membro_crew(1735820, "tess joseph", 0).
membro_crew(1569647, "karen scully", 0).
membro_crew(1354171, "henry hobson", 0).
membro_crew(1453641, "john scott 3", 2).
membro_crew(1465052, "trevor kaufman", 0).
membro_crew(1465055, "joey tufaro", 0).
membro_crew(1205705, "alexandra dimopoulos", 0).
membro_crew(1465058, "florian dargel", 0).
membro_crew(1465059, "ronald r.e. hebert", 0).
membro_crew(1465061, "todd trosclair", 0).
membro_crew(1465060, "ara keshishian", 0).
membro_crew(1539756, "francis scot middleton", 0).
membro_crew(1539757, "guy clayton", 0).
membro_crew(1539758, "murray gale", 0).
membro_crew(1539759, "melanie murray", 0).
membro_crew(1539760, "adam nagle", 0).
membro_crew(1539761, "scott boyajan", 0).
membro_crew(1539762, "miklos kozary", 0).
membro_crew(1539764, "aymeric perceval", 0).
membro_crew(1539765, "wade whitley", 0).
membro_crew(1463775, "troy wagner", 0).
membro_crew(1539768, "isaiah duncan", 0).
membro_crew(1548460, "chrissy callan", 0).
membro_crew(1308567, "warwick field", 0).
membro_crew(1548389, "adam horley", 0).
membro_crew(1310031, "emma donoghue", 0).
membro_crew(1492086, "jeff arkuss", 0).
membro_crew(1510491, "jean-francois lachapelle", 0).
membro_crew(1558090, "karina benesh", 0).
membro_crew(1658523, "peter cron", 0).
membro_crew(1531696, "david gilbery", 0).
membro_crew(1578021, "andrew ramage", 0).
membro_crew(1573031, "ryan andersen", 0).
membro_crew(1759010, "sarah rae davidson", 1).
membro_crew(1759012, "john hudson", 0).
membro_crew(1759015, "mike rosenstein", 0).
membro_crew(1389974, "fran cooper", 0).
membro_crew(147855, "simon alberry", 0).
membro_crew(1658457, "duncan mcwilliam", 0).
membro_crew(1539218, "julian ulrichs", 0).
membro_crew(1658524, "mary claire white", 0).
membro_crew(1658525, "christian grass", 0).
membro_crew(1723011, "sandra kelly", 0).
membro_crew(1608146, "eva-jane gaffney", 1).
membro_crew(82426, "the edge", 2).
membro_crew(1644256, "anwei chen", 0).
membro_crew(1717739, "avi goodman", 0).
membro_crew(1660308, "sid jayakar", 0).
membro_crew(111121, "david denney", 2).
membro_crew(574352, "lee stone", 2).
membro_crew(1060635, "kate glover", 0).
membro_crew(1658452, "natalia veloz chapuseaux", 0).
membro_crew(1658453, "eleanor baker", 0).
membro_crew(1658454, "iain abrahams", 0).
membro_crew(1658455, "andrew boucher", 0).
membro_crew(1729038, "jaim o neil", 0).
membro_crew(1729039, "max patrucco", 0).
membro_crew(1729046, "rebecca vujanovic", 0).
membro_crew(1099633, "luke gibleon", 0).
membro_crew(1484989, "benj gibicsar", 0).
membro_crew(1738103, "jared slater", 0).
membro_crew(1738653, "molly pabian", 0).
membro_crew(1757620, "amelia chen miley", 0).
membro_crew(1757626, "joe cassano", 0).
membro_crew(1759758, "peter graf", 0).
membro_crew(1768939, "cory wilde", 0).
membro_crew(1768941, "sid yost", 0).
membro_crew(1768942, "dionne simoneaux", 0).
membro_crew(1768944, "emma kate wood", 0).
membro_crew(1768945, "jade brandt", 0).
membro_crew(1768948, "meagan herrera", 0).
membro_crew(1768950, "alice moore", 0).
membro_crew(1768952, "tyler johnson", 0).
membro_crew(1768953, "rob krauzig", 0).
membro_crew(1768954, "emmi nakagawa", 0).
membro_crew(1768955, "brian jochum", 0).
membro_crew(1768956, "jacklyn ramirez", 0).
membro_crew(1768957, "alan munro", 0).
membro_crew(1769079, "joel reidy", 0).
membro_crew(1769087, "bridget brown", 0).
membro_crew(1769089, "donald roth", 0).
membro_crew(1769091, "jim wayer", 0).
membro_crew(1769093, "chiabella james", 0).
membro_crew(1769095, "joe sökmen", 0).
membro_crew(1769096, "richard t. hoover", 0).
membro_crew(1769097, "jeremy wren", 0).
membro_crew(1769098, "maxwell beard", 0).
membro_crew(1769100, "christopher rucinski", 0).
membro_crew(214356, "andrew fraser", 0).
membro_crew(1001794, "daniel levin", 0).
membro_crew(1173102, "garth davis", 2).
membro_crew(1450272, "saroo brierley", 0).
membro_crew(1735822, "seema kashyap", 0).
membro_crew(1735825, "guy strachan", 0).
membro_crew(1735827, "francesco le metre", 0).
membro_crew(1735832, "ramesh sadrani", 0).
membro_crew(1735833, "sunny wilding", 0).
membro_crew(1735855, "timothy jeffs", 0).
membro_crew(1735857, "kirsten veysey", 0).
membro_crew(1735859, "maria papoutsis", 0).
membro_crew(1764991, "karen sproul", 0).
membro_crew(1764992, "simone nicholson", 0).
membro_crew(1764993, "shahen mekertichian", 0).
