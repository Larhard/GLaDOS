ALTER TABLE contests
    DROP CONSTRAINT default_judge_fkey;
        -- should insert contest, then judges and at the end set default judge


COPY users (user_id, login, email, name, surname, password) FROM stdin;
0	pluckyraven        	havbxl@-go-uj.com	Stephen Cisneros	Vasquez	Anne bought new car. Tony is walking. John bought new car. John has free time. 
1	cogspoised         	iueep@-q-bs-.com	Abraham Blackburn	Yates	\N
2	largeepileptic     	dvtu0@------.org	Charlotte Byrd	Mayer	Tony bought new car. John is shopping. Tony bought new car. Tony has free time. Tony is walking. 
3	revolvingbroad     	nkls.mughxf@q--g--.org	Lynn Miles	Fowler	Anne bought new car. Anne bought new car. John has free time. Anne is walking. Tony is walking. 
4	managemelon        	mpzqp@yb-x-t.com	Erich Ingram	Ramsey	Tony has free time. Anne is walking. 
5	verifiableknowing  	yyax5@d-tk--.com	Dominick Neal	Logan	Anne bought new car. Anne has free time. Anne bought new car. John bought new car. John has free time. 
6	unicycleracial     	ctuf.qacaf@k-n--z.net	Cherie White	Tate	Anne bought new car. Anne bought new car. Anne is shopping. Anne is shopping. John has free time. 
7	mashcrumpets       	bovq@xmm--s.com	Ebony Daniels	Hale	Tony has free time. Anne is shopping. Tony bought new car. Anne has free time. John is walking. 
8	troopimpeccable    	neit@-sy-qj.com	Arthur Barrera	Cobb	Tony has free time. John bought new car. Tony has free time. 
9	cakemourning       	potq3@sgwcc-.net	Debra Middleton	Meyer	John bought new car. Tony bought new car. Tony bought new car. Tony bought new car. 
10	frogsspeculate     	bwff@---a--.com	Lara Haynes	Kaufman	John is shopping. Tony bought new car. 
11	droppingmarten     	vjpwx032@-e--c-.org	Shelley Garrett	Shaffer	Anne has free time. Anne bought new car. Anne bought new car. Tony bought new car. John bought new car. 
12	tetherballagenda   	dnnb64@--owk-.net	Otis Rodgers	Mora	Tony is shopping. Tony is shopping. Tony is walking. Anne bought new car. John has free time. 
13	crustthumb         	decx@qowq-o.org	Rose Moreno	Hays	Anne has free time. Anne bought new car. John bought new car. 
14	measlesovert       	utgv@-y-o-s.net	Roxanne Ellison	Lucas	Tony has free time. John is walking. Tony is walking. John bought new car. 
15	blindburly         	yhww@i---je.org	Kendall Ryan	Browning	Anne has free time. John is walking. Tony has free time. Tony is shopping. John bought new car. 
16	liberianpiggy      	nitlx@vt-d-d.com	\N	Cisneros	John has free time. Tony is shopping. 
17	shrivelpages       	fvho@wutq.z--pv-.com	Damien Newman	Pierce	\N
18	woefulobey         	inoh.lsiqor@eh-p--.com	Owen George	Mc Bride	John bought new car. John is shopping. Anne is walking. Tony has free time. Anne has free time. 
19	numberlesssalt     	vhjjb.criwkwf@d-v-fr.net	Jim Hoffman	Hall	Anne has free time. Tony is shopping. Tony has free time. Tony has free time. John bought new car. 
20	warmpoliceman      	fqpgux24@i--cby.com	Dwight Hayes	Donovan	Tony has free time. Anne has free time. John bought new car. Anne has free time. 
21	lumpishstick       	imuh@-r-rkb.com	Tonya Combs	Petersen	Anne bought new car. Anne is walking. Tony has free time. Tony has free time. John bought new car. 
22	abidingwabbit      	fpdh1@----wz.net	Ramona Hess	Gross	Anne bought new car. John is shopping. Anne bought new car. John has free time. John has free time. 
23	cootsoulless       	lsmj.gdhgy@-qpe--.net	Randall Morrison	Villegas	Tony is walking. John has free time. John bought new car. Tony has free time. John has free time. 
24	cletchguatemalan   	huheeh@w----n.com	Dena Mack	Cisneros	Anne bought new car. Anne is shopping. Tony has free time. Tony is shopping. 
25	briefsmurmur       	zenh@------.com	\N	King	John is walking. Tony is walking. Tony has free time. John is shopping. Anne has free time. 
26	fardpox            	yjybs13@--m-cl.net	Derrick Huffman	Cooper	Anne bought new car. Tony has free time. Anne is walking. Tony bought new car. Tony bought new car. 
27	potatoesvacuum     	ienq.tlihtq@---ekl.com	Clarissa Dunlap	Warner	Anne is shopping. Tony is walking. Tony is walking. 
28	sidehogwash        	crbn@q---wa.org	Chester Hutchinson	Lawrence	John bought new car. Anne has free time. John has free time. Tony bought new car. Anne has free time. 
29	outequatorial      	aejh@-----l.com	Audrey Beltran	Santana	Tony bought new car. John has free time. John bought new car. Anne has free time. John has free time. 
30	spiritualcheeky    	wrcg7@-t--fo.net	Marlon Newton	Singleton	Anne is shopping. Tony is walking. Tony bought new car. John bought new car. 
31	reachgongoozle     	lkouu834@-y--oy.net	Esmeralda Mejia	Frey	John bought new car. Anne is walking. John bought new car. John has free time. Anne has free time. 
32	jitterywed         	esmuf7@tvt--z.org	Stephan Park	Irwin	Tony has free time. Anne has free time. 
33	badgerreal         	oxhy@-ey--m.net	Bobbi Larson	Palmer	Tony has free time. Anne is walking. Anne bought new car. Tony bought new car. Anne has free time. 
34	powerfullevel      	hhsr9@-c-l-t.com	Sharon O'Neal	Cross	Tony bought new car. Anne is walking. Tony bought new car. Tony bought new car. John has free time. 
35	foggycurd          	uzuf@t-gx-s.net	Darren Sanford	Hartman	John bought new car. John is walking. 
36	ninnymew           	qlmd.pkui@gi---d.com	Tammy Fletcher	Reeves	Anne bought new car. Anne is walking. John bought new car. John has free time. Anne has free time. 
37	nohitterbarren     	oqbf@---ty-.net	Deanna Hicks	Jenkins	Anne is shopping. Anne is walking. 
38	rumpdartboard      	bcfr@-sxxd-.org	Charlotte Lara	Hart	Tony has free time. Anne bought new car. 
39	squaliddesire      	cvfe.ozwrpowe@-----k.net	Manuel Mcfarland	Kane	Anne has free time. Tony is walking. 
40	receptivesad       	rwbt1@---grw.com	Clyde Flowers	Pineda	John bought new car. Tony is shopping. Tony has free time. 
41	boyinactive        	xihf9@o---p-.org	Abraham Gates	Gardner	Anne is walking. Anne is shopping. 
42	snarlunkindness    	xxjf8@uxve.-whix-.org	\N	Hebert	Anne has free time. John is shopping. John has free time. Tony bought new car. Tony has free time. 
43	addictedclogs      	ndkt.rqfo@cz-g-f.org	Joyce Carlson	Bolton	\N
44	windowsspotty      	rfrr@ehd-g-.com	Esmeralda Vincent	Williams	\N
45	hamperimpossible   	aldm@hkt-xd.com	James Newman	Chang	Anne is walking. Tony has free time. John has free time. John is shopping. Tony bought new car. 
46	splendidimpatience 	dsni162@----f-.net	Tisha Thompson	Lawson	Anne has free time. Anne is walking. Tony bought new car. John has free time. Anne bought new car. 
47	ciliastreet        	zowg@ou-ul-.com	Milton Hatfield	Hood	John is walking. Anne bought new car. John bought new car. Tony has free time. Tony has free time. 
48	eyeballmajestic    	gudx@p-rgdh.com	Dewayne Glenn	\N	Anne is walking. Tony is shopping. 
49	cuckoldsell        	iddjr@xvsn.lw---v.net	Clarissa Mills	Davidson	Tony bought new car. John has free time. Tony has free time. John bought new car. John has free time. 
50	polofailing        	ywje1@n----u.com	Freddie Jordan	Chan	Tony bought new car. Anne is walking. John bought new car. Anne bought new car. John bought new car. 
51	sabermidwife       	mexy0@----d-.com	Shonda Walters	Munoz	Anne is shopping. Tony is shopping. 
52	oxbirdflakes       	emjw.ddiqq@cnv-w-.com	Tameka Bowman	Olson	Anne has free time. John is shopping. John bought new car. Anne has free time. Anne bought new car. 
53	pertinentjewish    	ifjb.poll@iyz--i.com	Christine Ponce	Valencia	John bought new car. Anne is shopping. Tony has free time. John has free time. John bought new car. 
54	curlydiscreet      	bjdl94@-bsf-j.com	Tami Mc Guire	Dunlap	John bought new car. John has free time. John bought new car. John has free time. Anne bought new car. 
55	dreadfultubes      	rrrt.pfspb@---m-h.org	Kari Mckee	Hines	Tony bought new car. Anne bought new car. John bought new car. Anne has free time. Tony bought new car. 
56	whoopfob           	luem.yocvu@w-i--p.org	Gabrielle Mooney	Moore	Tony bought new car. Anne is walking. Tony has free time. Anne is shopping. John is shopping. 
57	hungryshooting     	nlxf@iw-c--.com	Bethany Stone	Waller	Anne bought new car. Anne is walking. Anne is shopping. Anne has free time. Anne has free time. 
58	hardstockings      	gixmnl@-om-qu.com	Douglas Vargas	Neal	Anne is walking. Anne is shopping. Tony has free time. Anne has free time. John is shopping. 
59	ptarmigancluttered 	fuef@-b-d--.com	Joe Hart	\N	Tony bought new car. Anne is shopping. Tony is shopping. Tony is shopping. John bought new car. 
60	smashingcrusty     	ybhy9@me-uun.net	Camille Cabrera	Ayers	Anne bought new car. Anne has free time. Tony has free time. Tony bought new car. John has free time. 
61	hoothoopoe         	oljp219@fb---s.org	Corey Miller	Marquez	Anne bought new car. Anne is shopping. John bought new car. Tony is shopping. 
62	bevywonder         	ouet@-t-hms.org	Cassie Kaufman	Lyons	Anne bought new car. John has free time. John has free time. Anne bought new car. Tony has free time. 
63	arrangeskark       	ooyu@k---g-.com	Hilary Floyd	\N	John bought new car. Anne is shopping. Tony bought new car. John bought new car. Tony is walking. 
64	linearwrithing     	ctwq@h---h-.net	Juanita Munoz	Berg	John has free time. John has free time. Anne bought new car. 
65	buffwild           	etfa.ftqxusjrfd@x-yjoi.com	Tami Diaz	Delacruz	John bought new car. John has free time. Anne has free time. 
66	retortlots         	vdcq5@-u--by.com	Cassie Andrews	Warner	\N
67	vagarygalloping    	hpej.vrgr@-c-ld-.org	Terry Barrett	Baldwin	\N
68	locksskip          	kpmo.zyvc@-bcita.org	Alma Ortega	Kirk	John bought new car. Anne bought new car. Tony bought new car. John bought new car. John has free time. 
69	suffergrey         	emfcn@q--j-g.com	Sheryl Mora	Velez	Anne bought new car. Anne is walking. John is walking. 
71	subdueddamaging    	mxmr@fau--n.com	Mathew Werner	Adams	Tony bought new car. Anne bought new car. Tony is shopping. Tony is shopping. Tony has free time. 
72	meticulousdisguised	owvr6@pj-ok-.com	Jayson Townsend	Schultz	Anne is walking. Anne has free time. Anne is shopping. John is shopping. Tony is shopping. 
73	muggerhonored      	qeic.ovan@d-mp--.com	Alvin Pearson	Conway	Tony is walking. Anne is shopping. John bought new car. 
74	vileclanking       	jwbz@-pupob.org	Esther Nunez	Sheppard	Anne has free time. Anne is walking. Tony bought new car. Tony has free time. Tony is shopping. 
75	juvenilesquadron   	wxdm70@qh-tx-.org	Jorge George	Fisher	Tony bought new car. Anne has free time. 
76	falconchief        	fekh.mcuq@-f--h-.com	\N	Mc Carthy	Anne bought new car. Tony is shopping. John has free time. Tony bought new car. 
77	slammingconcede    	svxul99@z--h-c.net	Mary Rush	Yang	Anne bought new car. Anne is walking. John is shopping. Tony is shopping. Anne bought new car. 
78	gatoradeexcuse     	ivdc@vw-ybi.com	Matt Ortega	Mercer	John bought new car. Tony has free time. Anne has free time. John has free time. 
79	gymnastbowyang     	ienv.jcmog@qta--a.com	Jennifer Rivas	Hardy	Anne has free time. Anne bought new car. John has free time. John is shopping. Anne is walking. 
80	illfatedtanzanian  	jqmiv@-t-gr-.org	\N	Ramsey	John has free time. John is shopping. 
81	kumquatgap         	oofr737@--kuti.com	Carrie Chandler	Heath	Anne has free time. Tony is shopping. John bought new car. Tony bought new car. John has free time. 
82	bongocreamy        	mczi@--hik-.com	\N	\N	Tony has free time. Anne has free time. Anne is shopping. Anne is walking. 
83	duvetgeek          	ophx27@-s--rn.net	Arturo Nicholson	Lawson	\N
84	urbanremember      	kogx.iguf@v----c.net	Tabitha Patel	Ingram	Anne is shopping. Anne is shopping. John bought new car. John bought new car. Anne has free time. 
85	tubecarpet         	cxzy@------.com	\N	Garner	Anne bought new car. Anne has free time. Tony bought new car. John bought new car. Anne has free time. 
86	corpusclepinkie    	zrwe.tzll@--l--o.net	Roberto Walter	Kelley	\N
87	prudentten         	soir@x---aa.com	Maribel Gallagher	Franklin	Anne is shopping. John is walking. Anne bought new car. Tony is walking. Tony is shopping. 
88	pledgedriver       	jyeq@m-cytf.com	Nathaniel Oliver	Khan	John is walking. Tony bought new car. Anne bought new car. John has free time. John has free time. 
89	bruiseunruly       	mxvn@mb-t-s.com	Maureen Grant	Gates	John has free time. Tony bought new car. Tony has free time. John bought new car. Tony has free time. 
90	baronbun           	sjql865@i-wquv.org	Dawn Nielsen	Diaz	John bought new car. Tony is walking. John bought new car. Tony is shopping. Anne has free time. 
91	happycrunch        	gjgnc@w-l-r-.com	Earl Spence	Solomon	John bought new car. Tony bought new car. Tony bought new car. 
92	picketdossier      	nykmu.bziw@h--v--.org	David Carson	Andrews	Anne bought new car. John has free time. John has free time. John has free time. Anne has free time. 
93	arrivechain        	fywq@fgsz.lz--m-.net	Andre Rich	Michael	Anne has free time. Anne is walking. Tony bought new car. 
94	combhandle         	uncy@e-x-e-.com	Ricardo Williamson	Fowler	Tony has free time. Tony has free time. Anne bought new car. John is walking. Anne has free time. 
95	artisteturdiform   	xsxw.bdry@tnlh-l.com	Ernesto Mahoney	Rice	Tony is walking. Anne is walking. Tony bought new car. Anne has free time. Anne has free time. 
96	untimelyhorrible   	bmlih@ot-swp.com	Joe Mc Clure	Chung	Anne has free time. Anne is walking. John bought new car. John has free time. Anne bought new car. 
97	snotdidactic       	cfbx@w-tmil.com	Kristy Johns	Bryan	John bought new car. Anne is shopping. Anne bought new car. Tony bought new car. 
98	cartilagebull      	fqep.qycq@---e--.org	Lakesha Velasquez	Everett	Anne bought new car. John has free time. Tony bought new car. Tony is walking. John has free time. 
100	rummageplumber     	iumms@-xl-o-.org	Mandi Osborne	Knapp	Tony bought new car. Anne bought new car. John bought new car. 
101	strokering         	xihs@-l---r.com	Dwight Arnold	Conner	Anne bought new car. Tony is walking. John is walking. Anne has free time. John is walking. 
102	mercifulneighborly 	eooj.uuop@-ijwa-.net	Latanya Delacruz	Galloway	Anne bought new car. Anne is walking. John has free time. Tony has free time. Anne is shopping. 
103	attachcab          	rhpo269@--zde-.com	\N	Phillips	Anne has free time. Anne bought new car. Tony is shopping. Anne has free time. 
104	zipmanned          	lgbo@-mlhnv.org	Clinton York	Frost	Anne bought new car. John has free time. John bought new car. John has free time. 
176	playingplants      	jepk@---n--.org	Danny Hardin	Stout	Anne is walking. John is shopping. Tony bought new car. John has free time. Tony has free time. 
105	richwigeon         	prjms37@fun-aj.org	\N	Morse	Tony is walking. Tony is walking. John bought new car. Anne bought new car. John has free time. 
106	shageggs           	sntj@-xox--.org	Ray Huff	Mullins	John has free time. Anne is walking. Tony bought new car. 
107	jackkernel         	qrhc1@---b-x.com	Guy Good	Haas	Anne is shopping. Anne bought new car. Tony bought new car. Tony has free time. 
108	leapbarman         	hmbyx.lkxn@lma--c.com	Bernard Romero	Zimmerman	Anne bought new car. Tony bought new car. 
109	cuckoospeed        	ehef@lc-mw-.org	Clifton Ayers	Bright	Anne has free time. John is walking. Tony has free time. Anne has free time. 
110	charmtermites      	rwax86@x-w---.org	Shelly Davidson	Wiggins	Anne has free time. John is walking. Tony is walking. John is shopping. Tony has free time. 
111	doubtfulcakes      	lmpk65@---ipx.com	Sophia Garrison	Moran	John has free time. Anne has free time. Tony bought new car. 
112	golferpoppy        	nsns@siw-rx.com	Vivian Floyd	Colon	Anne has free time. Anne is walking. 
113	eggshears          	krqc21@---i--.org	Jolene Wilkins	Burns	John bought new car. Anne has free time. John is walking. John has free time. Anne has free time. 
114	deadpanglutinous   	roav588@-k-ow-.net	\N	Guzman	Anne has free time. Anne is walking. Anne bought new car. 
115	chileanscratch     	pfzj@tce--j.org	Kathy Goodwin	Rodriguez	John has free time. John bought new car. 
116	ribbitrope         	dqab.aftg@g---x-.com	Ross Sawyer	\N	Anne bought new car. John bought new car. 
117	pheasantcypriot    	yvvr9@d-w---.com	Aisha Acosta	Holmes	Tony bought new car. John bought new car. 
118	audiencebounce     	udbp@h-q-mw.net	Erica Bennett	Jacobs	\N
119	slowprawns         	utla@--ggf-.org	Candace Griffin	Franco	John has free time. John has free time. 
120	shipsscrubbing     	fpnm432@------.com	Chandra Duran	Hammond	John has free time. Anne is shopping. Tony bought new car. John is shopping. John bought new car. 
121	heartytourist      	wpygj.hsnxzc@-p----.org	Naomi Gregory	Dougherty	Tony has free time. Anne bought new car. 
122	shadowyimminent    	rlyb586@o-u-z-.com	Kenny Sparks	\N	Anne bought new car. John has free time. Anne bought new car. John has free time. Anne has free time. 
123	mundanemanhole     	vailc.pnrn@-e----.org	Nichole Delgado	Walton	Anne is shopping. Anne bought new car. John has free time. 
124	scientificrebel    	obwx4@---d-g.net	Alisa Owens	\N	John is shopping. Anne bought new car. Tony has free time. Anne is shopping. Tony has free time. 
125	runnerartless      	ygsk@q---h-.com	Jackie David	Davies	Tony bought new car. Anne is walking. Anne bought new car. John has free time. Tony bought new car. 
126	pakistanipistachio 	ptmvh6@d---xv.net	\N	Harmon	Tony bought new car. Tony bought new car. Tony bought new car. Anne has free time. Tony is shopping. 
127	senselesswire      	biby4@-bllbi.org	Bernard Delgado	Ortega	Anne bought new car. Anne bought new car. 
128	unlawfulscoop      	obhq824@v---dd.net	Lester Avery	Williamson	John bought new car. John bought new car. 
129	riskquiche         	rjso6@c--h--.com	Harold Copeland	Hickman	Anne has free time. John bought new car. Tony has free time. John has free time. Tony has free time. 
130	terriblepricked    	eued851@-wlyb-.org	Maria Lyons	\N	Tony bought new car. John has free time. Anne bought new car. Anne has free time. 
131	racketboxer        	wkst4@--x--t.com	Toby Mueller	Stark	Anne bought new car. Anne is walking. Anne bought new car. John has free time. Anne has free time. 
132	tidingfinicky      	zggj@g-----.com	Andres Baird	Browning	Tony has free time. Tony is shopping. Tony has free time. John has free time. John bought new car. 
133	bloodyworms        	mywe6@mxb-h-.com	Helen Hudson	Arias	Anne bought new car. Tony has free time. Anne has free time. Tony bought new car. Tony bought new car. 
134	ostrichbobolink    	xtjk35@u---ob.net	Shirley Woodard	Chapman	Anne bought new car. Anne has free time. 
135	debonairnocturnal  	eeev.jshglvnd@-xy---.com	Larry Villegas	Walter	Anne is walking. Anne has free time. John is walking. Anne has free time. Tony is walking. 
136	rattlesnaketreat   	cdpi@io----.org	Misti Santos	Guzman	\N
137	movebuttermilk     	wgcf@j-a--r.com	Angelique Burton	Wilkerson	John is walking. John bought new car. John bought new car. Anne is shopping. John is shopping. 
138	radicalchuckle     	rvjw52@--ym-z.com	\N	Snyder	Tony is walking. John is shopping. Tony bought new car. John bought new car. Anne has free time. 
139	ricefunny          	hjrx@o-cvg-.org	Terrance Hayden	Newman	Anne bought new car. John is shopping. Anne bought new car. Anne bought new car. 
140	plowprune          	vgmj.mveibh@h---t-.com	Stacey Shaffer	Burton	Anne has free time. Anne is shopping. Anne bought new car. 
141	sanguineforward    	jjkz07@ccqs-t.com	Randal Moss	Good	Anne bought new car. Anne bought new car. Tony bought new car. John has free time. Tony bought new car. 
142	heavenbeneficial   	twywk64@--bfch.net	\N	Roach	Anne bought new car. Tony bought new car. Tony bought new car. Tony bought new car. John is walking. 
143	unguardedmagical   	qgsph1@hr-m-q.com	\N	Whitehead	Anne is walking. Anne is shopping. Anne bought new car. Anne is shopping. John is walking. 
144	imploreguyanan     	ahawy4@------.com	Peter Barker	Villanueva	\N
145	jailhush           	fmqu2@-o----.org	Marco Thomas	Garrett	Tony bought new car. Tony has free time. Anne is shopping. Tony has free time. Anne is shopping. 
146	sowsechimp         	kjnc.wing@v-ynj-.com	Christie Mathews	Gay	Anne bought new car. Anne is walking. John bought new car. Anne has free time. Anne is shopping. 
147	hoipolloitoffee    	djiu348@----sz.net	Marcella Mc Cormick	Holder	\N
148	pettysmuth         	jkpi@yomg.nv-lu-.net	Mario Brady	Walsh	Anne bought new car. Anne has free time. Tony bought new car. Anne has free time. John is walking. 
149	magichis           	fjjg@-sq-vg.org	Kristy Diaz	Francis	Anne has free time. John has free time. 
150	collectedsoldier   	xscl34@-wolnp.org	Kris Barnett	Black	Anne bought new car. John is walking. Anne is shopping. John bought new car. 
151	hitterhippo        	cjey@-mp---.com	Randolph Roman	O'Connor	Tony is shopping. Tony is walking. John bought new car. Anne is walking. Tony has free time. 
153	purpleskirt        	kfed@b-v--p.net	Tina Lynn	Chase	Tony has free time. Tony is shopping. Tony bought new car. John has free time. John is walking. 
154	pluggedtedious     	dcpj486@----tx.org	Rebekah Carson	Porter	John bought new car. Anne has free time. John bought new car. Tony has free time. John has free time. 
155	candidcharlie      	xeuq@e--geu.com	Patrice Brandt	Maldonado	John bought new car. John is walking. John bought new car. Anne has free time. Tony has free time. 
156	subtleaustere      	mybe6@-fr--b.com	Katrina Pham	Mc Millan	Anne bought new car. Tony has free time. Tony is shopping. Anne is walking. John bought new car. 
157	gazelleremote      	vmber@-jum-k.com	Hector Merritt	Hoffman	John is walking. John bought new car. Tony has free time. 
158	curatoryoke        	hyrv17@-i-zyr.net	Darrin Rogers	Morse	Tony has free time. John is shopping. Tony bought new car. John bought new car. John is walking. 
159	flatmackerel       	rwdp@obl-k-.org	Jay Avila	Costa	Anne bought new car. Tony has free time. John bought new car. Tony bought new car. Tony is walking. 
160	phonelicense       	derx.fgnnvb@pc---w.org	Pete Goodman	Erickson	Tony bought new car. John bought new car. Tony is walking. Anne has free time. Anne has free time. 
161	worldlypet         	itub@g-lwr-.org	Brendan Barrera	Shields	Anne has free time. Tony has free time. 
162	irritatedmorris    	quii@--xgfk.com	Randal Friedman	\N	Anne bought new car. Tony is shopping. John bought new car. Tony is walking. John has free time. 
163	impatienceablaze   	yjwe1@r-is--.net	Bridgette Cochran	\N	Anne bought new car. Tony bought new car. Anne bought new car. Anne bought new car. Tony has free time. 
164	draftylisten       	ypbe.mjzbdsyh@jm--d-.com	Devin Werner	\N	Tony bought new car. Anne is walking. John bought new car. Tony has free time. Anne is walking. 
165	bloodpitch         	tgsd@-z-y--.net	Jenifer Underwood	Beltran	John has free time. Tony bought new car. John bought new car. Tony has free time. 
166	whoppingchomping   	oosv.msvw@--pv--.org	Rose Hendricks	Bean	Anne bought new car. Anne is walking. John bought new car. Anne has free time. John bought new car. 
167	unequalstop        	oscb.iszrnuh@jp--ab.com	Zachary Irwin	Parsons	Anne bought new car. Anne has free time. Tony bought new car. John is shopping. John bought new car. 
168	soundpesky         	gatay94@-ke-y-.com	Kari Mendoza	Larsen	Anne is shopping. Anne is shopping. John has free time. John has free time. 
169	stuffsix           	omvro@-iczyj.com	Marci Moon	\N	Anne bought new car. John bought new car. John bought new car. Tony bought new car. John is shopping. 
170	fruitkumquat       	ivmhb8@sigr-z.com	\N	\N	Anne has free time. Anne bought new car. Anne has free time. John has free time. Tony has free time. 
171	hooffatso          	sxzf@g-cm--.net	Anthony Klein	\N	John bought new car. Tony has free time. Tony has free time. Tony is walking. Anne bought new car. 
172	hissingunwilling   	kugln@------.com	Alison Parks	Pugh	Anne has free time. Tony has free time. John has free time. 
173	fatwaterpolo       	clvl@-cpv-l.org	Gilbert Roman	Gilmore	Anne bought new car. John is walking. John is shopping. 
174	tweezerszoom       	yefh.xvjwie@---v-i.org	\N	Hines	Tony is walking. John has free time. 
177	unfoldedabusive    	ohmt.tlbh@-yrjls.net	Cornelius Ibarra	Wong	\N
178	collectmoney       	grut.nkjw@-----j.net	Casey Armstrong	Oliver	John bought new car. Anne bought new car. Anne is walking. Tony has free time. John has free time. 
179	jarringfall        	irgc919@i-o---.net	Jesse David	Blevins	Anne is walking. Anne is shopping. John bought new car. John has free time. John has free time. 
180	pokemap            	joco2@----s-.com	Jana Burns	Frey	Anne bought new car. Anne has free time. Anne is walking. 
181	cerebellumlearn    	ndsro@q-fc--.org	Paul Bishop	Sexton	\N
182	decideardent       	xkgh387@o-----.net	Tamara Rodgers	Fischer	John bought new car. Anne bought new car. John is walking. Anne bought new car. Tony is shopping. 
183	oddballdentist     	lsmd.btbb@------.net	Jarrod Garrett	\N	Tony bought new car. John is walking. Anne bought new car. Anne is shopping. John has free time. 
184	clumsyregular      	tvxj@-lk--c.org	Tamara House	Lawrence	Tony has free time. John has free time. John is walking. 
185	nepalesestunt      	kcdh.iebn@----qo.com	Nick Olsen	Davenport	Tony is shopping. Anne has free time. Tony bought new car. Anne bought new car. 
186	mechanicplacid     	rdnq@nh-nl-.com	Noah Trevino	Gordon	John bought new car. John is shopping. Tony is walking. Anne bought new car. John has free time. 
187	vaguemuffins       	esdt8@--mhel.com	Regina Mc Knight	Saunders	Anne is shopping. Tony is shopping. John has free time. Tony has free time. Anne has free time. 
188	lardyclack         	bdas48@-c-cai.org	Kyle Long	Vincent	Tony is walking. Anne has free time. John bought new car. John is walking. Tony has free time. 
189	lovablebocce       	xmlm552@---mqw.org	Jon Boyd	Carson	Anne bought new car. John is walking. John has free time. John has free time. John has free time. 
190	reliablesweetcorn  	ryao.lkbrxiudkl@f--zr-.org	Roland Frank	\N	Tony bought new car. Tony is shopping. Tony has free time. Tony has free time. 
191	highhilarious      	jdwm087@c---i-.com	Karen Decker	Jacobs	Tony bought new car. Anne is walking. John bought new car. 
193	inventmason        	pkfg53@--j--c.org	Lucas Irwin	\N	Anne bought new car. Anne is shopping. John bought new car. John has free time. John has free time. 
194	lastingtwenty      	hoam46@yid--p.net	Morgan Parker	Andrews	Anne bought new car. Tony bought new car. John bought new car. Tony has free time. John is shopping. 
195	cheerfulsheriff    	yqne@-o-wts.net	Frank Williamson	Walters	John bought new car. Anne has free time. Tony bought new car. 
196	tibiafearful       	kjef.yvee@b-----.com	Krista Bryan	Estrada	Anne has free time. Anne bought new car. John has free time. John has free time. Anne bought new car. 
197	planusable         	knfq7@--dvv-.net	Judy Haley	Wagner	Anne is shopping. Tony is shopping. Tony bought new car. Tony has free time. John bought new car. 
198	prickturn          	wckp@------.com	Shawn Kirby	Ali	John is shopping. Anne bought new car. Tony is shopping. Tony has free time. Tony has free time. 
199	bakedrough         	aeht1@x-l-s-.com	Stephanie Lewis	Wiggins	Tony is shopping. Anne has free time. Tony bought new car. John bought new car. Anne has free time. 
200	fragiletour        	xgld8@k-j---.com	Seth Chung	Stafford	Anne bought new car. John is shopping. Anne bought new car. Tony bought new car. John has free time. 
201	lovingsquishy      	vaiy717@---did.com	Allen Frank	Rollins	John is walking. John bought new car. Tony has free time. Tony bought new car. John bought new car. 
202	upbeattongue       	nusl8@--kp--.com	Ricky Schmidt	Carney	Tony is walking. John has free time. Tony bought new car. 
203	harpiststaid       	pcyo.ycbr@-qyn-i.com	Gilbert Hayden	Duran	Tony is walking. Anne is shopping. 
204	sloppysnooze       	pwrh3@-p-akv.com	Randy Conley	Humphrey	John is shopping. Tony has free time. Tony has free time. 
\.


