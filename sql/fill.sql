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
\.


COPY judges (judge_id, path, contest_id) FROM stdin;
0	http://oxmx.net/btqwl/vbshc.asm	3
1	http://vkynk.net5/hjwhb/qhj.asm	9
2	http://njlre.webl/qjxiu/bdp.php	1
3	http://qje.net/nqywu/lih.txt	2
4	http://wvt.net51/voxsq/ovt.ini	9
5	http://nkw.net1/vuabl/yjbt.doc	5
6	http://kkbs.net44/ionki/bcrk.txt	8
7	http://ivk.net6/foqia/zpn.xls	3
8	http://lhkfy.net/bjcgm/gqm.ini	5
9	http://jmx.net5/reurh/xbd.xls	2
10	http://xxto.locali/epzgj/fjdu.bmp	8
\.


COPY matches (judge_id) FROM stdin;
\N
\N
1
2
1
7
3
9
\N
1
\.


COPY programs (user_id, contest_id, name, submission_time, winns, defeats, ties) FROM stdin;
4	\N	Stephen Cisneros	2008-09-24 10:40:23.168	1568779461	1569356619	1569164244
1	\N	Abraham Blackburn	2008-11-28 04:05:35.36	189533491	1244735654	1608829472
1	\N	Charlotte Byrd	2008-12-02 05:59:00.864	1049914526	1670768664	747989391
1	\N	Lynn Miles	2008-10-23 18:23:43.744	991787866	246954374	1926887991
2	\N	Erich Ingram	2008-12-02 05:02:41.664	963357709	725777588	1520798866
3	\N	Dominick Neal	2008-03-20 17:03:56.928	1498325847	1458175681	755731230
3	\N	Cherie White	2008-09-05 18:13:47.776	596500747	1164409526	259278696
5	\N	Ebony Daniels	2008-04-14 03:36:03.456	1632003450	1921760003	1825174485
7	\N	Arthur Barrera	2008-01-29 16:33:28.32	470823983	32657466	178712982
2	\N	Debra Middleton	2008-07-01 10:32:48.512	1976574038	2003419961	1994471299
1	\N	Lara Haynes	2008-01-10 01:57:43.488	1902790313	1115391600	1377857827
\.


COPY programs_matches (match_id, score, program_id, result) FROM stdin;
3	1569548962	9	\N
3	\N	\N	Tony bought new car. Anne bought new car. Tony bought new car. Tony bought new car. Tony bought new car. 
4	714504437	9	Tony bought new car. John has free time. Tony has free time. Tony has free time. Anne has free time. 
2	1526301727	\N	John is shopping. Anne is shopping. John is shopping. Tony is shopping. John is walking. 
3	2069540292	7	Anne bought new car. Anne bought new car. John bought new car. Anne has free time. Tony has free time. 
2	1189861246	6	Anne bought new car. John bought new car. Tony bought new car. John has free time. John is shopping. 
5	2012368591	8	John bought new car. John bought new car. John is shopping. John has free time. Tony has free time. 
1	1962720330	2	Anne is walking. Tony is walking. Tony is shopping. John bought new car. John is walking. 
9	631482668	2	John has free time. Tony bought new car. Anne bought new car. Anne has free time. John is walking. 
8	1856420131	4	Anne bought new car. John has free time. 
\.


COPY users_presence (user_id, "time") FROM stdin;
4	2008-09-24 13:02:02.368
4	2008-02-06 18:33:22.688
4	2008-05-30 03:08:58.368
1	2008-05-29 03:57:02.976
3	2008-03-17 00:34:00.32
1	2008-01-14 06:17:28.192
5	2008-05-01 19:35:10.208
1	2008-08-29 04:29:21.408
9	2008-12-20 04:46:02.24
9	2008-09-17 04:08:12.672
\.


COPY match_logs (log_id, match_id, "time", body, priority) FROM stdin;
0	3	2015-09-24 15:23:41.568	Anne bought new car. Tony is walking. Tony bought new car. Anne has free time. Anne bought new car. 	1568971868
1	1	2018-04-17 10:01:08.992	Tony is walking. Anne is walking. John bought new car. John is walking. 	1972923321
2	1	2018-11-25 22:18:55.872	Tony is shopping. Tony is shopping. Anne bought new car. 	1972693766
3	1	2018-01-02 12:30:24.376	Tony has free time. Anne has free time. John is walking. Anne has free time. John has free time. 	1459337896
4	1	2018-06-30 21:05:21.024	John is walking. Anne is shopping. John is shopping. John bought new car. John has free time. 	168336464
5	3	2018-11-08 19:31:00.736	Anne bought new car. Tony is shopping. Anne bought new car. Tony has free time. Anne bought new car. 	53286715
6	3	2018-12-26 19:56:34.688	Tony is shopping. Anne is shopping. Anne has free time. Tony has free time. John is walking. 	1501631577
7	5	2018-01-13 04:22:41.728	John has free time. Tony bought new car. John is shopping. John is shopping. John has free time. 	1728588968
8	6	2018-11-09 16:58:39.488	Anne is shopping. Tony bought new car. 	324768466
9	1	2018-12-03 20:43:35.808	Anne has free time. John bought new car. Anne bought new car. Tony has free time. 	1985522669
\.


ALTER TABLE contests
    ADD CONSTRAINT default_judge_fkey
        FOREIGN KEY (default_judge) REFERENCES judges ON DELETE SET NULL;

