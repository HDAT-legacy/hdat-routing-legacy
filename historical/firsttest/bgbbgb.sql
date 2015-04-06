SET CLIENT_ENCODING TO UTF8;
SET STANDARD_CONFORMING_STRINGS TO ON;
BEGIN;
CREATE TABLE "bladiebla" (gid serial,
"id" numeric(10,0),
"type" varchar(254));
ALTER TABLE "bladiebla" ADD PRIMARY KEY (gid);
SELECT AddGeometryColumn('','bladiebla','geom','4326','POINT',2);
COPY "bladiebla" ("id","type",geom) FROM stdin;
1	repcape	0101000020E6100000C81B87D256650340A81FC48980C64940
2	repcape	0101000020E610000000EC676D1B27BE3FBCBD0EADA8354940
3	repcape	0101000020E61000001463AB5C039814C0683D7C8EABC04840
4	repcape	0101000020E6100000F45B5F5BBC182BC037C173922D884540
5	repcape	0101000020E6100000BE8C9243AE3F32C01F03FCD04A263F40
6	repcape	0101000020E61000004DD8D26FBDA435C0EC5343C416333040
7	repcape	0101000020E610000026131E3C19AF32C0AC53A93B0EF81240
8	repcape	0101000020E61000001E6E094EE79A3AC05A89A8C865A723C0
8	repcape	0101000020E6100000F291BA2C808F39C0EDBD465E55C335C0
9	repcape	0101000020E61000009CA3C118EE0129C0F39EABF7AF4B41C0
10	repcape	0101000020E6100000408D354A6B4F324011F449E3B1FD40C0
30	kaapindia	0101000020E61000000A8FF9F5E34339406DA1777147C642C0
31	kaapindia	0101000020E61000002F3A83AD2B094040DF25A0E0DEA341C0
32	kaapindia	0101000020E61000001F35FCD63E5E4340328F914734513EC0
33	kaapindia	0101000020E610000003A93F5823604240A667F02AF51338C0
34	kaapindia	0101000020E6100000912417E98B824340A8BB269F1EF932C0
35	kaapindia	0101000020E6100000E65D5AC228364540E49A91B7F8DE2CC0
36	kaapindia	0101000020E61000001030750052B346400039256F40670EC0
37	kaapindia	0101000020E61000008E7CAA0039B84D40C8503474DA3B1640
38	kaapindia	0101000020E610000030161FCAA8F151404589FE2FC90E2340
100	kaapindo	0101000020E6100000235F1791D3D040407DE7D530554543C0
101	kaapindo	0101000020E6100000E89E31AB490A49407DE7D530554543C0
102	kaapindo	0101000020E61000004FCCF60259625040C46FC8A72E3343C0
104	kaapindo	0101000020E61000004E0DCEEB7936544036F4F016C61042C0
105	kaapindo	0101000020E61000005B940394A8895840C4C991EF7B9F3BC0
106	kaapindo	0101000020E61000004C248A1A06985A40E2D39F9C55F534C0
107	kaapindo	0101000020E6100000059C97A32CAA5A40405E5B2358151FC0
1001	azie	0101000020E6100000605E11985FA95F409E75A7D090D33A40
1001	azie	0101000020E61000005EFA25BC10295E40DE15B6B8D4C23940
1002	azie	0101000020E6100000D73F3CC6C3895C406CE8F538B71C3540
1003	azie	0101000020E6100000FE8A4A803A7F5B40838B00F95C563440
1004	azie	0101000020E6100000E58354E445C55A4049340369C6243440
1005	azie	0101000020E6100000E6354A526D855B406AA5A032700D2D40
1006	azie	0101000020E61000005EAC1B2A38E95E40E8648362E82E2F40
1007	azie	0101000020E610000026071408C9775F4084C9E59225042840
1007	azie	0101000020E6100000DE3A438C98075C402DC921F182EA3140
1008	azie	0101000020E61000005EC96AEEF8255940101BEB72F8A02740
1010	azie	0101000020E6100000FF406D3989BA5F40E6FC2175A94B1D40
1011	azie	0101000020E6100000422886065E625F40C26E7A355AC31440
1014	azie	0101000020E61000002A65D67957D15D40702D97A802EDF03F
1015	azie	0101000020E6100000228CC8C478185D401472AB2782BE10C0
1016	azie	0101000020E610000067AB67FFB7265C40F457CB0832E615C0
1018	azie	0101000020E610000044BB601933C35A40AC1C6997BD2417C0
1019	\N	0101000020E6100000D37E639FF07E5A40B0AF43AA928512C0
1020	azie	0101000020E6100000A3D5354EE3C85A4088CC73F29D7706C0
1022	azie	0101000020E6100000E7D81152ED235A4038D2DAF56178F5BF
1023	azie	0101000020E61000002308571FB1125B405EBF30880C9F18C0
1024	azie	0101000020E61000009441B04DA3255B40EED07275C0B219C0
1025	azie	0101000020E61000006FCEE73441475B40C260D57F9DD11AC0
1026	\N	0101000020E61000004A5B1F1CDF685B40C126446091DD1AC0
1027	\N	0101000020E610000023AEC5E370965B40B4904B833C311BC0
1029	\N	0101000020E6100000619B2648E6A05B40E4AE9CD783EE19C0
1029	\N	0101000020E6100000CB46CC33E85F5B40F82CDA32096B19C0
1030	\N	0101000020E6100000BD76423787BF5B4000151FB1393B19C0
1030	\N	0101000020E610000017B5951622E45B40D818A4FA2E421AC0
1031	\N	0101000020E6100000CDCE04E55D275C40AC6E75E5FF6C1BC0
1034	\N	0101000020E61000001FEB8126BC875C40A4863067CF9C1BC0
1035	\N	0101000020E6100000E0FD20C2467D5C4088E61C6E0D5C1CC0
1035	\N	0101000020E61000004287F00F0C785C403E9CDA5F1C461EC0
1036	\N	0101000020E61000008D0A4A51D62E5C407D8AB5B0C4A31CC0
1036	\N	0101000020E6100000BC8A58A9E49E5C4000AEFF0E74E81FC0
1040	\N	0101000020E61000005ED8E28A31925C40344073A2D38D1EC0
1041	\N	0101000020E6100000B553F2AC17A85D40EF2F9CDBC66520C0
1042	\N	0101000020E61000007ADAB387BA855D40FA8B03990F1E20C0
1043	\N	0101000020E610000000D74BEEE15E5D40F617E159F73520C0
1046	\N	0101000020E6100000447260B17B455D40EA81E87CA28920C0
1047	\N	0101000020E61000002BF8C76568195D40F57A184AF13B20C0
1048	\N	0101000020E6100000B22EF1EB9BE65C40F440872AE54720C0
1049	\N	0101000020E610000077B5B2C63EC45C40FE9CEEE72D0020C0
1050	\N	0101000020E61000006A33D05B47F75D40F750F88CD0D621C0
1051	\N	0101000020E61000000D6CCADE03B85E40162B9DA59E0B21C0
1052	\N	0101000020E6100000D0B8FA999AA15E400073CE2A0D9B21C0
1053	\N	0101000020E6100000FA3CAE011B625E40F4DCD54DB8EE21C0
1053	\N	0101000020E61000002224995995285E40F6B32F7DCADC21C0
1055	\N	0101000020E61000004F7FA6F027D75D400110973A139521C0
1060	\N	0101000020E61000003291EB65FCC25D4027D280D1119A20C0
1061	\N	0101000020E6100000C1380C08097B5C40385352CA57161BC0
1066	\N	0101000020E6100000EF08B6CAE6645A40F0A5D8CB6CFA1CC0
1070	\N	0101000020E610000075054E310E3E5A403E9ECE3882EC1AC0
1072	\N	0101000020E6100000147C7EE348435A4078DEF52A066E19C0
1073	\N	0101000020E6100000ABD0D8F746845A40CC849FF63F3C17C0
1080	\N	0101000020E610000008BE1680DFDB5E40A270BDA18A1424C0
1081	\N	0101000020E610000096DC848443795E40BC39776B3A6723C0
1090	\N	0101000020E6100000AA5AC2DFC8F55D404A99F2DE364517C0
1100	\N	0101000020E6100000C45D0DC9843C5D40202955E9136418C0
1101	\N	0101000020E6100000CA81949DCDAA5F4027D280D1119A20C0
1102	\N	0101000020E610000034CA0299D5635F401F4D7343DBCF20C0
1103	\N	0101000020E61000004160FB752A105F400E4358276E3B21C0
1104	\N	0101000020E610000048E5080461DA5E4008F8DBB8436521C0
1105	\N	0101000020E6100000A7FA3C33A634604074D1F28DB3D812C0
1106	\N	0101000020E610000041598A52E6F55F4098B8E40A87A309C0
1102	\N	0101000020E61000008DE3AD7F7FE15F404931E6F3C2DB0AC0
1104	\N	0101000020E610000041598A52E6F55F408A26358112010CC0
1106	\N	0101000020E6100000F99A63805CFF5F404E00F030FF8E0CC0
1107	\N	0101000020E6100000AFA900DE43F85F406164C2F3B0550DC0
1110	\N	0101000020E6100000CE09DB9BEAED5F40DC826FCD145E0FC0
1111	\N	0101000020E61000003E0D7DC460146040A356F884FF090DC0
1112	\N	0101000020E61000007F66ECBDC40A60408EF53EBE4EB40DC0
1113	\N	0101000020E6100000D59F6AF6C1FB5E4030113B924F4017C0
1114	\N	0101000020E610000092ABD623001E5E40324AA95AE0321AC0
1115	\N	0101000020E610000097417298ABDE5C4088A0B1AEE0AD1AC0
1119	\N	0101000020E6100000F400F45422865F40DFCD0691298602C0
1120	\N	0101000020E6100000AA0F91B2097F5F4032CAFA3410A408C0
1122	\N	0101000020E6100000E8033DB973C25F4000A8A86F32DECEBF
1121	\N	0101000020E61000007F188413A6995F40BC8C90354ED7FDBF
1124	\N	0101000020E61000003E572C1173CC5E40B0D18AD5C26BD23F
1132	\N	0101000020E61000000D2F59179C655F40BA802C454A13F8BF
1134	\N	0101000020E610000093AD346573475F40D89768D6D9C6FC3F
1140	\N	0101000020E6100000963A85E51BB55940825FCBE0821513C0
1141	\N	0101000020E61000003FB140C18C2959403026B5C2955B02C0
1143	\N	0101000020E6100000A86802DC3DFA5840A0DD2CB988DAEEBF
1144	\N	0101000020E6100000344C9B0FA5B5584010BBF5308B72D73F
1145	\N	0101000020E61000002C4D6EFEDA625840706DFAC0D1DC0140
\.
CREATE INDEX ON "bladiebla" USING GIST ("geom");
COMMIT;