COPY contests (contest_id, name, description, default_judge) FROM stdin;
0	\N	Anne is walking. Anne bought new car. Tony bought new car. John is shopping. John has free time. 	\N
1	Erick Valentine	Anne bought new car. John has free time. 	\N
2	Janice Payne	Anne is shopping. Anne has free time. 	\N
3	Gretchen Mason	Tony has free time. Tony bought new car. John is shopping. John is walking. Anne bought new car. 	\N
4	Lawanda Noble	Anne has free time. John is shopping. John bought new car. John is walking. Anne is walking. 	\N
5	Robbie Baird	John is shopping. Tony has free time. Anne has free time. John bought new car. Anne is shopping. 	\N
6	Carla Compton	Anne is shopping. Anne is walking. Tony bought new car. John has free time. John has free time. 	\N
7	Heath Stafford	John is shopping. John is shopping. John is walking. 	\N
8	Kendra Stevenson	John has free time. John bought new car. Anne has free time. John is walking. 	\N
9	Brandie Chase	John has free time. Tony has free time. 	\N
10	Rose Kirk	John bought new car. John is walking. Tony is walking. 	\N
11	Ernest Lam	John bought new car. John is walking. 	\N
12	Randal Jackson	\N	\N
13	Ismael Holt	John bought new car. Tony is shopping. John has free time. Anne has free time. Tony bought new car. 	\N
14	\N	John bought new car. Anne is walking. Tony bought new car. John has free time. Anne is walking. 	\N
15	\N	Anne bought new car. Anne is walking. Tony is walking. Anne has free time. Tony has free time. 	\N
16	\N	Tony bought new car. Anne bought new car. John bought new car. Tony has free time. 	\N
17	Colby Wilkerson	John bought new car. John is walking. Tony is walking. Tony has free time. John has free time. 	\N
18	\N	John bought new car. John is shopping. John has free time. John bought new car. John is walking. 	\N
19	Teddy Hoover	Anne has free time. John bought new car. Tony has free time. Tony bought new car. 	\N
20	\N	\N	\N
21	Dianna Oliver	John bought new car. John is walking. 	\N
22	Geoffrey Aguirre	Tony bought new car. John has free time. Tony bought new car. Tony has free time. John has free time. 	\N
23	Melissa Atkinson	Anne has free time. Anne has free time. John has free time. 	\N
24	\N	Anne is shopping. Anne is walking. Tony bought new car. John is walking. Tony bought new car. 	\N
25	\N	\N	\N
26	Arlene Andersen	Tony has free time. Anne is walking. John is walking. John is shopping. Tony has free time. 	\N
27	Kathleen Novak	Anne bought new car. John has free time. 	\N
28	Sheldon Stuart	Anne bought new car. Tony is walking. Tony bought new car. Anne has free time. Anne bought new car. 	\N
29	Ivan Humphrey	Tony is walking. Anne is walking. Anne bought new car. Tony is walking. Anne is shopping. 	\N
30	\N	John has free time. John is walking. Tony bought new car. John is walking. 	\N
31	Joni Roberts	John is shopping. Tony has free time. John has free time. 	\N
32	Rex Galloway	Anne bought new car. Anne has free time. John bought new car. John is walking. Tony has free time. 	\N
33	Dwight Patton	Anne has free time. Anne has free time. John bought new car. John bought new car. John has free time. 	\N
34	\N	John bought new car. Tony has free time. 	\N
35	Arnold French	Anne has free time. Anne has free time. John is walking. John has free time. Tony has free time. 	\N
36	\N	Tony bought new car. Tony bought new car. John bought new car. 	\N
37	Bobbi Haynes	\N	\N
38	Carl Nunez	\N	\N
39	Frances Keller	Anne bought new car. Anne is shopping. 	\N
40	\N	Anne has free time. John is shopping. Tony has free time. 	\N
41	Luz Olson	Anne bought new car. Tony is walking. Anne bought new car. 	\N
42	Jami Cuevas	\N	\N
43	Ruth Simmons	Tony is walking. Anne is shopping. John has free time. Anne bought new car. Tony has free time. 	\N
44	Noah Nolan	Anne bought new car. John bought new car. Tony bought new car. Tony has free time. John is shopping. 	\N
45	Emma Anthony	Anne has free time. Tony is shopping. John has free time. John has free time. 	\N
46	Damien Massey	Anne bought new car. Anne has free time. John is shopping. Tony bought new car. John has free time. 	\N
47	Caroline Nash	Anne has free time. Anne bought new car. 	\N
48	Elisabeth Cole	Anne has free time. Tony is walking. Tony bought new car. Tony is shopping. Anne bought new car. 	\N
49	Morgan Simon	Anne is walking. Anne has free time. Anne bought new car. John is walking. 	\N
50	Clifford Diaz	Anne bought new car. Anne has free time. Anne has free time. John has free time. John has free time. 	\N
51	Guadalupe Pena	Anne is walking. John is walking. Tony has free time. Tony bought new car. John is shopping. 	\N
52	Sophia Arnold	John has free time. Anne has free time. Tony is walking. Tony has free time. Anne has free time. 	\N
53	Angela Horn	Anne has free time. Tony is walking. Anne has free time. Tony has free time. 	\N
54	Byron Allen	Anne has free time. Anne has free time. Anne bought new car. Anne is walking. Anne has free time. 	\N
55	\N	Tony bought new car. John is walking. Tony bought new car. Tony has free time. Tony bought new car. 	\N
56	Paige Cooper	Anne has free time. Anne is shopping. 	\N
57	Herman Williamson	Tony bought new car. Tony bought new car. 	\N
58	Clarissa Giles	Tony has free time. Tony has free time. John has free time. 	\N
59	Loretta Mueller	\N	\N
60	Austin Rivas	Anne bought new car. Anne is shopping. Tony bought new car. Tony has free time. Tony has free time. 	\N
61	\N	\N	\N
62	William Stout	Anne bought new car. Anne bought new car. Anne bought new car. John has free time. John bought new car. 	\N
63	Bridgett Woodard	\N	\N
64	Tamiko Novak	\N	\N
65	Irma Arnold	John bought new car. Anne has free time. John is walking. John has free time. Tony bought new car. 	\N
66	Kellie Galvan	John has free time. Tony is walking. Tony is shopping. Anne has free time. 	\N
67	Alex Rowland	John bought new car. Tony is walking. John bought new car. Anne has free time. Tony bought new car. 	\N
68	Whitney Jennings	Tony has free time. John is shopping. John is shopping. 	\N
69	Marc Pope	Tony bought new car. Anne has free time. Anne has free time. 	\N
70	Dwayne Flynn	Anne is shopping. John bought new car. Tony bought new car. Tony is walking. John has free time. 	\N
71	Theodore Melton	Anne has free time. Anne has free time. 	\N
72	Jayson Shields	Tony has free time. Tony bought new car. Tony bought new car. John bought new car. John bought new car. 	\N
73	Lauren Spencer	Anne bought new car. Tony is walking. Tony is walking. Tony is shopping. Tony bought new car. 	\N
74	\N	John is walking. John bought new car. 	\N
75	Omar Sanders	Anne bought new car. Anne is shopping. 	\N
76	Darla Dalton	John has free time. Anne is walking. John has free time. 	\N
77	Melisa Li	Anne bought new car. Anne has free time. John has free time. John has free time. Tony is shopping. 	\N
78	Ron George	Anne has free time. Anne has free time. Tony is walking. John is shopping. Tony bought new car. 	\N
79	Heidi Petty	Anne bought new car. Anne is shopping. John is shopping. Tony is walking. Tony has free time. 	\N
80	Judith Kane	Tony bought new car. Anne is shopping. 	\N
81	Wallace Savage	John has free time. Tony is walking. Anne is shopping. Anne is walking. John is walking. 	\N
82	Luz Gregory	Anne bought new car. Tony bought new car. Tony has free time. John bought new car. 	\N
83	Cari Dillon	\N	\N
84	Regina Blackburn	Anne bought new car. Anne is shopping. John has free time. John is shopping. Tony has free time. 	\N
85	Latanya King	John is walking. John is shopping. John has free time. Tony bought new car. Anne has free time. 	\N
86	\N	Tony is shopping. Tony bought new car. Anne is shopping. John is shopping. 	\N
87	Lewis Maxwell	\N	\N
88	Jasmine Padilla	Anne bought new car. John bought new car. Anne bought new car. Tony has free time. John has free time. 	\N
89	Laura Caldwell	Anne is shopping. Anne has free time. Anne is shopping. Tony is shopping. John has free time. 	\N
90	Dustin Clements	John bought new car. Anne bought new car. 	\N
91	Julian Heath	John has free time. Anne is walking. John is walking. Anne bought new car. Anne is shopping. 	\N
92	\N	Anne bought new car. Tony bought new car. Tony is shopping. John is shopping. Tony bought new car. 	\N
93	Rickey Doyle	Anne bought new car. Tony bought new car. Tony has free time. Tony bought new car. Anne is walking. 	\N
94	Wesley Nichols	Anne bought new car. John is shopping. Tony has free time. Tony has free time. 	\N
95	Brent Hanson	Tony bought new car. Anne is walking. John bought new car. Tony has free time. 	\N
96	Kurt Wade	John is shopping. Anne bought new car. Tony bought new car. John has free time. Tony has free time. 	\N
97	Sonya Watkins	Anne bought new car. Anne is shopping. Tony is shopping. Tony bought new car. John is shopping. 	\N
98	Cassandra Fischer	Anne bought new car. Anne has free time. Tony bought new car. Tony has free time. Anne has free time. 	\N
99	Bobbie Hill	John is shopping. Anne has free time. Tony bought new car. John has free time. John has free time. 	\N
100	Caroline Koch	Anne has free time. Anne is walking. Tony is walking. 	7
101	Marty Luna	John is shopping. Anne is shopping. Tony has free time. Tony has free time. John has free time. 	101
102	Crystal Lucas	Tony bought new car. Anne bought new car. Anne is shopping. 	120
103	Timothy Young	Anne is walking. Anne bought new car. Tony is shopping. Tony bought new car. Tony bought new car. 	119
104	Darren Gates	Anne bought new car. John is walking. 	100
105	Erin Clark	Tony is walking. Anne has free time. 	120
106	Desiree Chandler	Tony bought new car. John is walking. Tony is shopping. Anne has free time. 	29
107	Allyson Sloan	Anne has free time. Tony is shopping. Tony is shopping. Tony bought new car. Tony has free time. 	50
108	Bridgett Lawrence	Anne bought new car. Anne is shopping. Anne bought new car. 	108
109	Bobby Cunningham	Tony bought new car. Anne is shopping. John bought new car. John is shopping. 	53
110	Bennie Park	Anne bought new car. Anne has free time. John is shopping. John has free time. Tony is walking. 	67
111	Chanda O'Connell	Anne bought new car. Tony has free time. John bought new car. Tony is shopping. Tony is walking. 	9
112	Lakeisha Foster	\N	41
113	Anne Robertson	Anne is walking. Anne has free time. Tony bought new car. Tony bought new car. Tony is walking. 	96
114	Marsha Cervantes	Tony bought new car. Anne bought new car. Tony is walking. Tony is walking. John is shopping. 	\N
115	Marty Craig	Tony is walking. Anne is shopping. Anne bought new car. Tony is shopping. 	20
116	Neil Solomon	\N	149
117	Darcy Gamble	Anne bought new car. Anne is walking. 	70
118	Olivia O'Connell	John is walking. Anne is shopping. Tony has free time. John has free time. Tony is shopping. 	113
119	Lonnie Dickerson	Anne bought new car. Anne is shopping. Anne bought new car. John is walking. Tony has free time. 	\N
120	\N	Anne bought new car. Tony is walking. Tony has free time. Tony bought new car. 	\N
121	Kelley Cantu	Anne has free time. John is walking. 	72
122	Alisha Franklin	Anne is walking. John bought new car. 	\N
123	Dena Alvarez	Tony is shopping. Anne is shopping. Tony has free time. 	86
124	Gustavo Anderson	Tony bought new car. Anne is walking. Anne bought new car. John has free time. Anne is walking. 	68
125	Damion Stein	Tony is shopping. John is shopping. Tony is walking. Anne bought new car. Tony bought new car. 	\N
126	Denise Figueroa	Tony bought new car. John is shopping. John bought new car. John bought new car. John has free time. 	25
127	Owen Strong	John is shopping. John has free time. John bought new car. Tony has free time. Anne has free time. 	104
128	Aisha Rollins	Tony is walking. Anne has free time. John bought new car. John bought new car. 	146
129	Marcos Reed	Anne has free time. Anne has free time. Tony is shopping. John is shopping. Tony has free time. 	52
130	Mandi Sawyer	John bought new car. John is shopping. John has free time. John has free time. Anne bought new car. 	6
131	Keri Riggs	\N	97
132	Alexander Ballard	Anne bought new car. Tony has free time. John bought new car. 	\N
133	Colleen Guerrero	\N	68
134	Edith Houston	John bought new car. John bought new car. Anne bought new car. John bought new car. Tony has free time. 	121
135	Betsy Grant	Anne bought new car. John is walking. Tony has free time. 	\N
136	\N	\N	5
137	Casey Orr	John has free time. Anne is shopping. Tony has free time. Anne is walking. Tony is walking. 	30
138	Naomi Floyd	Anne has free time. Anne has free time. Tony bought new car. John is shopping. 	\N
139	Kisha Nicholson	Anne bought new car. Tony has free time. Tony bought new car. Tony has free time. Anne bought new car. 	106
140	Valerie Weiss	John is walking. Anne has free time. John has free time. John has free time. Tony bought new car. 	18
141	Nina Cain	John has free time. Tony is walking. 	103
142	Brandy Ayers	Anne has free time. John has free time. John is walking. 	70
143	Deana Zavala	\N	\N
144	Noel Vance	Anne bought new car. Anne is walking. John is walking. Tony bought new car. Anne is walking. 	\N
145	Katie Schmidt	Anne has free time. Tony bought new car. 	88
146	Jacob Mueller	Anne is walking. Tony bought new car. 	67
147	Bennie Walls	Anne is shopping. Anne is shopping. Tony is walking. Tony has free time. 	45
148	Mario Hansen	Anne bought new car. John bought new car. John has free time. Anne has free time. Tony has free time. 	37
149	Rusty Thompson	Tony has free time. Anne is walking. John bought new car. 	20
150	Kristy Hall	Anne bought new car. Tony is shopping. Anne has free time. Tony has free time. John is walking. 	34
151	Rose Solomon	Tony bought new car. Anne is shopping. Anne is walking. Tony is walking. Anne bought new car. 	136
152	Susan Gay	Anne is walking. Tony bought new car. John is shopping. 	51
153	Heidi Conner	\N	\N
154	Walter Stafford	Tony bought new car. John is walking. 	120
155	\N	Anne is shopping. Anne is walking. Tony is walking. John has free time. John has free time. 	111
156	Rickey Bowman	John is walking. Tony bought new car. John is walking. John has free time. Tony has free time. 	99
157	Joey Osborne	John has free time. Anne has free time. John has free time. Tony has free time. Tony bought new car. 	72
158	Warren Mcfarland	Anne bought new car. Anne has free time. Anne bought new car. Tony bought new car. John has free time. 	113
159	Christie Peterson	John is walking. John has free time. Tony has free time. John has free time. Anne bought new car. 	9
160	Orlando O'Connor	Tony is shopping. John is shopping. 	128
161	Andre Gregory	John bought new car. John is walking. John is shopping. Tony has free time. Anne is walking. 	17
162	\N	Tony bought new car. Tony is shopping. John bought new car. John has free time. 	96
163	Alex Mills	John has free time. Tony is shopping. Tony has free time. John bought new car. John has free time. 	115
164	Priscilla Walter	Anne bought new car. Anne is shopping. John bought new car. Anne is shopping. Anne bought new car. 	47
165	Natasha Craig	Anne bought new car. Tony is walking. Anne has free time. Anne is shopping. John has free time. 	117
166	Jill Hunt	Anne bought new car. Anne is shopping. Anne is walking. Anne is walking. Tony is walking. 	88
167	Eduardo Choi	Anne bought new car. Tony bought new car. John is walking. Anne has free time. Anne bought new car. 	66
168	Constance Haley	Anne bought new car. John is shopping. 	\N
169	Becky Fritz	Anne is walking. Anne is shopping. Anne bought new car. 	\N
170	\N	Anne bought new car. Anne bought new car. Anne bought new car. Tony has free time. Anne is walking. 	\N
171	Dewayne Perez	Anne bought new car. Anne has free time. Anne is walking. 	26
172	Kurt Horne	Anne bought new car. Tony is shopping. Tony has free time. Tony has free time. John has free time. 	15
173	Vicki Ali	John is shopping. Anne has free time. Tony has free time. Tony bought new car. Anne bought new car. 	50
174	\N	\N	25
175	Sheryl Lutz	Tony has free time. Tony is shopping. Anne bought new car. Tony has free time. Tony has free time. 	98
176	Cheri Aguirre	Anne bought new car. John has free time. John bought new car. John is walking. Tony is walking. 	79
177	Carmen Castillo	Anne is walking. John bought new car. Anne bought new car. Anne bought new car. John is shopping. 	38
178	Clarissa Howe	John bought new car. John bought new car. 	87
179	\N	\N	51
180	Oscar Norris	Anne bought new car. Anne is walking. John bought new car. Anne has free time. Tony bought new car. 	50
181	Rocky Norris	Anne has free time. Anne has free time. Anne bought new car. John bought new car. Tony has free time. 	102
182	Kate Hess	Anne is walking. Tony is shopping. John is walking. Tony has free time. 	48
183	Rosa Patel	John is walking. Anne is walking. 	\N
184	Tamiko Hardin	Anne has free time. Anne bought new car. John has free time. Anne is walking. John has free time. 	82
185	Monique Luna	Anne is shopping. Anne is walking. John bought new car. Anne has free time. Tony has free time. 	132
186	Damion Pope	Tony is walking. John is walking. 	7
187	Martin Moreno	Anne bought new car. Anne has free time. John is shopping. Tony has free time. John bought new car. 	0
188	\N	John bought new car. Tony bought new car. 	\N
189	Stephan Arellano	Anne is walking. Anne has free time. Tony bought new car. Tony has free time. Tony bought new car. 	\N
190	Devin Mckenzie	\N	\N
191	Rick Whitaker	\N	26
192	Keri Owen	Tony has free time. Anne is walking. Tony is shopping. 	103
193	Christy Maynard	Anne bought new car. Anne bought new car. Tony is walking. John is walking. Tony is walking. 	29
194	Orlando Montgomery	John bought new car. John is shopping. Anne bought new car. John bought new car. 	56
195	Wallace Wise	John has free time. Anne bought new car. Anne is shopping. Tony has free time. Tony bought new car. 	111
196	Dante Munoz	Tony bought new car. Anne has free time. John bought new car. Anne is shopping. John bought new car. 	39
197	Kirsten Hart	Tony bought new car. Tony is walking. Tony bought new car. John bought new car. John is walking. 	\N
198	Clinton Velazquez	\N	71
199	Suzanne George	Anne bought new car. Anne is shopping. Anne has free time. Tony has free time. Tony has free time. 	82
\.


COPY judges (judge_id, path, contest_id) FROM stdin;
0	http://oxmx.net/btqwl/vbshc.asm	73
1	http://vkynk.net5/hjwhb/qhj.asm	29
2	http://njlre.webl/qjxiu/bdp.php	90
3	http://qje.net/nqywu/lih.txt	0
4	http://wvt.net51/voxsq/ovt.ini	49
5	http://nkw.net1/vuabl/yjbt.doc	85
6	http://kkbs.net44/ionki/bcrk.txt	98
7	http://ivk.net6/foqia/zpn.xls	3
8	http://lhkfy.net/bjcgm/gqm.ini	85
9	http://jmx.net5/reurh/xbd.xls	92
10	http://xxto.locali/epzgj/fjdu.bmp	98
11	http://kqggn.net13/ahimp/cyc.pdf	45
12	http://zxf.web0/xsncw/uju.bmp	22
13	http://xqgh.locale22/nxwvx/zyx.ini	51
14	http://mlh.localq/qywtk/xmwdk.txt	7
15	http://msho.web5/ehlos/bkc.pdf	84
16	http://dyf.web/fbxqs/mhpx.pdf	74
17	http://dizl.net/lcrbs/pby.bmp	24
18	http://plehy.net06/zvook/clopl.txt	94
19	http://kdy.net7/niatn/ttn.pdf	55
20	http://avfjc.netn/ekiby/mvr.asm	3
21	http://fiqym.net/wupdo/irbd.ini	11
22	http://sknx.net7/fjqtv/xdn.asm	69
23	http://dft.net/tmvig/oundb.xls	78
24	http://ped.net45/ieqik/hpbr.bmp	85
25	http://tsh.webz/hepft/hib.ini	37
26	http://sdepq.local/wrgdk/wpuns/euab.ini	5
27	http://iosvr.netf/otehx/jgs.xls	27
28	http://axxgp.local/vignd/wsga.php	40
29	http://evfro.net/jrzvc/qvht.xls	94
30	http://pgo.locala7/syaxk/cwqy.pdf	35
31	http://kgc.net4/dqkiu/uqwt.ini	52
32	http://wkbmr.web33/slnbu/yrpuz.pdf	99
33	http://ygyv.local0/rvtpz/ijfwk/wsn.txt	67
34	http://qjs.localf85/rfode/rne.ini	56
35	http://uke.web/dfkrd/yltr.php	33
36	http://pij.web8/cftft/ngjte/mlvux.ini	47
37	http://bud.net16/ztdxg/boww.php	79
38	http://cso.net10/ozgwy/gav.ini	4
39	http://ugg.local66/fpbqi/coom.asm	17
40	http://kck.webd/xqhym/eli.pdf	58
41	http://ftw.web/dpwnv/jds.ini	16
42	http://rjl.local2/qfnds/muz.pdf	85
43	http://fnbj.net76/lgkhv/yrvp.xls	59
44	http://vsxq.web9/awbrf/xhuyt.doc	22
45	http://wxlki.net5/syfbt/dxpou.xls	23
46	http://gjmrq.web/bdnej/kzssf.php	15
47	http://kml.webi/enktk/jlk.xls	66
48	http://uzh.web/bjmvq/lqcs.ini	96
49	http://mtyh.net57/nbbeq/xcd.txt	62
50	http://zgw.local/uclqr/cexro/vzm.txt	23
51	http://zteru.web93/cipwf/fkbnp/kme.ini	68
52	http://tqq.local/twnfo/juh.php	61
53	http://mub.webq31/hxsup/mlo.php	2
54	http://xyc.net/uvlwr/uiy.ini	60
55	http://vccwv.nete/cobqv/xhn.xls	73
56	http://inh.net/pyhcs/bgrts/jww.asm	24
57	http://ivdit.local/wngjf/tydwf/lgno.bmp	72
58	http://mekb.net61/gfsta/tzn.bmp	83
59	http://vds.net96/cwdgt/eotv.asm	0
60	http://uvm.net5/oowgm/zsjtm/gmf.doc	68
61	http://ydbfq.local/thasv/qdbql/won.xls	54
62	http://jcl.web63/tengi/oxtc.pdf	79
63	http://jrefh.webj/idizs/jjb.xls	1
64	http://trz.web81/tdooe/wbsn.php	12
65	http://qwkh.web6/xmmxk/tbms.xls	82
66	http://ykql.web/qstqe/xcoq.asm	10
67	http://gyodq.net/vznrb/gde.asm	10
68	http://vvqux.local7/elels/ysm.pdf	3
69	http://mum.netm2/ofoau/hzbt.bmp	84
70	http://fzzf.netd4/vtevm/vkl.xls	93
71	http://vfm.web/mwsbo/jwir.doc	74
72	http://ewco.web/njmcb/bok.txt	26
73	http://ykj.web0/trdqe/cbk.pdf	80
74	http://xqnud.nett/fipub/amg.pdf	55
75	http://sci.local/jhqoq/jpxyo.doc	3
76	http://xpa.net9/krbmk/ezu.bmp	22
77	http://aakm.netg/nijqm/xle.doc	12
78	http://rnlqm.web02/nyihg/pnihd/lxyr.xls	14
79	http://nrly.net61/cfbjq/xcdf.asm	98
80	http://vjol.localk8/trvdj/edx.bmp	5
81	http://lxf.web/xkuxe/uij.txt	33
82	http://pdw.web/kjijc/cwf.ini	13
83	http://wrte.web2/apevh/tdiwq/byf.pdf	55
84	http://mtwuk.webk75/mchpw/xez.ini	5
85	http://ele.local7/svktm/npd.ini	36
86	http://bfmk.netq75/cavhh/stcux/ggfa.php	46
87	http://dwp.web49/ewlzf/ugwvl/udo.xls	39
88	http://efekj.nett94/bpkjz/dmr.txt	46
89	http://ljl.local3/kcuxj/mlg.xls	38
90	http://khqx.web1/kfwdf/rfig.asm	25
91	http://gyq.web/wgiij/crnl.ini	79
92	http://kzob.webh/likph/wjsax.txt	78
93	http://ffx.local95/yecxd/rde.ini	26
94	http://jvde.local39/orxkn/lwh.xls	77
95	http://wnlv.local/axiij/ydnv.bmp	58
96	http://vbb.localo11/lamyj/novbe/nyw.xls	34
97	http://kfo.net/wjnxd/kpxm.php	92
98	http://wkgrr.local00/lbpvs/nngx.ini	72
99	http://qzl.local97/qcplw/urv.txt	53
100	http://khv.local/mrjdf/rhcqg.xls	88
101	http://rum.netw09/fducz/gftkn/pnp.asm	41
102	http://aje.local/oqiiy/eng.ini	42
103	http://yney.local/pobma/pqer.bmp	42
104	http://uljss.net1/spukj/tyl.txt	16
105	http://poypt.local5/cggpi/nxi.xls	72
106	http://qttv.local5/kocxg/qmcuq/fnk.xls	15
107	http://xzj.locall74/ueyfz/xbwtm/dct.ini	75
108	http://obmkk.net/muqob/nhu.txt	17
109	http://cqfab.neth1/ocynp/fbczn.xls	46
110	http://cwqah.web89/kilmt/njxvx.txt	56
111	http://knfk.netm78/lmfyh/tst.doc	80
112	http://frjr.web27/ylzog/klnz.asm	9
113	http://gpsx.web5/esjfy/kvy.php	23
114	http://ckvuh.netu2/bflvi/dyj.pdf	16
115	http://ndl.web07/jrrby/vsz.pdf	26
116	http://exhxw.netf/eddvt/tjvjr.bmp	63
117	http://clvwd.localp/kvywg/jyb.php	90
118	http://cxa.netk54/qmtdj/ouacq/eyo.asm	52
119	http://ipcl.local5/wjvqs/yuy.asm	19
120	http://dkbd.net/hpevw/paz.pdf	2
121	http://iww.net66/atyao/dne.ini	29
122	http://mko.net8/hnwsj/iyc.xls	55
123	http://byg.net80/gvond/lpc.bmp	62
124	http://ckro.local8/torbx/lssqd/iye.bmp	59
125	http://rrat.web6/pauok/yxci.ini	87
126	http://kjdx.nett/yoccw/prbr.ini	48
127	http://pyp.net/peqnq/jkg.bmp	93
128	http://kvnh.net/yomei/hhr.txt	90
129	http://bht.net/xqyus/lbm.asm	24
130	http://scq.local/nssbe/nfcnc/vnv.bmp	4
131	http://vydgl.net0/iihho/djj.ini	80
132	http://jtet.localm4/zrxrt/crn.ini	46
133	http://fzb.net88/xwegy/pwl.xls	81
134	http://diqqs.webj2/knbkt/dsw.ini	39
135	http://lpdjo.net/ntxmr/pvnbd/oib.asm	91
136	http://qeg.web4/gfznh/fitm.bmp	80
137	http://bwwv.neth/egrim/kjr.php	66
138	http://univ.local3/mwybk/xmkw.bmp	32
139	http://jev.net99/msntf/oqj.xls	64
140	http://cnizz.local/lusek/mvxz.pdf	66
141	http://rionw.localr/yivak/zuk.bmp	40
142	http://bore.net33/cigys/xxjz.ini	73
143	http://utpdx.net58/oclhz/zscvm/mvsh.doc	47
144	http://oyrt.web83/mfcmr/uvc.doc	70
145	http://llkol.local95/bzstr/jbj.xls	61
146	http://jhy.net/sxvgw/oszjv.ini	53
147	http://lmof.net62/wuwgw/qlm.doc	98
148	http://wkl.local9/mfweb/nhm.bmp	0
149	http://fbfp.web/glufb/dxop.doc	62
150	http://hlbmj.webf/nocna/gkuqh.bmp	189
151	http://ngjt.net1/oqwxo/qpq.txt	117
152	http://accb.net/hxfau/dmgg.xls	72
153	http://bpp.locald0/fmbio/itm.xls	114
154	http://cwi.net/yydyi/ggg.asm	125
155	http://mfv.netn36/wtrdi/ltb.bmp	195
156	http://svln.web28/enwym/yvs.ini	35
157	http://trao.net1/vwhny/cdh.ini	8
158	http://pqi.net77/plgdh/qdb.php	98
159	http://jwj.local7/qpsqx/cuv.txt	74
160	http://utnwr.net/ndutg/ldwn.ini	181
161	http://pjjpp.net81/aeuqr/utyh.txt	183
162	http://nfd.local6/opmpg/mpp.bmp	56
163	http://ppaso.web37/oolyj/alw.txt	86
164	http://woj.locall/nqsub/eta.ini	148
165	http://gcwe.net16/oriln/nvj.pdf	149
166	http://ofdoi.netu6/tpagj/weji.xls	53
167	http://jto.local/udapl/kbal.ini	195
168	http://nnt.webd5/ufhzc/omq.doc	129
169	http://vrh.net07/yktgd/mgzxs.pdf	168
170	http://fnj.net/fkudy/nqb.pdf	162
171	http://epr.net/ycorh/lrch.bmp	184
172	http://avzt.net/gjlpx/qzyc.xls	106
173	http://xmk.web/qazbr/mnu.ini	79
174	http://wst.net/jnmsu/def.php	7
175	http://isqe.webr/etsde/qtp.asm	188
176	http://fjm.local31/ovbet/vhos.asm	123
177	http://xax.web74/kzqwx/gzdo.pdf	189
178	http://meofb.net43/beyjf/qgtv.txt	34
179	http://agj.web/kpyjw/huexx/oyiu.txt	2
180	http://xfhi.netg8/cndni/sknye.xls	21
181	http://wuhub.localt/pkldo/fci.xls	183
182	http://vooct.net4/yfupj/edz.ini	116
183	http://dsck.webp/wwktg/zyx.doc	101
184	http://rqbdz.web/ubdvi/aeqlt/mej.ini	77
185	http://zix.local8/fyiko/efyuu/pvs.bmp	179
186	http://lrs.web3/stxsi/iulib/qwr.bmp	173
187	http://fjric.local/hujrp/ych.bmp	21
188	http://ely.net2/yxemc/afjfe/mfcck/ggr.bmp	105
189	http://frefx.web18/rgjaq/beu.txt	63
190	http://nsmdh.net/lzcth/jzp.php	179
191	http://ygazu.net14/icmct/zyge.doc	150
192	http://pmjgo.netx/cpwij/eyas.bmp	176
193	http://tftj.web3/psnmd/lsrgd.txt	78
194	http://kbd.local37/lhffr/hum.php	61
195	http://cwhd.local73/rtjcb/drl.php	114
196	http://gdcw.net73/aonqn/cvwr.ini	74
197	http://dgj.net/ffrqm/eus.asm	191
198	http://cvr.webf/pmcfw/jdh.xls	82
199	http://qxj.net11/kzmsn/mjx.xls	7
200	http://emc.local18/wckgu/ely.bmp	147
201	http://yjj.local04/hcokj/rjxvo/irjw.pdf	170
202	http://zjgms.web/qbuhd/nvzpi/lyo.pdf	174
203	http://cwo.net/pykqc/hhf.asm	190
204	http://zvxq.net/tnyuw/ocy.pdf	180
205	http://wjq.net71/hpxgx/dof.pdf	67
206	http://tvt.web67/opfwz/zfx.xls	53
207	http://crf.local1/jihul/ppze.asm	18
208	http://wjde.web8/wfmgh/ruly.pdf	65
209	http://bzed.web7/hgsim/douct.bmp	148
210	http://gvb.netg/bkurp/zwyu.xls	181
211	http://sxp.local39/owlub/vdh.bmp	160
212	http://wsn.net62/ztkke/kwk.doc	130
213	http://aht.local6/kfqfr/ifl.asm	36
214	http://oxt.netq42/gsgmr/dcr.doc	13
215	http://vwq.local/ofhdl/skldv/nbs.doc	158
216	http://ryycd.neth/owjju/rhhuf/gxl.pdf	43
217	http://rwfq.web/ktjow/mtmb.asm	126
218	http://tfj.netg/bmmzg/cgb.ini	64
219	http://ioo.web/gtlbm/fcv.bmp	0
220	http://ebt.net23/eymwb/qiiyw/lagr.doc	196
221	http://hhd.webk31/mmctb/fiw.asm	12
222	http://ebzk.web/jkilm/wradg.ini	191
223	http://ijenr.netc/yxdkk/ijik.xls	3
224	http://evi.net25/soisg/ntwfs/gfhrw.asm	110
225	http://hgda.net5/vwcbx/oued.bmp	40
226	http://fop.netv/yrbnj/ewyyd/shd.ini	4
227	http://cqfst.net61/wndnn/bks.xls	97
228	http://ndu.webx86/vaeil/uflgs/spoqh.asm	118
229	http://uvgo.net/vkekp/vla.bmp	78
230	http://mpu.net/ebveo/zdei.asm	195
231	http://uqd.net03/hgiaw/oiy.php	196
232	http://cltnk.local76/uijam/gvlp.php	112
233	http://utw.netc/efbko/mqq.txt	103
234	http://eicg.net43/fdhjj/lvtyn/yqi.xls	51
235	http://loh.net0/veuhy/zrrc.bmp	194
236	http://bejpn.net95/othoy/nxi.php	20
237	http://bfllw.local58/bvoxs/ijpvd.asm	185
238	http://jde.net56/dukjy/dot.bmp	106
239	http://urkx.net/vznqg/jft.bmp	197
240	http://qbayb.neto/fyhnq/kuq.asm	31
241	http://odf.local7/uxdfh/ldui.xls	169
242	http://doe.net6/jgpwu/yfwok.txt	44
243	http://kvsf.net24/lexsq/fdhr.php	121
244	http://ren.web/seuef/bqm.txt	111
245	http://xobtm.net/qltns/npu.ini	50
246	http://qnqk.net7/jwirw/djacp.xls	113
247	http://wbwl.localj/cipqh/fcnwi/pqmc.ini	180
248	http://wig.local43/fivoq/evr.doc	79
249	http://ham.local/wtmxx/led.txt	7
250	http://yup.web/yuaob/zysj.doc	122
251	http://ouqs.web3/tivue/qqyg.pdf	108
252	http://nlxuj.localn/znurd/ixsl.bmp	161
253	http://jbn.netz2/npenw/tto.xls	169
254	http://fclnk.localb/dtgmu/frp.bmp	85
255	http://nkg.webs81/witvb/lkvw.pdf	128
256	http://epzz.net5/lwouq/pzl.ini	68
257	http://zuy.netw/pmhof/hdzx.bmp	97
258	http://niil.local6/kyyly/pncn.txt	133
259	http://zib.netw4/gjamm/fqg.xls	185
260	http://mvd.webq2/bpefs/dbmib.asm	78
261	http://ckk.local4/trlef/tnyr.xls	95
262	http://gqj.net41/vvhms/mwext/hpxgw.xls	135
263	http://wlf.webs1/pgryn/xvdlv/kcx.bmp	93
264	http://jbxn.neti43/mgitw/pbg.ini	164
265	http://qlx.net/gxwjb/xvksd.ini	30
266	http://oqgtd.localm/ozmga/jyr.xls	34
267	http://crfjr.net6/vtdtp/nhmuv.asm	58
268	http://ekrtp.local/ogmno/usx.pdf	198
269	http://osmxc.net58/kjdnq/mqh.php	142
270	http://ljmz.net22/ucpmo/scytr.bmp	41
271	http://aoo.net/rdcpp/zxe.doc	43
272	http://pmgzv.local0/xojbx/jdb.bmp	64
273	http://rdb.nete/buvmh/jeh.bmp	161
274	http://plci.net0/kqaeg/vvi.bmp	43
275	http://korwg.local82/jsnes/wvsa.xls	29
276	http://leg.web63/xqbzn/moko.doc	3
277	http://bwdd.web3/ejdjq/iisj.txt	26
278	http://ijr.net/olfuj/xdlym.bmp	141
279	http://noaqb.net6/zjjnm/vsj.ini	105
280	http://dqem.weby68/posfe/kat.asm	62
281	http://tfn.net35/liedh/wzgj.ini	28
282	http://iuvd.web/nrnud/hmj.php	15
283	http://gmi.local/gywzr/tjw.bmp	63
284	http://dtv.nete9/qkplm/jkx.asm	81
285	http://bpoxk.net/hkpol/xzf.xls	155
286	http://insys.webp/gjbbu/vxkh.asm	49
287	http://hcsbi.net58/snkzo/sdrn.ini	119
288	http://gtx.net/ldxkq/wwqhz/sof.bmp	24
289	http://obbu.locali33/uyfks/zim.xls	163
290	http://cjbv.net/fprob/zqk.asm	100
291	http://ghn.web/yjveq/kukol.bmp	144
292	http://kgk.web53/ismpm/sle.ini	104
293	http://fcnpk.net2/wrwbp/ycu.ini	192
294	http://drdne.netw54/hlhcj/jkprj/bsmtk.php	3
295	http://rtmg.local/qbqsr/tcnf.asm	82
296	http://ewm.local2/gvwfg/sjx.xls	112
297	http://lri.net/ocnnj/iedj.xls	131
298	http://jwcy.locals8/goool/ofdll.xls	148
299	http://cwte.neti/hhnkw/ydc.xls	75
\.


COPY matches (match_id, judge_id) FROM stdin;
0	\N
1	\N
2	\N
3	\N
4	\N
5	\N
6	\N
7	\N
8	\N
9	\N
10	\N
11	\N
12	\N
13	\N
14	\N
15	\N
16	\N
17	\N
18	\N
19	\N
20	\N
21	\N
22	\N
23	\N
24	\N
25	\N
26	\N
27	\N
28	\N
29	\N
30	\N
31	\N
32	\N
33	\N
34	\N
35	\N
36	\N
37	\N
38	\N
39	\N
40	\N
41	\N
42	\N
43	\N
44	\N
45	\N
46	\N
47	\N
48	\N
49	\N
50	\N
51	\N
52	\N
53	\N
54	\N
55	\N
56	\N
57	\N
58	\N
59	\N
60	\N
61	\N
62	\N
63	\N
64	\N
65	\N
66	\N
67	\N
68	\N
69	\N
70	\N
71	\N
72	\N
73	\N
74	\N
75	\N
76	\N
77	\N
78	\N
79	\N
80	\N
81	\N
82	\N
83	\N
84	\N
85	\N
86	\N
87	\N
88	\N
89	\N
90	\N
91	\N
92	\N
93	\N
94	\N
95	\N
96	\N
97	\N
98	\N
99	\N
100	101
101	42
102	90
103	127
104	53
105	89
106	\N
107	131
108	111
109	63
110	56
111	40
112	109
113	133
114	6
115	68
116	129
117	\N
118	9
119	114
120	64
121	149
122	9
123	87
124	85
125	99
126	136
127	36
128	37
129	106
130	50
131	91
132	47
133	3
134	67
135	55
136	69
137	\N
138	101
139	107
140	111
141	139
142	88
143	\N
144	16
145	116
146	45
147	132
148	94
149	139
150	29
151	113
152	23
153	6
154	\N
155	117
156	106
157	16
158	114
159	4
160	47
161	100
162	63
163	\N
164	111
165	\N
166	114
167	48
168	76
169	\N
170	\N
171	4
172	66
173	103
174	107
175	\N
176	43
177	117
178	144
179	149
180	35
181	66
182	19
183	35
184	98
185	85
186	\N
187	37
188	138
189	108
190	\N
191	36
192	26
193	66
194	124
195	90
196	95
197	45
198	9
199	140
\.


COPY programs (program_id, user_id, contest_id, name, submission_time, winns, defeats, ties) FROM stdin;
0	74	\N	Stephen Cisneros	2008-09-24 10:40:23.168	1568779461	1569356619	1569164244
1	10	\N	Abraham Blackburn	2008-11-28 04:05:35.36	189533491	1244735654	1608829472
2	41	\N	Charlotte Byrd	2008-12-02 05:59:00.864	1049914526	1670768664	747989391
3	40	\N	Lynn Miles	2008-10-23 18:23:43.744	991787866	246954374	1926887991
4	20	\N	Erich Ingram	2008-12-02 05:02:41.664	963357709	725777588	1520798866
5	3	\N	Dominick Neal	2008-03-20 17:03:56.928	1498325847	1458175681	755731230
6	33	\N	Cherie White	2008-09-05 18:13:47.776	596500747	1164409526	259278696
7	65	\N	Ebony Daniels	2008-04-14 03:36:03.456	1632003450	1921760003	1825174485
8	97	\N	Arthur Barrera	2008-01-29 16:33:28.32	470823983	32657466	178712982
9	72	\N	Debra Middleton	2008-07-01 10:32:48.512	1976574038	2003419961	1994471299
10	0	\N	Lara Haynes	2008-01-10 01:57:43.488	1902790313	1115391600	1377857827
11	15	\N	Shelley Garrett	2008-11-08 01:22:52.544	476744810	1215774110	1685258903
12	97	\N	Otis Rodgers	2008-09-12 23:13:36.384	1898114752	948140673	1264798710
13	15	\N	Rose Moreno	2008-10-19 13:12:58.752	943745162	2125427094	1015705234
14	94	\N	Roxanne Ellison	2008-10-21 15:33:59.04	843695733	1471443810	546366579
15	55	\N	Kendall Ryan	2008-04-08 01:37:28.704	2136170708	1238206675	821700116
16	95	\N	Emily Matthews	2008-02-25 08:25:20.64	1893008550	462341914	1655058675
17	92	\N	Damien Newman	2008-07-29 07:54:10.432	608057717	1478214759	472334551
18	94	\N	Owen George	2008-12-04 09:31:09.184	532200930	742187239	672191835
19	48	\N	Jim Hoffman	2008-06-02 21:57:40.608	1274669583	1080641881	1861145653
20	39	\N	Dwight Hayes	2008-10-06 14:31:48.608	1099186895	857217862	222046335
21	92	\N	Tonya Combs	2008-09-19 11:30:38.848	165801874	264618724	947507656
22	34	\N	Ramona Hess	2008-01-02 05:41:44.464	86243531	566525399	1122259347
23	15	\N	Randall Morrison	2008-07-14 06:39:24.288	1466876474	672416367	221408542
24	29	\N	Dena Mack	2008-09-26 13:44:25.984	967944047	1440256876	1282819266
25	36	\N	Randal Patterson	2008-05-11 23:30:30.144	761394935	955963236	1606935007
26	50	\N	Derrick Huffman	2008-12-15 23:26:14.528	648204719	937928941	841354200
27	87	\N	Clarissa Dunlap	2008-06-15 02:13:46.752	269367492	407537863	1793136859
28	11	\N	Chester Hutchinson	2008-10-28 10:55:59.488	751065075	43509452	995189208
29	53	\N	Audrey Beltran	2008-02-17 08:20:02.432	1486741939	701721867	963395214
30	78	\N	Marlon Newton	2008-03-10 01:23:26.336	434912119	575854786	1960529694
31	58	\N	Esmeralda Mejia	2008-08-23 22:52:12.288	73244298	1389544522	234949909
32	65	\N	Stephan Park	2008-04-29 09:27:05.088	415104293	657855433	1292766301
33	4	\N	Bobbi Larson	2008-05-30 07:13:05.664	498935744	384112371	422386839
34	15	\N	Sharon O'Neal	2008-10-02 02:36:04.096	82555531	1918029014	1306204541
35	77	\N	Darren Sanford	2008-03-10 04:02:20.288	1468971070	163871347	1314732449
36	37	\N	Tammy Fletcher	2008-04-12 16:12:18.944	1252362684	1881560113	1671827616
37	62	\N	Deanna Hicks	2008-06-14 03:32:25.344	1789824376	305872307	84695136
38	13	\N	Charlotte Lara	2008-03-25 05:19:12.896	1326126777	966952066	1086676970
39	88	\N	Manuel Mcfarland	2008-08-02 20:50:30.144	1397119401	1236623516	2005950026
40	69	\N	Clyde Flowers	2008-10-22 15:09:56.224	588080664	1916557732	757904171
41	45	\N	Abraham Gates	2008-09-26 11:31:04.448	1509241678	1289705008	2078711791
42	81	\N	Tracey Mcgrath	2008-10-04 21:55:22.368	2145807159	359137431	954693986
43	0	\N	Joyce Carlson	2008-06-01 10:25:49.696	1021520387	1927722599	1625655205
44	0	\N	Esmeralda Vincent	2008-10-13 00:36:39.168	196740888	2077020608	734432829
45	86	\N	James Newman	2008-06-19 15:54:51.392	1842367865	978952012	550929392
46	52	\N	Tisha Thompson	2008-11-22 20:51:13.536	1203667209	493931090	730509764
47	2	\N	Milton Hatfield	2008-05-20 10:16:21.376	1059163613	1315678205	1230173320
48	75	\N	Dewayne Glenn	2008-07-10 20:13:33.184	1796074016	423768607	881203743
49	71	\N	Clarissa Mills	2008-10-13 02:44:55.552	392856050	1504929914	418410733
50	14	\N	Freddie Jordan	2008-01-19 19:40:15.488	60786580	1155482805	1506411967
51	27	\N	Shonda Walters	2008-11-12 00:41:24.224	395950842	308393867	1769235290
52	48	\N	Tameka Bowman	2008-05-06 23:25:20.896	1904212747	1550240985	236575787
53	7	\N	Christine Ponce	2008-02-15 11:12:22.272	341700921	1873010671	646746237
54	54	\N	Tami Mc Guire	2008-06-24 19:12:04.736	2026931758	1318700120	1554777322
55	61	\N	Kari Mckee	2008-06-27 18:36:39.936	1244984258	309604552	621397819
56	57	\N	Gabrielle Mooney	2008-11-27 19:24:40.832	16867573	1019554996	685325887
57	96	\N	Bethany Stone	2008-03-07 08:53:49.696	1232725101	1773168907	1593020972
58	20	\N	Douglas Vargas	2008-07-27 19:58:55.616	12631373	283930466	1625153210
59	27	\N	Joe Hart	2008-07-16 01:29:30.496	1666640415	1745068610	287270114
60	62	\N	Camille Cabrera	2008-07-23 04:07:11.232	634893277	1923070370	777850113
61	19	\N	Corey Miller	2008-11-03 12:16:32.768	1381442819	1915320901	1021533658
62	18	\N	Cassie Kaufman	2008-07-28 07:18:49.728	1883762634	1626269238	1712100380
63	0	\N	Hilary Floyd	2008-12-29 01:25:33.312	1276660526	258629612	597973271
64	1	\N	Juanita Munoz	2008-11-24 12:54:35.264	605067664	2099291308	1601216749
65	68	\N	Tami Diaz	2008-07-17 03:38:55.488	31980602	1896678284	1275112369
66	16	\N	Cassie Andrews	2008-03-19 12:16:27.648	716084196	526300036	2021217198
67	48	\N	Terry Barrett	2008-11-13 12:29:28.96	1653567926	1308036464	1423213628
68	17	\N	Alma Ortega	2008-04-28 09:16:13.824	2085866313	394468399	1674095597
69	48	\N	Sheryl Mora	2008-02-16 14:22:06.08	147904908	1308056751	921339470
70	54	\N	Abraham Blackburn	2008-02-24 05:11:11.104	177401065	96437419	839253162
71	12	\N	Mathew Werner	2008-07-04 03:31:26.976	1791246849	777400355	1115349208
72	98	\N	Jayson Townsend	2008-09-06 05:30:29.376	2121826991	941017132	1334620418
73	13	\N	Alvin Pearson	2008-06-14 14:12:12.032	1660330797	1131133799	591704905
74	24	\N	Esther Nunez	2008-12-08 17:44:14.592	408947759	2075273580	1519831650
75	20	\N	Jorge George	2008-05-18 03:07:20.064	59518391	2135149003	11616378
76	39	\N	Elisa Davenport	2008-07-24 15:37:41.248	132337449	1327402723	929047632
77	85	\N	Mary Rush	2008-07-25 04:34:33.728	240102418	1943876046	2091779386
78	21	\N	Matt Ortega	2008-04-17 00:54:15.936	1739307635	1771265351	1044784865
79	40	\N	Jennifer Rivas	2008-10-30 10:27:17.12	355163464	41810506	862089385
80	43	\N	Alicia Hoover	2008-10-24 17:47:13.408	1733382921	1521197201	876097871
81	95	\N	Carrie Chandler	2008-07-26 04:35:09.568	1638159422	889271392	423072853
82	23	\N	Bradford Wood	2008-05-02 19:01:34.976	1785743577	781407860	1116186411
83	52	\N	Arturo Nicholson	2008-06-25 07:14:01.984	775423351	1611770508	1332988112
84	89	\N	Tabitha Patel	2008-09-21 06:05:45.984	257288376	129354713	887827161
85	38	\N	Abigail Shelton	2008-05-31 15:03:36.32	579620558	773105821	2140266477
86	3	\N	Roberto Walter	2008-08-13 14:57:43.04	314002046	362225385	1777806703
87	27	\N	Maribel Gallagher	2008-02-25 07:09:10.016	1977409623	2084191664	2048597661
88	59	\N	Nathaniel Oliver	2008-09-19 09:25:18.592	1148170340	2144475662	1812373867
89	11	\N	Maureen Grant	2008-11-03 19:58:32.448	915772016	1910274706	147118024
90	65	\N	Dawn Nielsen	2008-01-21 22:44:02.176	954873289	1565832406	1362179388
91	22	\N	Earl Spence	2008-09-01 02:35:58.976	1094177424	2083343531	1753621474
92	11	\N	David Carson	2008-06-13 20:44:53.248	1262093518	772322228	219751443
93	101	\N	Andre Rich	2008-09-21 17:36:25.216	2082598916	759872479	484953430
94	65	\N	Ricardo Williamson	2008-07-14 03:06:57.536	1855843670	624619999	1035027900
95	58	\N	Ernesto Mahoney	2008-08-03 21:09:48.288	1949414657	407594854	1637362681
96	100	\N	Joe Mc Clure	2008-08-16 04:31:35.552	1189075076	879430696	1698473382
97	97	\N	Kristy Johns	2008-01-02 13:48:56.48	2083017241	1473333658	1676561508
98	20	\N	Lakesha Velasquez	2008-09-09 04:11:23.136	726544682	1372994624	441683449
99	26	\N	Maureen Osborne	2008-12-28 15:13:38.816	617367923	1347346315	388192302
100	37	\N	Mandi Osborne	2008-11-12 13:12:34.56	2006252469	2133546684	659459493
101	36	\N	Dwight Arnold	2008-04-22 10:37:00.416	1051108177	176880293	1899945374
102	46	\N	Latanya Delacruz	2008-07-03 13:12:16.768	438171773	1082326755	867608417
103	88	\N	Trevor Downs	2008-04-30 02:58:47.04	2055427126	808557262	1940008433
104	33	\N	Clinton York	2008-07-01 11:18:25.664	1551550655	1494630853	81948377
105	29	\N	Bill Perry	2008-11-10 08:16:13.824	405888837	1065637335	845721158
106	44	\N	Ray Huff	2008-09-24 06:33:21.792	1028764228	1801382249	828015026
107	5	\N	Guy Good	2008-05-08 05:46:24.768	2046681318	312667301	890671984
108	50	\N	Bernard Romero	2008-11-01 05:15:18.4	1677015469	544209968	1637639695
109	18	\N	Clifton Ayers	2008-11-25 02:38:50.368	1202571386	982306854	1055728375
110	101	\N	Shelly Davidson	2008-06-08 02:05:41.376	500723504	1804204179	653882727
111	63	\N	Sophia Garrison	2008-06-22 09:42:11.328	1475128607	805730596	1028863277
112	63	\N	Vivian Floyd	2008-02-29 20:06:53.696	1360356850	978682015	390079046
113	27	\N	Jolene Wilkins	2008-04-27 20:48:47.744	803456927	1092195188	280121197
114	91	\N	Misti Compton	2008-08-28 20:10:17.6	1389949477	417875492	741900185
115	34	\N	Kathy Goodwin	2008-05-31 20:16:11.904	210942682	1326784334	1670665010
116	50	\N	Ross Sawyer	2008-05-19 14:34:17.088	1281255040	635644487	1566675876
117	26	\N	Aisha Acosta	2008-08-17 10:07:53.472	1630827484	249744345	710105391
118	49	\N	Erica Bennett	2008-06-15 13:06:26.56	1456974401	1538630125	795583690
119	11	\N	Candace Griffin	2008-01-13 23:21:29.088	873794932	374925931	1257043470
120	42	\N	Chandra Duran	2008-10-30 09:19:13.408	969516179	394367355	2017739362
121	13	\N	Naomi Gregory	2008-12-23 00:32:26.624	73547950	553942723	1109639014
122	30	\N	Kenny Sparks	2008-01-22 18:31:46.176	1571460025	492564813	852196550
123	54	\N	Nichole Delgado	2008-06-21 13:45:46.88	1313770295	1272778019	1286442132
124	72	\N	Alisa Owens	2008-11-02 10:12:08.832	1703906673	1339666081	1461079633
125	49	\N	Jackie David	2008-02-12 19:55:13.792	133682829	25946360	777686378
126	97	\N	Randal Melton	2008-06-08 18:58:17.344	806355089	589125580	1377363288
127	1	\N	Bernard Delgado	2008-02-03 09:50:01.472	730139119	1116398572	1703473282
128	20	\N	Lester Avery	2008-07-07 01:15:29.792	1691988182	1896958026	1112806873
129	35	\N	Harold Copeland	2008-06-22 15:02:21.568	914002168	830104666	142242618
130	17	\N	Maria Lyons	2008-04-21 10:14:44.096	2002602725	2118330139	1363926463
131	24	\N	Toby Mueller	2008-09-06 11:20:23.424	1107067132	1254948388	1205654625
132	54	\N	Andres Baird	2008-08-21 07:17:09.376	656622992	1745921528	666994134
133	81	\N	Helen Hudson	2008-10-16 05:48:34.816	339060348	661051115	1269548763
134	55	\N	Shirley Woodard	2008-09-19 05:35:06.88	1566207445	581080963	193628607
135	10	\N	Larry Villegas	2008-04-20 01:35:04.32	1258644918	909193643	1025677380
136	58	\N	Misti Santos	2008-05-17 10:48:55.168	682432178	380800135	1912999914
137	51	\N	Angelique Burton	2008-05-15 18:25:13.856	269154194	352757941	324889994
138	79	\N	Karl Gates	2008-04-01 03:48:05.376	1912571404	493373591	1682267411
139	52	\N	Terrance Hayden	2008-05-30 06:25:09.248	1556295071	1541583933	1546487624
140	69	\N	Stacey Shaffer	2008-09-26 16:14:41.28	2114574685	1189053317	781732557
141	36	\N	Randal Moss	2008-04-24 22:13:28.832	861308392	1174880699	354528736
142	20	\N	Kristy Preston	2008-09-04 17:31:27.232	1785281507	1396410408	1526034140
143	44	\N	Marty Ellison	2008-05-28 23:49:42.144	1082653308	234175919	1232829598
144	25	\N	Peter Barker	2008-10-21 14:04:18.944	208136528	229990489	222705825
145	69	\N	Marco Thomas	2008-10-15 19:23:17.504	294753279	1858146459	2052843292
146	78	\N	Christie Mathews	2008-01-09 21:49:40.736	33100910	501900309	345633843
147	17	\N	Marcella Mc Cormick	2008-05-11 16:05:04.768	71462165	362427158	981266688
148	22	\N	Mario Brady	2008-06-13 09:42:32.832	836595480	687610555	21444293
149	69	\N	Kristy Diaz	2008-10-09 18:45:56.992	1090677734	695015670	1542730897
150	201	24	Kris Barnett	2008-01-07 01:29:01.024	272018009	384794972	347202641
151	189	\N	Randolph Roman	2008-04-08 23:09:26.528	941269124	377018335	1280929813
152	163	43	Dominic Kemp	2008-03-31 11:43:40.672	1687940074	138995989	2086966459
153	149	12	Tina Lynn	2008-11-27 16:58:49.728	577097393	749078778	1407579521
154	170	51	Rebekah Carson	2008-01-16 17:07:41.056	1135005546	1430437147	2047787829
155	18	22	Patrice Brandt	2008-03-15 08:35:55.52	1878740501	662866155	1783985497
156	32	14	Katrina Pham	2008-02-24 05:58:56.256	1737502868	508601604	1634063262
157	88	67	Hector Merritt	2008-10-31 17:18:03.776	773786613	1981667472	1579040519
158	129	75	Darrin Rogers	2008-10-13 18:30:23.104	1668126211	1644532797	1652397257
159	64	7	Jay Avila	2008-04-09 02:05:38.304	2070157127	29097604	2141106554
160	1	62	Pete Goodman	2008-02-09 08:52:09.088	512997633	1175091036	1670221117
161	132	34	Brendan Barrera	2008-05-22 19:53:20.768	1645985979	949022405	465515693
162	128	75	Randal Friedman	2008-12-24 15:35:58.208	2133869010	683430912	451082417
163	75	\N	Bridgette Cochran	2008-04-24 02:09:34.848	1417804299	1536464460	65255319
164	41	\N	Devin Werner	2008-09-04 07:58:52.032	1274311514	2053360619	362021798
165	186	48	Jenifer Underwood	2008-01-28 17:51:08.544	1144536693	1411371167	2038254235
166	180	0	Rose Hendricks	2008-06-28 17:05:24.608	239870348	753210058	2013752576
167	60	0	Zachary Irwin	2008-08-19 18:16:18.304	170585113	1636083226	431755962
168	143	2	Kari Mendoza	2008-10-07 14:58:18.88	347597607	1449561780	1798068271
169	164	\N	Marci Moon	2008-10-09 18:00:57.728	965843776	2086164223	996896192
170	146	\N	Jay Lowe	2008-08-19 19:40:12.288	756502529	1474129633	519092705
171	86	74	Anthony Klein	2008-12-06 22:19:54.24	1593416988	986436969	1904591525
172	103	93	Alison Parks	2008-06-27 07:08:02.56	278847628	1322430281	1690397290
173	11	15	Gilbert Roman	2008-09-18 08:29:49.568	869427241	1868000592	103487044
174	202	39	Alana Cline	2008-12-09 01:55:35.552	1753242956	1059592260	574981308
175	27	\N	Paul Reyes	2008-05-03 18:33:55.072	40264503	726171830	1929191819
176	30	15	Danny Hardin	2008-09-09 07:51:30.688	1720599562	1431039461	95903730
177	121	49	Cornelius Ibarra	2008-03-31 05:13:12.064	1780945144	1166825227	655703973
178	144	\N	Casey Armstrong	2008-03-31 14:48:21.376	1577181223	1413685320	752356083
179	194	1	Jesse David	2008-11-18 14:28:47.744	660229475	696328915	1400123662
180	167	\N	Jana Burns	2008-07-16 11:47:58.208	94543042	408743640	304010086
181	103	30	Paul Bishop	2008-02-06 16:03:07.392	2082923177	1774616292	445729489
182	24	41	Tamara Rodgers	2008-08-30 17:16:25.088	1602154290	73404748	2014643683
183	132	95	Jarrod Garrett	2008-10-20 01:37:35.872	1314480027	706266958	909004648
184	125	49	Tamara House	2008-11-05 06:38:43.712	1859310884	1521522453	1634118596
185	143	3	Nick Olsen	2008-07-09 11:55:41.056	2040445994	894880840	560908019
186	97	79	Noah Trevino	2008-02-05 19:07:03.808	1211990505	1735315474	129218053
187	53	37	Regina Mc Knight	2008-06-04 07:55:41.568	1610675372	1879541011	1074091260
188	19	26	Kyle Long	2008-09-03 09:21:53.792	984051841	1728229585	1480170327
189	12	98	Jon Boyd	2008-10-22 18:17:38.176	1523213314	2083357170	464986808
190	125	\N	Roland Frank	2008-05-02 16:37:15.008	1104394882	990659361	312743298
191	120	64	Karen Decker	2008-06-06 21:56:09.472	792152797	1661993072	656218410
192	5	95	Marshall Abbott	2008-03-04 01:34:07.872	304818157	1969805056	1414809455
193	56	56	Lucas Irwin	2008-03-05 00:36:00.128	2032765117	150840330	1493976454
194	120	15	Morgan Parker	2008-11-16 09:01:54.048	1568478848	117818211	601371799
195	107	81	Frank Williamson	2008-06-24 19:27:03.808	688469594	1141568785	990535732
196	14	7	Krista Bryan	2008-10-09 14:14:31.296	836366291	1773447888	29431570
197	51	42	Judy Haley	2008-07-24 16:01:22.56	297625356	563013318	474550685
198	14	\N	Shawn Kirby	2008-09-25 17:33:20.896	535595160	1849840768	1411758888
199	56	35	Stephanie Lewis	2008-07-10 01:35:54.496	1523776763	281135319	695349123
200	137	8	Seth Chung	2008-08-15 04:52:19.712	1089692921	701517348	830909206
201	130	\N	Allen Frank	2008-06-07 20:45:46.496	1176246873	663168010	834194277
202	56	15	Ricky Schmidt	2008-09-08 12:26:52.928	1800435973	1476568243	152868377
203	71	31	Gilbert Hayden	2008-10-03 17:05:52.256	233920786	120661389	1590070286
204	122	3	Randy Conley	2008-04-21 07:33:38.56	1328914969	1712728473	1584790638
205	30	49	Bryce Bonilla	2008-12-21 18:15:04.96	1919324909	1242847804	752512312
206	172	80	Saul Fry	2008-06-06 12:24:08.064	350072849	1250481470	1666173146
207	74	\N	Shelia Hebert	2008-08-22 01:47:14.432	47686886	2049743793	1382391469
208	71	83	Helen Ellison	2008-05-19 05:48:22.528	648379535	214235030	358949886
209	114	65	Daniel Hinton	2008-05-20 08:36:59.648	47068644	16790029	742710772
210	121	26	Latisha Jenkins	2008-04-16 16:46:22.848	1758864921	22612690	2033019188
211	48	7	Luke Lawson	2008-09-06 23:14:31.68	1409822200	259804126	1358971355
212	58	10	Bethany Haas	2008-12-07 05:27:19.296	1319709341	1154554118	1925433741
213	3	95	Tomas Crosby	2008-11-07 19:20:37.12	1006052339	836111616	1608586427
214	179	87	Kristine Dodson	2008-09-07 08:25:44.832	1772141909	2120467955	572703497
215	168	88	Marla Maldonado	2008-11-10 02:50:23.616	1007398897	162372047	1875703439
216	150	25	Sabrina Barry	2008-04-09 12:04:49.92	559566608	863252912	1477852005
217	109	23	Monte Costa	2008-06-13 11:58:21.824	639903906	1810144210	2135891970
218	85	5	Margarita Buck	2008-07-11 11:38:20.672	874963857	243991185	1885971195
219	130	33	Heidi Ferguson	2008-04-13 03:08:19.456	1613035662	1844438708	1051476477
220	76	78	Bennie Becker	2008-10-08 10:22:56.64	731148349	2063338526	1619275123
221	199	81	Katherine Nielsen	2008-11-16 21:56:33.408	2075742840	402914338	1676351721
222	54	44	Jarrod Hull	2008-08-01 10:07:28.896	625810049	1997742329	108775783
223	176	\N	Roy Barnett	2008-09-17 00:40:55.168	1545450041	678843015	251884152
224	147	50	Marla Johnston	2008-11-28 03:57:50.464	1004852210	1350157792	1950883824
225	161	40	Scottie Craig	2008-05-19 16:33:18.464	541208740	1294557034	327613043
226	181	86	Roger Zuniga	2008-10-02 09:07:01.888	570124717	1118868802	935954118
227	171	3	Clint Hoffman	2008-03-13 17:09:26.144	438916943	1207404427	951241922
228	8	99	Phillip Vincent	2008-06-30 17:01:31.136	69256552	957498535	661417906
229	88	28	Kenny Dillon	2008-06-25 08:01:20.512	1036565448	854669462	915301447
230	92	29	Kari Casey	2008-12-09 08:14:03.776	1019918131	1778606345	1525710274
231	67	67	Rogelio Floyd	2008-09-10 14:22:54.08	75189795	50629441	774644108
232	176	11	Dale Schmitt	2008-02-29 16:32:37.376	84361835	1993404761	1357057098
233	59	97	Anitra Gutierrez	2008-01-30 02:27:17.632	854189147	2003366614	904479565
234	184	66	Sandy Bryant	2008-07-18 12:38:19.008	1644956033	1550930426	1582272306
235	16	30	Sean Rodgers	2008-03-13 06:15:37.216	1422732127	2014288351	1817102943
236	12	19	Joann Ferrell	2008-01-09 22:53:47.712	586354816	1744682086	2074400889
237	113	7	Perry Moreno	2008-03-10 03:26:10.432	2092222918	1568747406	311583468
238	155	87	Lisa Murray	2008-12-30 13:57:25.632	880717955	997198533	242543781
239	52	73	Edith Carson	2008-07-14 23:16:45.824	816979262	2065434474	1649282726
240	86	\N	Ivan Brooks	2008-09-11 14:29:16.032	1044527534	454519592	2082844682
241	121	45	Orlando Abbott	2008-05-06 09:47:44.128	1006738128	1303481489	1920394885
242	204	68	Melisa Rice	2008-10-10 20:50:08.64	1521112717	1802490886	277042377
243	198	\N	Eugene Odom	2008-04-30 21:10:29.248	1614053356	1244670740	1367798258
244	12	58	Natalie Valdez	2008-07-25 13:49:28.064	2042098394	481504092	285874278
245	128	16	Ronda Bush	2008-01-03 15:50:28.192	1586305814	444002903	1540598422
246	119	69	Lora Macias	2008-08-09 14:54:48.96	645003694	1924674408	1498117493
247	112	80	Vernon Ochoa	2008-03-14 21:16:50.56	1054512969	734154891	1556768778
248	115	24	Gerard Holmes	2008-09-26 17:58:47.68	2092820484	195194561	111908653
249	110	6	Byron Ramos	2008-01-19 10:26:25.664	1355142132	1450535584	702909873
250	134	53	Jerome Benjamin	2008-09-17 16:55:03.04	1041550626	2007452854	1685485413
251	40	51	Rachael Rasmussen	2008-11-11 19:06:14.912	231699318	1215935175	172028674
252	185	12	Todd Maddox	2008-01-04 02:06:22.416	1997140493	1256198384	1503179097
253	204	29	Casey Cooper	2008-02-24 17:53:12.192	1842866873	707165782	1801560684
254	49	57	Bennie Ross	2008-01-25 09:11:08.928	1064436438	216336742	499036641
255	143	31	Allen Hanson	2008-10-11 00:32:21.12	143457009	62684745	1521264598
256	49	78	Latasha Bush	2008-02-26 00:19:21.728	1993159605	937804318	1289589403
257	179	78	Roger Henry	2008-04-06 16:49:38.432	673488954	186457056	348801000
258	143	3	Carrie Madden	2008-09-30 01:12:55.168	1006926805	1530595778	1356039475
259	173	\N	Natalie Coffey	2008-10-13 08:42:50.88	201596599	748935926	1282317356
260	67	54	Forrest Madden	2008-04-13 22:10:21.44	1110548235	522894315	1434606827
261	158	63	Brett Woodward	2008-01-30 06:05:12.576	485652556	252183853	1045834647
262	123	81	Floyd Bennett	2008-07-16 02:56:31.872	1705730611	501374074	186998381
263	43	79	Clinton Farley	2008-12-18 12:53:35.872	1121989923	453967508	676641657
264	63	57	Erick Mc Carthy	2008-10-22 20:02:27.584	1485496980	1068285443	491528073
265	179	\N	Ivan Lane	2008-08-09 16:47:08.928	1925384376	1354483347	113127904
266	4	92	Krystal Crosby	2008-11-16 01:54:06.464	1374988889	1329069781	628548279
267	169	10	Dominic Wong	2008-05-17 09:31:15.968	539131179	716064550	1372914685
268	91	76	Jennifer Payne	2008-11-28 23:11:20.576	121618041	159666676	862811659
269	52	59	Tabatha White	2008-10-26 21:47:48.096	39547005	2108503162	703023206
270	74	85	Dexter Payne	2008-07-13 16:51:35.168	1530821567	1357456730	699417105
271	117	18	Lea Cooke	2008-12-08 02:04:24.96	2079508931	134176076	66792500
272	93	52	Eileen Duke	2008-08-09 05:08:12.032	437305796	1655002925	1249103882
273	26	37	Brandi Yang	2008-06-15 15:27:40.16	1596749541	644182445	1677532682
274	35	8	Marc Casey	2008-02-20 14:55:47.2	1554285174	1271417814	2081534837
275	8	86	Marisa Stanton	2008-12-08 14:41:27.552	1696748800	1767071183	1743630378
276	137	\N	Tomas Garner	2008-05-03 09:06:29.12	503410780	537712579	526278635
277	167	57	Nancy Summers	2008-07-07 14:14:12.864	1550275537	1419279851	1462945101
278	145	3	Meredith Salinas	2008-09-21 10:45:43.68	1330522247	2023493069	360847030
279	117	64	Erik Nicholson	2008-08-17 10:49:21.792	746437471	404229256	1234126533
280	150	64	Darrin Pena	2008-03-04 19:28:55.808	1908985556	146613432	1449898657
281	187	22	Maurice Kline	2008-09-08 16:14:08.512	682368370	900156394	1543388279
282	189	12	Jess Marks	2008-10-13 15:36:38.784	760395558	2086192746	928432467
283	147	29	Seth Cooke	2008-02-18 23:40:14.464	1437277926	482152111	1516355276
284	119	40	Leah Frazier	2008-10-09 05:15:02.656	1984846030	587807116	1053486765
285	130	16	Emily Ochoa	2008-07-05 03:31:15.712	182378595	1484152758	1766055920
286	130	48	Preston Callahan	2008-01-15 07:35:19.936	1879597023	2136340733	1334931593
287	1	86	Dewayne Roy	2008-06-02 21:42:52.8	1945203370	1907240072	1919894516
288	22	11	James Ferrell	2008-02-06 17:09:07.456	492330483	1003514197	117291733
289	111	82	Marci Mckinney	2008-04-10 17:47:10.336	793796372	295826536	461816492
290	157	34	Kathleen Hopkins	2008-01-18 01:16:03.968	87240064	674267419	1194419516
291	170	85	Leah Cook	2008-12-13 13:55:38.112	132509192	1476107345	312413390
292	61	64	Jeffery Wilkinson	2008-02-02 06:34:55.36	1412482815	174805591	2019020420
293	151	17	Clyde Leon	2008-07-11 13:09:53.408	1292335155	288926598	1339224020
294	180	23	Bruce Lamb	2008-09-29 18:01:28.448	807984735	673876726	718579375
295	74	98	Dylan Walton	2008-04-28 19:36:59.776	899458965	1114198950	326791083
296	128	91	Jarrod Schneider	2008-09-13 03:50:56.384	1537557411	187374267	1353263187
297	113	40	Allan Matthews	2008-06-13 21:13:07.968	932722490	289784390	1219924973
298	189	35	Kirk Horne	2008-02-11 09:48:21.376	2040439792	268063587	143027784
299	179	\N	Carla Allen	2008-05-19 09:30:22.72	563697796	1237213927	1728536433
\.


COPY programs_matches (match_id, score, program_id, result) FROM stdin;
73	1569548962	219	\N
83	\N	\N	Tony bought new car. Anne bought new car. Tony bought new car. Tony bought new car. Tony bought new car. 
24	714504437	149	Tony bought new car. John has free time. Tony has free time. Tony has free time. Anne has free time. 
60	1526301727	\N	John is shopping. Anne is shopping. John is shopping. Tony is shopping. John is walking. 
63	2069540292	257	Anne bought new car. Anne bought new car. John bought new car. Anne has free time. Tony has free time. 
30	1189861246	296	Anne bought new car. John bought new car. Tony bought new car. John has free time. John is shopping. 
55	2012368591	68	John bought new car. John bought new car. John is shopping. John has free time. Tony has free time. 
11	1962720330	22	Anne is walking. Tony is walking. Tony is shopping. John bought new car. John is walking. 
59	631482668	222	John has free time. Tony bought new car. Anne bought new car. Anne has free time. John is walking. 
78	1856420131	284	Anne bought new car. John has free time. 
33	1654713202	9	John is shopping. Anne has free time. Anne has free time. 
25	90834981	207	Tony is walking. Tony is shopping. Anne is walking. John has free time. John has free time. 
38	812182708	255	John is walking. John is walking. Anne bought new car. Tony bought new car. 
61	1888202837	17	John bought new car. Tony is shopping. Tony bought new car. John bought new car. Tony bought new car. 
98	\N	122	Tony bought new car. Tony is walking. Tony bought new car. Tony has free time. 
98	\N	105	Anne bought new car. Tony is walking. Anne is shopping. Tony has free time. Tony has free time. 
87	1597694518	298	Anne is walking. Anne has free time. 
2	\N	168	John bought new car. Anne is walking. 
94	1169422547	142	Tony bought new car. Anne is shopping. John bought new car. Tony bought new car. Anne bought new car. 
17	2050698214	14	John bought new car. Tony is shopping. Anne bought new car. Tony bought new car. 
27	1338663589	174	Anne bought new car. Anne is walking. 
31	2788672	255	Tony has free time. John has free time. Anne is shopping. John has free time. Anne has free time. 
12	345837903	68	\N
36	1046930545	45	Anne bought new car. John is walking. Tony has free time. Tony has free time. Tony has free time. 
14	2091292611	289	Anne is walking. Anne is shopping. Anne bought new car. John has free time. John has free time. 
70	442974092	69	\N
2	467297005	\N	John is walking. Tony is walking. Tony has free time. Tony has free time. 
0	2039765543	182	Tony has free time. John bought new car. John has free time. 
54	\N	74	Anne has free time. John is shopping. John bought new car. John bought new car. Anne has free time. 
0	582624691	\N	John has free time. John is shopping. John is walking. Tony is shopping. Tony bought new car. 
96	1406974599	206	Anne is walking. John bought new car. Tony is shopping. Anne has free time. John has free time. 
56	2130050612	\N	Tony bought new car. Anne is walking. Tony bought new car. John bought new car. John bought new car. 
10	2113817118	37	Tony is walking. Anne bought new car. John bought new car. Tony bought new car. Tony has free time. 
25	569416652	32	Anne bought new car. Anne is shopping. John is shopping. Anne bought new car. John is shopping. 
62	995036092	9	Tony bought new car. John bought new car. John bought new car. John has free time. Anne has free time. 
28	\N	279	Anne bought new car. Tony has free time. Tony has free time. Anne has free time. Anne bought new car. 
41	1082622885	80	Anne bought new car. John is shopping. John bought new car. John is walking. Tony has free time. 
1	1367668180	\N	Anne bought new car. John has free time. John is shopping. Tony bought new car. Anne has free time. 
77	1953316842	68	John bought new car. Anne is shopping. Tony has free time. Tony has free time. Tony has free time. 
97	570778735	42	Anne has free time. John is walking. Tony is shopping. Tony has free time. Anne has free time. 
99	920807012	15	Tony has free time. Anne is shopping. John has free time. John has free time. Tony bought new car. 
68	1172718070	39	Tony bought new car. Anne is shopping. John bought new car. Anne bought new car. John has free time. 
48	2066769600	17	Anne bought new car. Anne bought new car. 
86	770935013	138	Tony bought new car. Tony is shopping. Tony is walking. Tony has free time. John is walking. 
74	1178866553	140	John has free time. Anne is walking. 
98	235881875	75	Anne is shopping. Anne bought new car. Anne bought new car. John is shopping. John is walking. 
73	1694774032	236	Tony bought new car. Anne bought new car. John has free time. Tony has free time. John is shopping. 
57	773212006	231	Anne has free time. Tony has free time. 
81	547413878	103	John is walking. John bought new car. 
1	374459079	217	John bought new car. John bought new car. Tony bought new car. 
83	2111198013	265	Anne is walking. Tony is walking. Tony bought new car. Anne has free time. John is walking. 
41	\N	126	Tony bought new car. Anne is walking. John is shopping. John has free time. John bought new car. 
52	350262158	50	John is shopping. Tony bought new car. Anne bought new car. Anne has free time. 
72	688879328	46	Anne is shopping. Anne is shopping. John has free time. 
89	1355469963	52	Tony bought new car. Tony bought new car. Anne is walking. Anne has free time. Anne has free time. 
98	1955426043	169	Tony is walking. Tony is walking. John bought new car. 
13	1518365913	29	John bought new car. John has free time. Tony bought new car. 
54	\N	48	Anne is walking. Anne has free time. Tony has free time. John bought new car. Anne has free time. 
8	2119785699	190	Anne bought new car. Tony bought new car. Tony is walking. John is walking. 
18	1281143222	158	Anne has free time. Anne is shopping. John has free time. Tony bought new car. 
97	1769485455	8	Anne bought new car. John bought new car. John has free time. Tony has free time. Tony bought new car. 
30	1405132211	167	John bought new car. Anne is walking. Anne bought new car. Tony is walking. Tony has free time. 
72	\N	179	John has free time. Anne is walking. Tony bought new car. John bought new car. 
67	136256212	146	Anne bought new car. Anne has free time. 
71	60388041	271	Tony is shopping. Anne is walking. 
6	1129128418	12	Anne is shopping. Anne bought new car. Tony bought new car. Anne is walking. Anne bought new car. 
14	159016713	138	\N
35	1379505608	118	Tony bought new car. Anne has free time. 
46	1297045092	240	Anne has free time. John has free time. 
27	787635403	98	John bought new car. Tony is walking. Anne has free time. John bought new car. Tony has free time. 
0	1285553479	198	John is walking. Tony is shopping. Anne is shopping. Anne is walking. Tony is walking. 
66	38660988	219	Anne has free time. Anne bought new car. 
7	1598263889	211	John is walking. Anne is shopping. Tony has free time. Anne has free time. John has free time. 
68	1378333803	159	Anne bought new car. Tony has free time. Tony is shopping. John bought new car. Tony has free time. 
34	582597979	0	Anne is walking. John bought new car. Tony bought new car. John is shopping. John is walking. 
81	1698340156	284	Anne bought new car. John is walking. Tony is shopping. Tony has free time. John bought new car. 
33	93850830	108	\N
60	727256699	188	Anne bought new car. Anne is walking. John bought new car. John has free time. Anne is walking. 
85	\N	\N	Anne bought new car. Anne is shopping. John is walking. Anne has free time. Tony is shopping. 
93	1197986616	147	Anne is shopping. John is walking. Tony has free time. Tony has free time. John has free time. 
97	918478931	272	Anne is shopping. Tony bought new car. John bought new car. John is shopping. John bought new car. 
74	2078719841	84	John has free time. John is walking. Tony has free time. Tony is walking. Tony is walking. 
86	1259113969	222	Tony is shopping. Anne is shopping. John bought new car. Anne has free time. John has free time. 
53	1166983637	80	Anne is shopping. John bought new car. Anne is walking. John is shopping. Tony is shopping. 
61	1948371519	194	Anne bought new car. Anne is walking. Anne bought new car. Tony has free time. Tony is shopping. 
4	1522610567	244	Anne has free time. Tony is walking. Anne bought new car. 
17	1517966715	159	Anne bought new car. John is shopping. Tony is shopping. Tony has free time. Tony has free time. 
31	1670123123	11	Anne bought new car. Tony has free time. John is shopping. John bought new car. John is shopping. 
21	\N	185	Tony bought new car. Anne is shopping. 
20	1788647214	\N	Anne has free time. Anne bought new car. Tony bought new car. Anne bought new car. Anne is walking. 
85	792709906	32	John is shopping. John is walking. John bought new car. Tony has free time. John bought new car. 
8	\N	175	\N
0	1451963418	116	Anne has free time. Tony is walking. Tony bought new car. Anne has free time. John bought new car. 
41	1240015351	259	Anne bought new car. John is shopping. John has free time. John bought new car. John has free time. 
69	1995232662	157	John has free time. Anne is walking. Anne is shopping. Anne has free time. 
25	\N	269	Tony has free time. John is shopping. John bought new car. 
77	237275153	265	Anne is walking. Tony is shopping. Tony has free time. Tony is walking. John is shopping. 
94	1794265609	92	Anne is walking. Anne has free time. Tony bought new car. 
71	1891071243	112	Tony is shopping. Tony is walking. Tony bought new car. John bought new car. Tony bought new car. 
68	1191947997	\N	Anne bought new car. John bought new car. Anne is shopping. John bought new car. Tony has free time. 
21	422387272	221	\N
4	518264197	261	Anne is shopping. Tony has free time. John bought new car. John has free time. Tony has free time. 
78	90578034	271	John is shopping. Anne is walking. 
39	107082233	\N	John is walking. Anne is shopping. John is walking. 
94	1530623625	98	Anne has free time. Anne is walking. 
76	1712753624	271	Anne bought new car. Tony has free time. Anne has free time. 
1	64572333	195	John bought new car. Tony bought new car. 
61	1847903796	20	John bought new car. Anne is walking. John is walking. Anne bought new car. John has free time. 
39	915779471	65	Anne has free time. Anne has free time. 
61	134833304	\N	Tony bought new car. Tony bought new car. Anne bought new car. Anne bought new car. Tony bought new car. 
85	784488098	\N	Tony is walking. John is shopping. 
2	1398322506	\N	Tony bought new car. Tony bought new car. John bought new car. John has free time. John is shopping. 
78	1101055289	165	John has free time. Anne is shopping. 
92	\N	6	John is shopping. Tony is walking. Tony is walking. Anne is shopping. John bought new car. 
99	68282414	177	John is walking. Tony is walking. 
31	575306262	293	John bought new car. Anne is shopping. Tony bought new car. Anne bought new car. Anne has free time. 
88	1544203275	168	Anne bought new car. Anne is shopping. John has free time. John has free time. John has free time. 
47	59971369	77	Anne has free time. Anne has free time. Anne bought new car. John bought new car. Anne bought new car. 
17	1677946513	30	\N
14	2074029215	159	John bought new car. Tony is walking. John bought new car. Tony bought new car. John bought new car. 
96	513477162	47	Anne is walking. Anne bought new car. John is shopping. John is walking. 
19	1608551907	66	Anne has free time. Anne is shopping. Tony bought new car. John bought new car. 
72	503529269	167	Anne bought new car. Anne bought new car. John has free time. 
90	366920786	170	Anne bought new car. John is walking. John bought new car. Tony is walking. 
67	1193929249	\N	Anne has free time. Anne is walking. Anne bought new car. Tony has free time. Anne bought new car. 
28	808369373	183	Anne has free time. John is walking. John bought new car. 
80	1554243885	241	John is shopping. Anne is walking. 
65	96645864	127	Anne bought new car. John is shopping. 
44	377317074	103	John has free time. Anne has free time. Tony bought new car. Tony is shopping. John bought new car. 
32	975106266	200	Anne has free time. John is walking. John has free time. Anne bought new car. Tony has free time. 
46	1292601838	117	\N
9	1044873193	202	Anne is walking. Anne has free time. 
85	140439033	246	John is shopping. John bought new car. Tony bought new car. Anne has free time. John has free time. 
47	719555304	52	John bought new car. Anne is walking. 
50	492141744	297	Anne bought new car. Tony has free time. Tony bought new car. 
71	875260523	61	Anne bought new car. Anne bought new car. John has free time. Tony has free time. John is shopping. 
99	1840666308	97	Anne bought new car. Anne has free time. 
56	\N	64	Anne is shopping. Tony is walking. John bought new car. 
96	\N	4	Tony has free time. Anne bought new car. Anne is walking. John is shopping. Anne is shopping. 
56	893728405	212	Tony has free time. Tony is walking. John bought new car. John has free time. 
35	159689840	93	Tony is shopping. Tony is shopping. John bought new car. 
37	2127610725	22	Tony has free time. Anne bought new car. Anne has free time. John has free time. Anne has free time. 
4	63636837	122	Anne bought new car. Anne bought new car. 
78	1997892872	74	Anne has free time. John is walking. John bought new car. Tony bought new car. John has free time. 
7	248653787	36	Anne has free time. Tony is walking. Tony bought new car. 
0	209240779	150	Anne bought new car. Anne is walking. Tony bought new car. Tony has free time. Tony bought new car. 
2	489917260	157	Anne has free time. Anne is shopping. John bought new car. Anne is shopping. 
11	725709875	4	\N
48	1739225164	168	Tony has free time. Tony has free time. John bought new car. John bought new car. Anne is walking. 
0	1466393514	223	Anne bought new car. John has free time. John bought new car. John has free time. Tony has free time. 
97	114017346	74	Anne is shopping. Tony is walking. John bought new car. John bought new car. Tony is shopping. 
48	2087388373	\N	Anne is shopping. Tony is walking. Anne bought new car. 
98	1253579228	130	Anne bought new car. Anne has free time. 
34	406232670	36	\N
76	1474098452	154	John bought new car. Tony is shopping. Tony bought new car. Anne has free time. Tony has free time. 
71	\N	66	Tony has free time. John has free time. 
50	\N	42	Anne has free time. John has free time. Tony bought new car. John bought new car. John bought new car. 
63	2111970100	201	John has free time. Anne bought new car. Anne bought new car. Tony is walking. Anne bought new car. 
25	678427697	225	Anne bought new car. John is walking. John is shopping. Tony has free time. Anne has free time. 
33	405466309	23	Tony is walking. Anne bought new car. John bought new car. Tony is walking. 
30	973678182	187	Anne bought new car. Anne bought new car. John is walking. Anne has free time. 
74	1914029361	102	Anne bought new car. Anne bought new car. John bought new car. Tony has free time. Tony has free time. 
84	1121543191	225	Anne bought new car. John is walking. 
72	1169914262	\N	Anne bought new car. John is walking. 
5	203747676	\N	John has free time. John is walking. Tony bought new car. Tony bought new car. 
18	786336292	146	John is walking. Anne is walking. Tony bought new car. John has free time. 
1	\N	0	John has free time. Tony is shopping. Tony has free time. John has free time. Tony bought new car. 
19	589666785	1	John bought new car. Anne is walking. Anne has free time. Tony has free time. 
35	1009217670	7	John has free time. Anne has free time. 
82	2104500382	\N	Tony bought new car. Anne bought new car. Tony is shopping. Tony has free time. Tony has free time. 
8	751588540	\N	Tony bought new car. Anne bought new car. Tony bought new car. John is shopping. 
92	111137600	224	Tony is shopping. John is shopping. 
85	1705152145	279	Anne bought new car. Anne bought new car. Anne bought new car. 
83	85641434	46	Tony bought new car. Anne is shopping. John bought new car. John has free time. Anne bought new car. 
0	1606016706	118	\N
74	486312867	\N	Anne bought new car. Anne is walking. 
30	1645042845	45	Anne has free time. John is shopping. John is walking. 
71	511319870	148	Anne has free time. Anne is walking. Tony bought new car. Anne has free time. John is shopping. 
53	59214479	\N	Tony bought new car. Tony bought new car. John is walking. Tony is shopping. Tony is walking. 
30	1948334579	4	Anne is walking. Anne has free time. Tony bought new car. John is shopping. Tony bought new car. 
91	\N	\N	John is walking. Anne is shopping. Anne bought new car. John is shopping. Tony bought new car. 
31	309998943	90	Anne bought new car. Anne has free time. Tony bought new car. John has free time. 
27	1758315823	125	Anne bought new car. Anne is walking. Tony is shopping. 
93	1500423450	285	Tony bought new car. John is walking. Tony bought new car. John has free time. Tony has free time. 
87	549146554	149	Anne is walking. Anne has free time. Anne is shopping. 
77	640305303	11	Tony is walking. Anne is walking. John is shopping. 
60	1721815627	239	Tony has free time. Anne is walking. Tony has free time. Tony bought new car. Tony bought new car. 
54	1002887043	112	John bought new car. John is shopping. John is walking. 
90	1096469345	80	Anne is walking. Anne is walking. John bought new car. Tony bought new car. John has free time. 
14	1217694529	295	Anne bought new car. Anne bought new car. John bought new car. Tony has free time. John has free time. 
4	1202249597	\N	Anne is shopping. Anne is shopping. Anne has free time. Anne has free time. Tony has free time. 
97	1209830620	194	Tony bought new car. Tony bought new car. John bought new car. John is shopping. Tony bought new car. 
64	\N	285	\N
32	303601634	170	Tony is walking. John has free time. Anne bought new car. Anne has free time. Anne has free time. 
49	492317621	46	Anne bought new car. John bought new car. Tony bought new car. John bought new car. Tony has free time. 
20	613219892	243	Anne has free time. John is walking. Tony bought new car. John is walking. 
50	629174046	22	John bought new car. Tony has free time. Anne has free time. John is shopping. John bought new car. 
49	103957041	128	John has free time. Anne is shopping. Tony bought new car. 
52	1507127487	\N	Anne is walking. Tony bought new car. 
20	2031097546	107	Tony bought new car. John is walking. Tony is walking. Tony is walking. Tony has free time. 
36	85457772	25	Anne has free time. Tony is walking. Tony bought new car. John has free time. Tony has free time. 
37	1749589657	\N	John bought new car. John is shopping. John is walking. John has free time. John bought new car. 
47	1520261871	45	\N
55	1542206329	95	John bought new car. John has free time. Anne is shopping. Tony has free time. John has free time. 
70	176274062	10	Tony bought new car. Anne is shopping. John bought new car. John has free time. Tony has free time. 
21	2134455294	147	Anne is walking. Anne has free time. Anne bought new car. 
32	511344829	242	Anne bought new car. Tony is shopping. Tony has free time. Tony has free time. John bought new car. 
27	1601287215	\N	Anne is walking. Anne is shopping. 
1	141193582	249	John bought new car. Anne bought new car. John bought new car. Tony is shopping. Anne has free time. 
95	1559326460	196	Tony bought new car. Tony has free time. Tony is shopping. John has free time. John has free time. 
70	1856234255	79	Tony bought new car. Anne is shopping. Tony bought new car. John has free time. John bought new car. 
76	1345308267	22	\N
74	279105514	30	Tony has free time. John has free time. Tony has free time. 
74	1085049869	285	John bought new car. Anne is walking. Anne bought new car. Tony is walking. Tony bought new car. 
60	278899155	261	Anne is walking. Anne is shopping. Tony is walking. Tony bought new car. Tony is walking. 
48	2130111696	265	Tony bought new car. Anne has free time. Anne is walking. Tony bought new car. 
23	1190559787	77	\N
56	1115049772	70	Tony bought new car. Anne is shopping. 
38	370435755	16	John is walking. Anne is walking. Tony has free time. John has free time. Tony has free time. 
9	246868879	100	Anne has free time. Anne is shopping. Tony bought new car. Tony has free time. John bought new car. 
91	1879670905	236	Anne bought new car. Anne is shopping. Tony is shopping. Tony is shopping. Anne has free time. 
33	1250098672	244	Anne bought new car. Anne has free time. John has free time. Tony has free time. John has free time. 
16	1359465997	134	Anne bought new car. John has free time. Tony bought new car. Tony has free time. Tony is walking. 
58	666165032	\N	Anne bought new car. John is shopping. Tony is shopping. John has free time. John is walking. 
0	\N	152	Tony bought new car. John bought new car. 
\.


COPY users_presence (user_id, "time") FROM stdin;
74	2008-09-24 13:02:02.368
84	2008-02-06 18:33:22.688
24	2008-05-30 03:08:58.368
60	2008-05-29 03:57:02.976
63	2008-03-17 00:34:00.32
30	2008-01-14 06:17:28.192
55	2008-05-01 19:35:10.208
11	2008-08-29 04:29:21.408
59	2008-12-20 04:46:02.24
79	2008-09-17 04:08:12.672
33	2008-01-03 05:43:59.44
25	2008-02-25 21:38:04.928
38	2008-12-18 17:10:57.792
61	2008-02-28 09:44:00.256
100	2008-12-09 23:46:37.184
100	2008-07-21 19:58:14.656
88	2008-12-12 16:09:35.488
2	2008-11-29 09:47:18.912
95	2008-12-08 23:19:44.384
17	2008-06-27 07:34:31.808
27	2008-05-25 09:46:44.736
31	2008-11-30 12:14:57.536
12	2008-05-07 05:35:53.984
36	2008-02-28 07:38:19.008
14	2008-04-17 15:59:48.352
71	2008-05-15 02:19:05.216
2	2008-07-04 09:57:07.328
0	2008-11-12 09:26:34.752
54	2008-02-12 10:39:15.968
0	2008-07-16 09:51:23.264
97	2008-10-09 01:23:12.64
56	2008-08-01 13:10:48.704
10	2008-08-29 13:29:49.44
25	2008-01-16 11:32:54.272
62	2008-02-27 08:51:51.936
28	2008-10-05 19:33:01.184
41	2008-05-18 11:07:35.424
1	2008-08-16 09:58:29.248
78	2008-02-21 03:40:30.08
98	2008-11-17 19:26:43.712
101	2008-09-11 09:25:22.688
68	2008-06-13 19:43:05.344
48	2008-10-21 18:07:14.56
87	2008-01-02 18:37:28.752
75	2008-01-02 20:08:27.248
100	2008-11-07 22:11:43.744
74	2008-07-10 12:13:08.608
57	2008-01-09 13:42:13.632
82	2008-09-29 08:09:34.08
1	2008-09-15 01:48:26.112
84	2008-02-21 23:31:37.6
41	2008-04-10 16:51:45.408
52	2008-06-25 08:30:03.904
73	2008-01-28 14:12:22.4
90	2008-07-18 08:22:08.768
100	2008-08-11 12:26:09.92
13	2008-07-30 06:14:53.824
54	2008-12-15 12:06:40.896
8	2008-03-15 23:57:36.64
18	2008-04-10 08:25:21.28
98	2008-08-16 04:37:40.096
30	2008-03-10 14:44:09.344
73	2008-03-08 14:28:00.128
67	2008-01-01 11:24:23.168
72	2008-01-04 21:51:05.44
6	2008-09-07 05:05:47.648
14	2008-02-28 22:36:15.232
35	2008-06-27 00:18:15.296
46	2008-03-06 04:02:00.32
27	2008-06-27 11:19:53.728
0	2008-07-16 19:50:51.264
66	2008-02-16 07:50:03.264
7	2008-12-22 10:09:27.04
68	2008-02-17 15:45:10.656
34	2008-03-30 20:49:35.872
82	2008-03-16 11:55:38.368
33	2008-05-24 10:28:17.152
60	2008-11-05 12:14:19.648
86	2008-03-20 15:24:59.776
94	2008-05-28 20:03:15.712
98	2008-06-07 03:44:52.864
75	2008-12-13 15:23:35.808
87	2008-03-26 08:02:25.408
53	2008-07-09 15:31:26.464
61	2008-11-21 16:57:29.856
4	2008-05-21 18:36:27.648
17	2008-01-15 00:39:47.328
31	2008-04-09 08:08:58.752
21	2008-08-04 20:27:31.84
20	2008-02-11 07:01:02.592
86	2008-08-27 20:02:41.92
8	2008-03-24 17:47:47.072
0	2008-02-13 20:39:57.184
41	2008-12-29 00:41:31.392
69	2008-08-26 20:21:19.104
25	2008-08-02 14:36:19.968
78	2008-12-26 06:17:28.832
95	2008-12-18 04:05:39.456
72	2008-03-16 15:58:54.464
68	2008-04-07 02:07:25.312
21	2008-05-17 03:55:15.456
4	2008-05-12 20:40:41.344
79	2008-06-18 15:03:51.68
39	2008-11-17 12:07:07.52
95	2008-05-02 03:25:54.176
77	2008-04-16 10:47:28.128
1	2008-06-11 06:10:40.896
61	2008-01-19 19:55:20.192
39	2008-07-03 13:19:36.064
61	2008-03-08 04:13:00.288
86	2008-12-31 15:02:48.576
2	2008-08-21 03:16:00.256
79	2008-08-18 18:28:34.56
93	2008-04-11 18:24:04.224
101	2008-11-28 21:47:08.16
31	2008-05-04 19:35:49.12
89	2008-07-04 20:17:05.152
47	2008-04-07 07:41:42.4
17	2008-06-28 21:54:26.048
14	2008-02-12 16:49:53.408
97	2008-06-05 23:26:23.36
19	2008-02-20 01:55:07.392
73	2008-04-22 19:17:17.056
91	2008-07-18 21:50:56.128
67	2008-09-19 13:57:33.44
28	2008-06-30 01:44:11.136
81	2008-12-18 05:50:57.536
65	2008-01-06 15:08:10.88
44	2008-03-17 16:11:01.504
32	2008-05-11 10:24:28.8
46	2008-03-04 04:32:49.152
9	2008-03-29 17:55:46.304
86	2008-07-19 22:59:54.112
47	2008-10-20 06:21:49.568
50	2008-07-22 08:14:03.392
72	2008-02-10 04:50:37.696
101	2008-08-03 04:22:27.712
56	2008-07-08 22:01:24.864
97	2008-10-15 21:15:02.656
56	2008-07-11 19:45:38.944
35	2008-09-12 21:04:26.752
37	2008-05-11 19:43:18.656
4	2008-03-15 21:31:05.6
79	2008-06-11 00:14:17.728
7	2008-04-03 08:07:27.104
0	2008-09-13 02:13:58.016
2	2008-10-11 18:13:00.672
11	2008-03-04 19:40:31.616
48	2008-03-23 08:35:47.328
0	2008-09-13 02:12:42.24
148	2008-09-24 13:02:02.368
169	2008-02-06 18:33:22.688
48	2008-05-30 03:08:58.368
123	2008-05-29 03:57:02.976
129	2008-03-17 00:34:00.32
61	2008-01-14 06:17:28.192
112	2008-05-01 19:35:10.208
23	2008-08-29 04:29:21.408
121	2008-12-20 04:46:02.24
159	2008-09-17 04:08:12.672
66	2008-01-03 05:43:59.44
50	2008-02-25 21:38:04.928
78	2008-12-18 17:10:57.792
124	2008-02-28 09:44:00.256
201	2008-12-09 23:46:37.184
201	2008-07-21 19:58:14.656
179	2008-12-12 16:09:35.488
4	2008-11-29 09:47:18.912
193	2008-12-08 23:19:44.384
35	2008-06-27 07:34:31.808
54	2008-05-25 09:46:44.736
62	2008-11-30 12:14:57.536
25	2008-05-07 05:35:53.984
74	2008-02-28 07:38:19.008
29	2008-04-17 15:59:48.352
143	2008-05-15 02:19:05.216
4	2008-07-04 09:57:07.328
0	2008-11-12 09:26:34.752
111	2008-02-12 10:39:15.968
1	2008-07-16 09:51:23.264
197	2008-10-09 01:23:12.64
114	2008-08-01 13:10:48.704
20	2008-08-29 13:29:49.44
50	2008-01-16 11:32:54.272
127	2008-02-27 08:51:51.936
57	2008-10-05 19:33:01.184
83	2008-05-18 11:07:35.424
2	2008-08-16 09:58:29.248
158	2008-02-21 03:40:30.08
200	2008-11-17 19:26:43.712
203	2008-09-11 09:25:22.688
139	2008-06-13 19:43:05.344
98	2008-10-21 18:07:14.56
177	2008-01-02 18:37:28.752
151	2008-01-02 20:08:27.248
201	2008-11-07 22:11:43.744
148	2008-07-10 12:13:08.608
116	2008-01-09 13:42:13.632
166	2008-09-29 08:09:34.08
2	2008-09-15 01:48:26.112
170	2008-02-21 23:31:37.6
83	2008-04-10 16:51:45.408
107	2008-06-25 08:30:03.904
147	2008-01-28 14:12:22.4
183	2008-07-18 08:22:08.768
201	2008-08-11 12:26:09.92
26	2008-07-30 06:14:53.824
111	2008-12-15 12:06:40.896
16	2008-03-15 23:57:36.64
37	2008-04-10 08:25:21.28
200	2008-08-16 04:37:40.096
61	2008-03-10 14:44:09.344
146	2008-03-08 14:28:00.128
136	2008-01-01 11:24:23.168
145	2008-01-04 21:51:05.44
12	2008-09-07 05:05:47.648
28	2008-02-28 22:36:15.232
72	2008-06-27 00:18:15.296
93	2008-03-06 04:02:00.32
54	2008-06-27 11:19:53.728
0	2008-07-16 19:50:51.264
135	2008-02-16 07:50:03.264
14	2008-12-22 10:09:27.04
139	2008-02-17 15:45:10.656
69	2008-03-30 20:49:35.872
166	2008-03-16 11:55:38.368
67	2008-05-24 10:28:17.152
123	2008-11-05 12:14:19.648
174	2008-03-20 15:24:59.776
190	2008-05-28 20:03:15.712
199	2008-06-07 03:44:52.864
150	2008-12-13 15:23:35.808
177	2008-03-26 08:02:25.408
108	2008-07-09 15:31:26.464
124	2008-11-21 16:57:29.856
8	2008-05-21 18:36:27.648
35	2008-01-15 00:39:47.328
62	2008-04-09 08:08:58.752
43	2008-08-04 20:27:31.84
40	2008-02-11 07:01:02.592
173	2008-08-27 20:02:41.92
16	2008-03-24 17:47:47.072
1	2008-02-13 20:39:57.184
83	2008-12-29 00:41:31.392
140	2008-08-26 20:21:19.104
50	2008-08-02 14:36:19.968
157	2008-12-26 06:17:28.832
194	2008-12-18 04:05:39.456
144	2008-03-16 15:58:54.464
139	2008-04-07 02:07:25.312
42	2008-05-17 03:55:15.456
9	2008-05-12 20:40:41.344
159	2008-06-18 15:03:51.68
80	2008-11-17 12:07:07.52
194	2008-05-02 03:25:54.176
156	2008-04-16 10:47:28.128
2	2008-06-11 06:10:40.896
125	2008-01-19 19:55:20.192
79	2008-07-03 13:19:36.064
124	2008-03-08 04:13:00.288
173	2008-12-31 15:02:48.576
4	2008-08-21 03:16:00.256
160	2008-08-18 18:28:34.56
189	2008-04-11 18:24:04.224
203	2008-11-28 21:47:08.16
63	2008-05-04 19:35:49.12
180	2008-07-04 20:17:05.152
96	2008-04-07 07:41:42.4
34	2008-06-28 21:54:26.048
28	2008-02-12 16:49:53.408
197	2008-06-05 23:26:23.36
38	2008-02-20 01:55:07.392
146	2008-04-22 19:17:17.056
184	2008-07-18 21:50:56.128
137	2008-09-19 13:57:33.44
57	2008-06-30 01:44:11.136
163	2008-12-18 05:50:57.536
133	2008-01-06 15:08:10.88
89	2008-03-17 16:11:01.504
64	2008-05-11 10:24:28.8
93	2008-03-04 04:32:49.152
19	2008-03-29 17:55:46.304
173	2008-07-19 22:59:54.112
95	2008-10-20 06:21:49.568
102	2008-07-22 08:14:03.392
144	2008-02-10 04:50:37.696
203	2008-08-03 04:22:27.712
115	2008-07-08 22:01:24.864
198	2008-10-15 21:15:02.656
115	2008-07-11 19:45:38.944
71	2008-09-12 21:04:26.752
76	2008-05-11 19:43:18.656
9	2008-03-15 21:31:05.6
160	2008-06-11 00:14:17.728
14	2008-04-03 08:07:27.104
0	2008-09-13 02:13:58.016
5	2008-10-11 18:13:00.672
22	2008-03-04 19:40:31.616
97	2008-03-23 08:35:47.328
1	2008-09-13 02:12:42.24
\.


COPY match_logs (log_id, match_id, "time", body, priority) FROM stdin;
0	73	2008-09-24 15:23:41.568	Anne bought new car. Tony is walking. Tony bought new car. Anne has free time. Anne bought new car. 	1568971868
1	10	2008-04-17 10:01:08.992	Tony is walking. Anne is walking. John bought new car. John is walking. 	1972923321
2	41	2008-11-25 22:18:55.872	Tony is shopping. Tony is shopping. Anne bought new car. 	1972693766
3	40	2008-01-02 12:30:24.376	Tony has free time. Anne has free time. John is walking. Anne has free time. John has free time. 	1459337896
4	20	2008-06-30 21:05:21.024	John is walking. Anne is shopping. John is shopping. John bought new car. John has free time. 	168336464
5	3	2008-11-08 19:31:00.736	Anne bought new car. Tony is shopping. Anne bought new car. Tony has free time. Anne bought new car. 	53286715
6	33	2008-12-26 19:56:34.688	Tony is shopping. Anne is shopping. Anne has free time. Tony has free time. John is walking. 	1501631577
7	65	2008-01-13 04:22:41.728	John has free time. Tony bought new car. John is shopping. John is shopping. John has free time. 	1728588968
8	96	2008-11-09 16:58:39.488	Anne is shopping. Tony bought new car. 	324768466
9	71	2008-12-03 20:43:35.808	Anne has free time. John bought new car. Anne bought new car. Tony has free time. 	1985522669
10	0	2008-12-27 09:30:14.912	John bought new car. John is shopping. 	1640324086
11	15	2008-06-14 18:53:15.264	Tony is shopping. Anne bought new car. John has free time. Tony bought new car. Tony has free time. 	7260017
12	96	2008-03-24 12:08:19.712	John has free time. Tony has free time. 	1581456747
13	15	2008-07-09 08:15:01.76	Tony bought new car. Tony is shopping. Anne has free time. John bought new car. Anne has free time. 	2053467022
14	93	2008-01-28 08:59:19.936	Anne has free time. Anne has free time. 	1768772963
15	55	2008-11-03 13:19:02.656	Anne is shopping. Anne bought new car. 	405193588
16	94	2008-09-29 00:53:49.312	John is shopping. Anne has free time. Tony has free time. Tony has free time. John bought new car. 	700291789
17	91	2008-03-31 13:40:28.416	Anne bought new car. Anne has free time. John has free time. Tony has free time. John has free time. 	1613937925
18	93	2008-12-13 13:08:21.632	Anne has free time. Anne is shopping. Tony is walking. John bought new car. John has free time. 	602196366
19	48	2008-07-21 17:11:21.984	Anne has free time. John is shopping. Anne has free time. 	494165779
20	39	2008-01-12 04:01:41.44	John has free time. Tony has free time. John is shopping. Tony is walking. Anne has free time. 	1734358423
21	91	2008-02-10 13:59:20.064	Tony bought new car. Anne is shopping. Tony bought new car. John has free time. Tony is walking. 	1630396589
22	34	2008-09-10 04:30:02.368	Anne has free time. John is shopping. Tony bought new car. Tony bought new car. Anne has free time. 	1677993262
23	15	2008-10-14 10:37:10.656	Anne is walking. Tony is walking. Tony is shopping. Tony bought new car. 	1917884299
24	29	2008-11-07 17:15:10.72	Anne bought new car. Tony is walking. 	1125381688
25	36	2008-05-18 05:07:41.312	Anne has free time. John is walking. Tony bought new car. John is walking. Anne has free time. 	110423164
26	50	2008-01-21 18:28:00.768	John is shopping. Tony bought new car. Tony has free time. John has free time. Tony has free time. 	744779428
27	86	2008-04-10 18:39:20.704	John bought new car. Tony has free time. John has free time. Tony is shopping. Tony has free time. 	1031252175
28	11	2008-05-29 11:22:34.496	Anne bought new car. John bought new car. Anne is shopping. Anne bought new car. John has free time. 	1946868933
29	53	2008-12-13 09:22:46.4	Anne bought new car. Tony is shopping. John bought new car. 	1225068593
30	77	2008-05-09 00:22:57.92	Anne bought new car. Anne is shopping. Anne is shopping. John has free time. John has free time. 	1197720890
31	58	2008-07-10 03:29:22.048	Tony has free time. John is shopping. Tony bought new car. Tony has free time. Anne is walking. 	1227838943
32	65	2008-12-29 16:32:34.816	Anne bought new car. Anne is shopping. Tony is shopping. Tony bought new car. Anne is shopping. 	1927677104
33	4	2008-09-03 17:52:42.112	Anne bought new car. John is walking. John bought new car. Tony is walking. 	460661276
34	15	2008-07-24 17:07:39.776	Anne has free time. Anne bought new car. Anne has free time. John is walking. John has free time. 	694380036
35	76	2008-05-02 10:03:42.592	John is shopping. Anne bought new car. Anne bought new car. Anne has free time. Anne bought new car. 	318109936
36	37	2008-06-23 06:02:52.928	Tony bought new car. Anne bought new car. 	1462095150
37	62	2008-10-18 16:24:31.104	Tony bought new car. Anne bought new car. 	2011001547
38	13	2008-01-19 02:01:49.44	Anne has free time. Anne bought new car. John has free time. John has free time. Tony has free time. 	1206401873
39	87	2008-03-03 19:02:57.792	John bought new car. Anne is shopping. John bought new car. Tony has free time. Tony bought new car. 	627792922
40	69	2008-08-01 03:40:49.152	Anne bought new car. Anne has free time. 	1746734257
41	45	2008-03-01 02:55:07.264	Tony bought new car. Anne is shopping. John bought new car. Tony bought new car. 	720234895
42	80	2008-11-07 13:19:04.704	Tony bought new car. John has free time. Tony bought new car. John has free time. Anne bought new car. 	1550250573
43	0	2008-08-05 04:49:05.152	Tony bought new car. Anne is walking. Tony bought new car. John bought new car. Anne bought new car. 	1323587780
44	0	2008-03-24 16:40:15.104	Anne bought new car. Anne is shopping. John bought new car. John has free time. Tony has free time. 	1539328698
45	85	2008-03-28 05:28:34.048	Anne bought new car. Tony bought new car. Tony bought new car. Tony has free time. Tony is walking. 	122906805
46	52	2008-02-26 01:35:04.192	John bought new car. Anne is shopping. Tony bought new car. Tony is shopping. John bought new car. 	967088503
47	2	2008-08-30 19:08:08.192	Tony has free time. Anne is walking. John bought new car. John is walking. 	1144668466
48	74	2008-12-18 19:05:34.976	Tony bought new car. Tony is walking. Tony has free time. Tony bought new car. Tony has free time. 	1338638880
49	70	2008-08-18 00:51:54.624	Anne bought new car. John is walking. John bought new car. John has free time. 	1479375231
50	14	2008-03-26 03:22:59.968	Tony is shopping. Anne is walking. John bought new car. Anne has free time. John has free time. 	1857341065
51	27	2008-09-08 08:02:08.64	Anne bought new car. Anne bought new car. Anne is walking. John has free time. John has free time. 	1082593066
52	48	2008-08-13 17:34:47.936	Tony bought new car. Tony has free time. Tony is walking. 	1070394267
53	7	2008-01-10 17:12:22.528	Tony bought new car. Tony is walking. Tony bought new car. John has free time. Tony bought new car. 	1567965386
54	54	2008-08-10 21:32:12.8	Anne has free time. Tony is walking. Anne has free time. Tony is walking. Anne has free time. 	1790854556
55	61	2008-09-25 06:15:37.856	Tony bought new car. Tony has free time. Tony has free time. John is shopping. Tony has free time. 	933191023
56	57	2008-03-31 16:05:06.304	Anne bought new car. John is walking. 	351096714
57	95	2008-09-23 16:19:35.168	John bought new car. Anne is shopping. Anne is shopping. John has free time. Anne has free time. 	1412873037
58	20	2008-11-03 04:56:19.712	John bought new car. Anne is shopping. 	818892308
59	27	2008-01-04 14:21:12.64	Anne is walking. Anne is walking. Anne is walking. John has free time. Tony has free time. 	976955265
60	62	2008-09-09 05:08:06.912	Anne is walking. Anne is shopping. John bought new car. John is shopping. Tony has free time. 	1780113534
61	19	2008-07-16 18:11:44.896	Anne has free time. Tony is shopping. Tony bought new car. Tony has free time. John bought new car. 	127746415
62	18	2008-10-18 23:37:13.6	John has free time. Anne bought new car. John has free time. 	1797931491
63	0	2008-01-04 21:23:15.488	Anne bought new car. Tony bought new car. 	937316866
64	1	2008-02-15 06:47:34.912	Anne bought new car. Tony has free time. Tony bought new car. Anne bought new car. John bought new car. 	1103142223
65	68	2008-10-29 05:32:37.76	Tony has free time. Anne is walking. Anne bought new car. John has free time. Tony has free time. 	653546486
66	16	2008-02-09 08:56:04.608	John bought new car. Tony is shopping. John has free time. Tony bought new car. John bought new car. 	1368650713
67	48	2008-02-08 10:06:59.328	John bought new car. Anne bought new car. Tony bought new car. Tony is shopping. Tony has free time. 	1538390761
68	17	2008-01-12 23:47:49.312	Tony bought new car. Anne is shopping. Tony has free time. John has free time. Anne has free time. 	806239115
69	48	2008-11-06 06:17:41.12	Anne is walking. Anne has free time. Tony bought new car. John bought new car. John bought new car. 	534622189
70	54	2008-12-07 08:30:30.912	Anne is walking. Anne is walking. Tony bought new car. John has free time. John has free time. 	1582068937
71	12	2008-09-30 14:08:40.064	John has free time. John is shopping. Tony bought new car. John is shopping. John has free time. 	1453298028
72	97	2008-04-07 16:48:25.728	Tony bought new car. John is walking. Tony bought new car. 	1728223736
73	13	2008-10-22 19:18:09.28	Anne bought new car. Anne is walking. Anne bought new car. Tony bought new car. Tony has free time. 	52276011
74	24	2008-07-21 22:54:57.152	Anne bought new car. Anne bought new car. John has free time. Tony bought new car. 	964389720
75	20	2008-01-13 21:43:54.752	Tony has free time. Anne has free time. Anne bought new car. John has free time. Anne has free time. 	35567369
76	39	2008-03-24 04:18:52.544	Anne bought new car. Tony is walking. John has free time. Tony has free time. Tony bought new car. 	530692573
77	84	2008-02-16 20:54:08.896	John bought new car. Anne is shopping. John is shopping. Tony has free time. John has free time. 	92199078
78	21	2008-02-22 06:55:45.664	John bought new car. Tony has free time. Tony bought new car. John is walking. 	318304442
79	40	2008-12-26 03:39:14.304	Anne has free time. Tony is walking. Anne is walking. 	1682368264
80	43	2008-01-19 12:42:32.704	John bought new car. Tony bought new car. John is shopping. Tony bought new car. John bought new car. 	230998572
81	94	2008-05-02 04:12:00	John has free time. Anne is walking. Anne bought new car. Anne has free time. 	2104357929
82	23	2008-02-17 22:03:14.816	Anne is walking. Tony has free time. 	1450964962
83	52	2008-07-23 23:48:48.896	Anne is shopping. John is walking. 	1054205716
84	88	2008-01-22 04:49:11.552	Tony bought new car. Tony has free time. Tony bought new car. Tony bought new car. 	1646299576
85	38	2008-05-11 22:09:18.976	Tony is walking. Anne bought new car. Tony has free time. Tony is walking. Tony has free time. 	1359943517
86	3	2008-06-17 12:21:51.872	John has free time. Anne is walking. Anne has free time. 	1045904374
87	27	2008-05-23 08:08:46.976	Tony is shopping. Anne is walking. Anne bought new car. John bought new car. Anne has free time. 	2013003626
88	59	2008-06-20 07:29:48.16	Anne bought new car. Anne is shopping. 	1480272103
89	11	2008-05-20 19:03:34.784	Anne has free time. John has free time. Anne bought new car. Anne bought new car. John has free time. 	531445052
90	65	2008-04-02 16:21:21.152	Tony bought new car. Anne bought new car. John bought new car. Tony has free time. John bought new car. 	1158526307
91	22	2008-10-16 10:59:34.144	Anne bought new car. John is shopping. Anne is shopping. Tony bought new car. Tony bought new car. 	1423899449
92	11	2008-10-15 22:34:59.072	Tony bought new car. Anne has free time. John has free time. John has free time. John has free time. 	1814664304
93	99	2008-04-05 09:46:39.616	Anne has free time. Anne is shopping. Anne is walking. Anne is walking. Anne bought new car. 	210034349
94	65	2008-10-09 13:35:38.624	Anne bought new car. Anne is shopping. 	1445435769
95	58	2008-08-01 08:02:51.648	Anne is shopping. John bought new car. Tony has free time. Tony has free time. John has free time. 	719646861
96	98	2008-05-06 10:03:20.064	Tony bought new car. Tony has free time. Tony bought new car. Anne bought new car. Tony has free time. 	370032389
97	96	2008-12-02 18:22:26.304	Anne has free time. Anne is shopping. John has free time. 	1879789358
98	20	2008-09-22 05:46:27.84	Tony has free time. Anne is shopping. John has free time. John has free time. Tony has free time. 	1657855889
99	26	2008-07-16 12:01:11.808	John has free time. John has free time. John bought new car. John bought new car. John is walking. 	1576521936
\.


ALTER TABLE contests
    ADD CONSTRAINT default_judge_fkey
        FOREIGN KEY (default_judge) REFERENCES judges ON DELETE SET NULL;

