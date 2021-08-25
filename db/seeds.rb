# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
stocks = [
  {ticker: "ACIW", name: "ACI Worldwide", website: "https://www.aciworldwide.com", market_cap: 4471393891.0, country: "United States", ipo_year: nil, sector: "Technology", volume: 847912, industry: "EDP Services"},
  {ticker: "ACVA", name: "ACV Auctions", website: "https://www.acvauctions.com", market_cap: 3697896894.0, country: "United States", ipo_year: "2021", sector: "Technology", volume: 1389435, industry: "EDP Services"},
  {ticker: "ADBE", name: "Adobe", website: "https://www.adobe.com", market_cap: 270352020000.0, country: "United States", ipo_year: "1986", sector: "Technology", volume: 6759868, industry: "Computer Software: Prepackaged Software"},
  {ticker: "AFRM", name: "Affirm Holdings", website: "https://www.affirm.com", market_cap: 18074061126.0, country: "United States", ipo_year: "2021", sector: "Technology", volume: 3624106, industry: "EDP Services"},
  {ticker: "AI", name: "C3.ai", website: "https://c3.ai", market_cap: 6036047589.0, country: nil, ipo_year: "2020", sector: "Technology", volume: 2590322, industry: "Computer Software: Prepackaged Software"},
  {ticker: "ALGM", name: "Allegro MicroSystems", website: "https://www.allegromicro.com", market_cap: 5033700602.0, country: "United States", ipo_year: "2020", sector: "Technology", volume: 1251953, industry: "Semiconductors"},
  {ticker: "ALKT", name: "Alkami Technology", website: "https://www.alkami.com", market_cap: 2961378441.0, country: "United States", ipo_year: "2021", sector: "Technology", volume: 113805, industry: "EDP Services"},
  {ticker: "ALRM", name: "Alarm.com Holdings", website: "https://alarm.com", market_cap: 4144362893.0, country: "United States", ipo_year: "2015", sector: "Technology", volume: 421599, industry: "Computer Software: Prepackaged Software"},
  {ticker: "ALTR", name: "Altair Engineering", website: "https://www.altair.com", market_cap: 4830112140.0, country: "United States", ipo_year: "2017", sector: "Technology", volume: 324306, industry: "Computer Software: Prepackaged Software"},
  {ticker: "AMBA", name: "Ambarella Inc.", website: "https://www.ambarella.com", market_cap: 3552758499.0, country: "United States", ipo_year: "2012", sector: "Technology", volume: 839193, industry: "Semiconductors"},
  {ticker: "AMKR", name: "Amkor Technology", website: "https://amkor.com", market_cap: 5604016994.0, country: "United States", ipo_year: "1998", sector: "Technology", volume: 2735671, industry: "Semiconductors"},
  {ticker: "API", name: "Agora Inc.", website: "https://investor.agora.io", market_cap: 4631349481.0, country: "China", ipo_year: "2020", sector: "Technology", volume: 1203477, industry: "Computer Software: Prepackaged Software"},
  {ticker: "APPF", name: "AppFolio", website: "https://www.appfolio.com", market_cap: 4846885914.0, country: "United States", ipo_year: "2015", sector: "Technology", volume: 248660, industry: "Computer Software: Prepackaged Software"},
  {ticker: "APPN", name: "Appian Corporation", website: "https://appian.com", market_cap: 9304962630.0, country: "United States", ipo_year: "2017", sector: "Technology", volume: 1807137, industry: "EDP Services"},
  {ticker: "APPS", name: "Digital Turbine", website: "https://www.digitalturbine.com", market_cap: 6305354214.0, country: "United States", ipo_year: nil, sector: "Technology", volume: 2370026, industry: "Computer Software: Prepackaged Software"},
  {ticker: "ARRY", name: "Array Technologies", website: "https://ir.arraytechinc.com", market_cap: 2058580310.0, country: "United States", ipo_year: "2020", sector: "Technology", volume: 5248996, industry: "Semiconductors"},
  {ticker: "ARW", name: "Arrow Electronics", website: "https://www.arrow.com", market_cap: 8157452018.0, country: "United States", ipo_year: nil, sector: "Technology", volume: 1448281, industry: "Electronic Components"},
  {ticker: "ASAN", name: "Asana", website: "https://asana.com", market_cap: 9457890990.0, country: nil, ipo_year: "2020", sector: "Technology", volume: 6754187, industry: "Retail: Computer Software & Peripheral Equipment"},
  {ticker: "AVT", name: "Avnet", website: "https://www.avnet.com", market_cap: 3865654604.0, country: "United States", ipo_year: nil, sector: "Technology", volume: 978329, industry: "Electronic Components"},
  {ticker: "AYX", name: "Alteryx", website: "https://www.alteryx.com", market_cap: 5740902696.0, country: "United States", ipo_year: "2017", sector: "Technology", volume: 895622, industry: "Computer Software: Prepackaged Software"},
  {ticker: "AZPN", name: "Aspen Technology", website: "https://www.aspentech.com", market_cap: 9321445334.0, country: "United States", ipo_year: "1994", sector: "Technology", volume: 622078, industry: "EDP Services"},
  {ticker: "BAND", name: "Bandwidth", website: "https://www.bandwidth.com", market_cap: 3308712330.0, country: "United States", ipo_year: "2017", sector: "Technology", volume: 303698, industry: "Computer Software: Prepackaged Software"},
  {ticker: "BB", name: "BlackBerry Limited", website: "https://www.blackberry.com", market_cap: 7304226893.0, country: "Canada", ipo_year: nil, sector: "Technology", volume: 38275497, industry: "Computer Software: Prepackaged Software"},
  {ticker: "BIGC", name: "BigCommerce Holdings Inc. Series 1", website: "https://fintel.io/sf/us/bigc", market_cap: 4460975910.0, country: "United States", ipo_year: "2020", sector: "Technology", volume: 1294543, industry: "Computer Software: Prepackaged Software"},
  {ticker: "BILL", name: "Bill.com Holdings", website: "https://www.bill.com", market_cap: 16670847564.0, country: nil, ipo_year: "2019", sector: "Technology", volume: 1441485, industry: "Computer Software: Prepackaged Software"},
  {ticker: "BL", name: "BlackLine", website: "https://www.blackline.com", market_cap: 6275978174.0, country: "United States", ipo_year: "2016", sector: "Technology", volume: 540365, industry: "Computer Software: Prepackaged Software"},
  {ticker: "BLKB", name: "Blackbaud", website: "https://www.blackbaud.com", market_cap: 3703408657.0, country: "United States", ipo_year: "2004", sector: "Technology", volume: 932453, industry: "Computer Software: Prepackaged Software"},
  {ticker: "BMBL", name: "Bumble", website: "https://bumble.com", market_cap: 6018704573.0, country: "United States", ipo_year: "2021", sector: "Technology", volume: 5195874, industry: "Computer Software: Programming Data Processing"},
  {ticker: "BOX", name: "Box", website: "https://www.box.com", market_cap: 4068103657.0, country: "United States", ipo_year: "2015", sector: "Technology", volume: 3999831, industry: "Computer Software: Prepackaged Software"},
  {ticker: "BRKS", name: "Brooks Automation Inc.", website: "https://www.brooks.com", market_cap: 6811524115.0, country: "United States", ipo_year: "1995", sector: "Technology", volume: 2165123, industry: "Industrial Machinery/Components"},
  {ticker: "CACI", name: "CACI International", website: "https://www.caci.com", market_cap: 6141558326.0, country: "United States", ipo_year: nil, sector: "Technology", volume: 655963, industry: "EDP Services"},
  {ticker: "CALX", name: "Calix Inc", website: "https://www.calix.com", market_cap: 2678188445.0, country: "United States", ipo_year: "2010", sector: "Technology", volume: 1180329, industry: "Computer Software: Prepackaged Software"},
  {ticker: "CCMP", name: "CMC Materials", website: "https://www.cmcmaterials.com", market_cap: 4385734643.0, country: "United States", ipo_year: "2000", sector: "Technology", volume: 639406, industry: "Semiconductors"},
  {ticker: "CLDR", name: "Cloudera", website: "https://www.cloudera.com", market_cap: 4596535218.0, country: "Canada", ipo_year: "2017", sector: "Technology", volume: 18966025, industry: "Computer Software: Prepackaged Software"},
  {ticker: "CNXC", name: "Concentrix Corporation", website: "https://www.concentrix.com", market_cap: 8334186617.0, country: "United States", ipo_year: nil, sector: "Technology", volume: 714519, industry: "Computer Software: Prepackaged Software"},
  {ticker: "COIN", name: "Coinbase Global", website: "https://www.coinbase.com", market_cap: 47844141393.0, country: "United States", ipo_year: nil, sector: "Technology", volume: 3259157, industry: "EDP Services"},
  {ticker: "COMM", name: "CommScope Holding Company", website: "https://www.commscope.com", market_cap: 4083614007.0, country: "United States", ipo_year: "2013", sector: "Technology", volume: 3966463, industry: "Radio And Television Broadcasting And Communications Equipment"},
  {ticker: "COMP", name: "Compass", website: "https://www.compass.state.pa.us", market_cap: 5511683515.0, country: nil, ipo_year: "2021", sector: "Technology", volume: 338842, industry: "EDP Services"},
  {ticker: "COUP", name: "Coupa Software Incorporated", website: "https://www.coupa.com", market_cap: 18073994900.0, country: "United States", ipo_year: "2016", sector: "Technology", volume: 1436644, industry: "Computer Software: Prepackaged Software"},
  {ticker: "DOMO", name: "Domo Inc.", website: "https://www.domo.com", market_cap: 2476472033.0, country: "United States", ipo_year: "2018", sector: "Technology", volume: 901185, industry: "Computer Software: Prepackaged Software"},
  {ticker: "CRNC", name: "Cerence", website: "https://cerence.com", market_cap: 4127768770.0, country: "United States", ipo_year: nil, sector: "Technology", volume: 483923, industry: "EDP Services"},
  {ticker: "CRSR", name: "Corsair Gaming", website: "https://www.corsair.com/us/en/gaming", market_cap: 2943545055.0, country: "United States", ipo_year: "2020", sector: "Technology", volume: 3962776, industry: "Computer Manufacturing"},
  {ticker: "CRUS", name: "Cirrus Logic", website: "https://www.cirrus.com", market_cap: 4570967569.0, country: "United States", ipo_year: "1989", sector: "Technology", volume: 972951, industry: "Semiconductors"},
  {ticker: "CRWD", name: "CrowdStrike Holdings", website: "https://www.crowdstrike.com", market_cap: 55303278454.0, country: "United States", ipo_year: "2019", sector: "Technology", volume: 5985726, industry: "EDP Services"},
  {ticker: "CSOD", name: "Cornerstone OnDemand", website: "https://www.cornerstoneondemand.com", market_cap: 3376840627.0, country: "United States", ipo_year: "2011", sector: "Technology", volume: 557101, industry: "Computer Software: Prepackaged Software"},
  {ticker: "CVLT", name: "Commvault Systems", website: "https://www.commvault.com", market_cap: 3578540393.0, country: "United States", ipo_year: "2006", sector: "Technology", volume: 776276, industry: "Computer Software: Prepackaged Software"},
  {ticker: "CYBR", name: "CyberArk Software Ltd.", website: "https://www.cyberark.com", market_cap: 5507110784.0, country: "Israel", ipo_year: "2014", sector: "Technology", volume: 981386, industry: "Computer Software: Prepackaged Software"},
  {ticker: "DAVA", name: "Endava plc", website: "https://www.endava.com", market_cap: 6227708812.0, country: nil, ipo_year: "2018", sector: "Technology", volume: 87776, industry: "EDP Services"},
  {ticker: "DCT", name: "Duck Creek Technologies", website: "https://www.duckcreek.com", market_cap: 5372776502.0, country: "United States", ipo_year: "2020", sector: "Technology", volume: 717161, industry: "Retail: Computer Software & Peripheral Equipment"},
  {ticker: "DDD", name: "3D Systems Corporation", website: "https://www.3dsystems.com", market_cap: 3495140764.0, country: "United States", ipo_year: nil, sector: "Technology", volume: 4423432, industry: "Computer peripheral equipment"},
  {ticker: "DDOG", name: "Datadog", website: "https://www.datadoghq.com", market_cap: 31843674944.0, country: "United States", ipo_year: "2019", sector: "Technology", volume: 4717184, industry: "Computer Software: Prepackaged Software"},
  {ticker: "DIOD", name: "Diodes Incorporated", website: "https://www.diodes.com", market_cap: 3346253625.0, country: "United States", ipo_year: nil, sector: "Technology", volume: 584862, industry: "Semiconductors"},
  {ticker: "DM", name: "Desktop Metal", website: "https://www.desktopmetal.com", market_cap: 3215093095.0, country: nil, ipo_year: "2019", sector: "Technology", volume: 7558149, industry: "Industrial Machinery/Components"},
  {ticker: "DNB", name: "Dun & Bradstreet Holdings", website: "https://www.merriam-webster.com/dictionary/dun", market_cap: 9059595342.0, country: "United States", ipo_year: "2020", sector: "Technology", volume: 1267966, industry: "EDP Services"},
  {ticker: "DOCN", name: "DigitalOcean Holdings", website: "https://www.digitalocean.com", market_cap: 5008482855.0, country: nil, ipo_year: "2021", sector: "Technology", volume: 1143544, industry: "Retail: Computer Software & Peripheral Equipment"},
  {ticker: "DOCU", name: "DocuSign", website: "https://www.docusign.com", market_cap: 53468603354.0, country: "United States", ipo_year: "2018", sector: "Technology", volume: 6094573, industry: "EDP Services"},
  {ticker: "DOX", name: "Amdocs Limited", website: "https://www.amdocs.com", market_cap: 9937863900.0, country: "Guernsey", ipo_year: nil, sector: "Technology", volume: 1639332, industry: "EDP Services"},
  {ticker: "DQ", name: "DAQO New Energy Corp.", website: "www.dqsolar.com", market_cap: 4447571590.0, country: "China", ipo_year: "2010", sector: "Technology", volume: 3527143, industry: "Semiconductors"},
  {ticker: "DV", name: "DoubleVerify Holdings", website: "https://doubleverify.com", market_cap: 6075852971.0, country: nil, ipo_year: "2021", sector: "Technology", volume: 506821, industry: "Computer Software: Prepackaged Software"},
  {ticker: "DXC", name: "DXC Technology Company ", website: nil, market_cap: 9241848657.0, country: nil, ipo_year: nil, sector: "Technology", volume: 6043767, industry: "EDP Services"},
  {ticker: "EEFT", name: "Euronet Worldwide", website: "www.euronetworldwide.com", market_cap: 7538934178.0, country: "United States", ipo_year: "1997", sector: "Technology", volume: 361726, industry: "EDP Services"},
  {ticker: "EGHT", name: "8x8 Inc", website: "https://www.8x8.com", market_cap: 2883564164.0, country: "United States", ipo_year: nil, sector: "Technology", volume: 1365546, industry: "EDP Services"},
  {ticker: "ENV", name: "Envestnet Inc", website: "https://www.envestnet.com", market_cap: 4205780228.0, country: "United States", ipo_year: "2010", sector: "Technology", volume: 460817, industry: "EDP Services"},
  {ticker: "ETWO", name: "E2open Parent Holdings", website: "https://www.e2open.com", market_cap: 2355720114.0, country: nil, ipo_year: "2020", sector: "Technology", volume: 2524716, industry: "Computer Software: Prepackaged Software"},
  {ticker: "EVBG", name: "Everbridge", website: "https://www.everbridge.com", market_cap: 4895862635.0, country: "United States", ipo_year: "2016", sector: "Technology", volume: 728929, industry: "Retail: Computer Software & Peripheral Equipment"},
  {ticker: "EVTC", name: "Evertec", website: "https://www.evertecinc.com/en", market_cap: 3084983512.0, country: "Puerto Rico", ipo_year: "2013", sector: "Technology", volume: 570156, industry: "EDP Services"},
  {ticker: "EXLS", name: "ExlService Holdings", website: "https://www.exlservice.com", market_cap: 3537477969.0, country: "United States", ipo_year: "2006", sector: "Technology", volume: 276492, industry: "Retail: Computer Software & Peripheral Equipment"},
  {ticker: "FB", name: "Facebook", website: "https://web.facebook.com", market_cap: 934739337176.0, country: "United States", ipo_year: "2012", sector: "Technology", volume: 23024990, industry: "EDP Services"},
  {ticker: "FEYE", name: "FireEye", website: "https://www.fireeye.com", market_cap: 4911974746.0, country: "United States", ipo_year: "2013", sector: "Technology", volume: 6657702, industry: "Computer Software: Prepackaged Software"},
  {ticker: "FLEX", name: "Flex Ltd.", website: "https://flex.com", market_cap: 8254283148.0, country: "Singapore", ipo_year: "1994", sector: "Technology", volume: 7765532, industry: "Electrical Products"},
  {ticker: "FLYW", name: "Flywire Corporation Voting", website: "https://www.flywire.com", market_cap: 3437147922.0, country: "United States", ipo_year: "2021", sector: "Technology", volume: 252192, industry: "EDP Services"},
  {ticker: "FORM", name: "FormFactor Inc. FormFactor", website: "https://www.formfactor.com", market_cap: 2608899518.0, country: "United States", ipo_year: "2003", sector: "Technology", volume: 748861, industry: "Semiconductors"},
  {ticker: "FOUR", name: "Shift4 Payments", website: "https://www.shift4.com", market_cap: 7969423981.0, country: "United States", ipo_year: "2020", sector: "Technology", volume: 819298, industry: "EDP Services"},
  {ticker: "FROG", name: "JFrog Ltd.", website: "https://jfrog.com", market_cap: 4375662910.0, country: "United States", ipo_year: "2020", sector: "Technology", volume: 1062049, industry: "Computer Software: Prepackaged Software"},
  {ticker: "FSLY", name: "Fastly", website: "https://www.fastly.com", market_cap: 6590272000.0, country: nil, ipo_year: "2019", sector: "Technology", volume: 6348537, industry: "Computer Software: Prepackaged Software"},
  {ticker: "GWRE", name: "Guidewire Software", website: "https://www.guidewire.com", market_cap: 9359895846.0, country: "United States", ipo_year: "2012", sector: "Technology", volume: 1981696, industry: "Computer Software: Prepackaged Software"},
  {ticker: "HIMX", name: "Himax Technologies Inc.", website: "https://www.himax.com.tw", market_cap: 2437248310.0, country: "Taiwan", ipo_year: "2006", sector: "Technology", volume: 3494804, industry: "Semiconductors"},
  {ticker: "HUBS", name: "HubSpot", website: "https://www.hubspot.com", market_cap: 27733149829.0, country: "United States", ipo_year: "2014", sector: "Technology", volume: 735234, industry: "Computer Software: Prepackaged Software"},
  {ticker: "IPGP", name: "IPG Photonics Corporation", website: "https://www.ipgphotonics.com", market_cap: 10900032418.0, country: "United States", ipo_year: "2006", sector: "Technology", volume: 968979, industry: "Semiconductors"},
  {ticker: "JAMF", name: "Jamf Holding Corp.", website: "https://www.jamf.com", market_cap: 3832436604.0, country: "United States", ipo_year: "2020", sector: "Technology", volume: 759040, industry: "Computer Software: Prepackaged Software"},
  {ticker: "JBL", name: "Jabil", website: "https://www.jabil.com", market_cap: 8282094621.0, country: "United States", ipo_year: "1993", sector: "Technology", volume: 2434757, industry: "Electrical Products"},
  {ticker: "JCOM", name: "j2 Global", website: "https://www.j2global.com", market_cap: 5931802915.0, country: "United States", ipo_year: "1999", sector: "Technology", volume: 645389, industry: "Telecommunications Equipment"},
  {ticker: "JKS", name: "JinkoSolar Holding Company Limited", website: "https://www.jinkosolar.com/en", market_cap: 1876165817.0, country: "China", ipo_year: "2010", sector: "Technology", volume: 1672259, industry: "Semiconductors"},
  {ticker: "JNPR", name: "Juniper Networks", website: "https://www.juniper.net", market_cap: 8826041432.0, country: "United States", ipo_year: "1999", sector: "Technology", volume: 10516088, industry: "Computer peripheral equipment"},
  {ticker: "KC", name: "Kingsoft Cloud Holdings Limited", website: "https://en.ksyun.com", market_cap: 7715854116.0, country: "China", ipo_year: "2020", sector: "Technology", volume: 8766077, industry: "Computer Software: Prepackaged Software"},
  {ticker: "KLIC", name: "Kulicke and Soffa Industries", website: "https://www.kns.com", market_cap: 3349029230.0, country: "Singapore", ipo_year: nil, sector: "Technology", volume: 1212637, industry: "Semiconductors"},
  {ticker: "KNBE", name: "KnowBe4", website: "https://www.knowbe4.com", market_cap: 5711170796.0, country: "United States", ipo_year: "2021", sector: "Technology", volume: 4308412, industry: "Computer Software: Programming Data Processing"},
  {ticker: "LAZR", name: "Luminar Technologies Inc. ", website: nil, market_cap: 7955474588.0, country: "United States", ipo_year: "2019", sector: "Technology", volume: 6001197, industry: "EDP Services"},
  {ticker: "LFUS", name: "Littelfuse", website: "https://www.littelfuse.com", market_cap: 5868945283.0, country: "United States", ipo_year: nil, sector: "Technology", volume: 260197, industry: "Electronic Components"},
  {ticker: "LITE", name: "Lumentum Holdings", website: "https://www.lumentum.com", market_cap: 6073518000.0, country: "United States", ipo_year: nil, sector: "Technology", volume: 1005477, industry: "Computer peripheral equipment"},
  {ticker: "LPSN", name: "LivePerson", website: "https://www.liveperson.com", market_cap: 4246851239.0, country: "United States", ipo_year: "2000", sector: "Technology", volume: 863667, industry: "EDP Services"},
  {ticker: "LSCC", name: "Lattice Semiconductor Corporation", website: "https://www.latticesemi.com", market_cap: 6929997963.0, country: "United States", ipo_year: nil, sector: "Technology", volume: 3142809, industry: "Semiconductors"},
  {ticker: "MDLA", name: "Medallia", website: "https://www.medallia.com", market_cap: 5051101979.0, country: "United States", ipo_year: "2019", sector: "Technology", volume: 2008179, industry: "EDP Services"},
  {ticker: "MIME", name: "Mimecast Limited", website: "https://www.mimecast.com", market_cap: 3467654569.0, country: "United Kingdom", ipo_year: "2015", sector: "Technology", volume: 2019249, industry: "EDP Services"},
  {ticker: "NPEGF", name: "Nippon Electric Glass Co., Ltd.", website: nil, market_cap: 2.15, country: nil, ipo_year: nil, sector: nil, volume: 30, industry: nil},
  {ticker: "MSP", name: "Datto Holding Corp.", website: "https://www.datto.com", market_cap: 4281870446.0, country: "United States", ipo_year: "2020", sector: "Technology", volume: 282379, industry: "Computer Software: Prepackaged Software"},
  {ticker: "MSTR", name: "MicroStrategy Incorporated", website: "https://www.microstrategy.com", market_cap: 6300782511.0, country: "United States", ipo_year: "1998", sector: "Technology", volume: 1541490, industry: "Computer Software: Prepackaged Software"},
  {ticker: "MTSI", name: "MACOM Technology Solutions Holdings", website: "https://www.macom.com", market_cap: 4028832290.0, country: "United States", ipo_year: "2012", sector: "Technology", volume: 614412, industry: "Semiconductors"},
  {ticker: "MXL", name: "MaxLinear", website: "www.maxlinear.com", market_cap: 2922405525.0, country: "United States", ipo_year: "2010", sector: "Technology", volume: 951779, industry: "Semiconductors"},
  {ticker: "NATI", name: "National Instruments Corporation", website: "https://www.ni.com", market_cap: 5559081201.0, country: "United States", ipo_year: "1995", sector: "Technology", volume: 896069, industry: "Computer Software: Prepackaged Software"},
  {ticker: "NCNO", name: "nCino", website: "https://www.ncino.com", market_cap: 6244290720.0, country: "United States", ipo_year: "2020", sector: "Technology", volume: 1002346, industry: "Computer Software: Prepackaged Software"},
  {ticker: "NET", name: "Cloudflare", website: "https://www.cloudflare.com", market_cap: 31584452493.0, country: "United States", ipo_year: "2019", sector: "Technology", volume: 7300753, industry: "EDP Services"},
  {ticker: "NEWR", name: "New Relic", website: "https://newrelic.com", market_cap: 4544061721.0, country: "United States", ipo_year: "2014", sector: "Technology", volume: 597228, industry: "Computer Software: Prepackaged Software"},
  {ticker: "NOW", name: "ServiceNow", website: "https://www.servicenow.com", market_cap: 105385888581.0, country: "United States", ipo_year: "2012", sector: "Technology", volume: 2236671, industry: "Computer Software: Prepackaged Software"},
  {ticker: "NSIT", name: "Insight Enterprises", website: "https://www.insight.com", market_cap: 3463234051.0, country: "United States", ipo_year: "1995", sector: "Technology", volume: 397363, industry: "EDP Services"},
  {ticker: "NTCT", name: "NetScout Systems", website: "https://www.netscout.com", market_cap: 2148410878.0, country: "United States", ipo_year: "1999", sector: "Technology", volume: 926206, industry: "EDP Services"},
  {ticker: "NTNX", name: "Nutanix", website: "https://www.nutanix.com", market_cap: 7806737688.0, country: "United States", ipo_year: "2016", sector: "Technology", volume: 11588050, industry: "EDP Services"},
  {ticker: "OLED", name: "Universal Display Corporation", website: "https://oled.com", market_cap: 9848894805.0, country: "United States", ipo_year: nil, sector: "Technology", volume: 826687, industry: "Semiconductors"},
  {ticker: "OLO", name: "Olo", website: "https://www.olo.com", market_cap: 5568632096.0, country: nil, ipo_year: "2021", sector: "Technology", volume: 1805367, industry: "Computer Software: Prepackaged Software"},
  {ticker: "ONTO", name: "Onto Innovation", website: "https://ontoinnovation.com", market_cap: 3362649006.0, country: "United States", ipo_year: nil, sector: "Technology", volume: 639733, industry: "Semiconductors"},
  {ticker: "PATH", name: "UiPath", website: "https://www.uipath.com", market_cap: 35490960297.0, country: nil, ipo_year: "2021", sector: "Technology", volume: 3173438, industry: "Computer Software: Prepackaged Software"},
  {ticker: "PAY", name: "Paymentus Holdings", website: "https://www.paymentus.com", market_cap: 3433959130.0, country: nil, ipo_year: "2021", sector: "Technology", volume: 99611, industry: "Retail: Computer Software & Peripheral Equipment"},
  {ticker: "PD", name: "PagerDuty", website: "https://www.pagerduty.com", market_cap: 3656821944.0, country: nil, ipo_year: "2019", sector: "Technology", volume: 1703648, industry: "Retail: Computer Software & Peripheral Equipment"},
  {ticker: "PEGA", name: "Pegasystems", website: "https://www.pega.com", market_cap: 11145794148.0, country: "United States", ipo_year: "1996", sector: "Technology", volume: 1262823, industry: "EDP Services"},
  {ticker: "PING", name: "Ping Identity Holding Corp.", website: "https://www.pingidentity.com/en", market_cap: 1945453961.0, country: "United States", ipo_year: "2019", sector: "Technology", volume: 1369524, industry: "EDP Services"},
  {ticker: "PLAN", name: "Anaplan", website: "https://www.anaplan.com", market_cap: 7934208733.0, country: "United States", ipo_year: "2018", sector: "Technology", volume: 2711458, industry: "Computer Software: Prepackaged Software"},
  {ticker: "PLXS", name: "Plexus Corp.", website: "https://www.plexus.com", market_cap: 2496254716.0, country: "United States", ipo_year: nil, sector: "Technology", volume: 283572, industry: "Electrical Products"},
  {ticker: "POWI", name: "Power Integrations", website: "https://www.power.com", market_cap: 4780841839.0, country: "United States", ipo_year: "1997", sector: "Technology", volume: 462432, industry: "Semiconductors"},
  {ticker: "PRFT", name: "Perficient", website: "https://www.perficient.com", market_cap: 2635813326.0, country: "United States", ipo_year: "1999", sector: "Technology", volume: 457698, industry: "EDP Services"},
  {ticker: "PSTG", name: "Pure Storage", website: "https://www.purestorage.com", market_cap: 5356350272.0, country: nil, ipo_year: "2015", sector: "Technology", volume: 6272220, industry: "Electronic Components"},
  {ticker: "QCOM", name: "QUALCOMM Incorporated", website: "https://www.qualcomm.com", market_cap: 150024000000.0, country: "United States", ipo_year: "1991", sector: "Technology", volume: 12752355, industry: "Computer peripheral equipment"},
  {ticker: "QLYS", name: "Qualys", website: "https://www.qualys.com", market_cap: 4147082928.0, country: "United States", ipo_year: "2012", sector: "Technology", volume: 1396755, industry: "Computer Software: Prepackaged Software"},
  {ticker: "QTWO", name: "Q2 Holdings", website: "investors.q2ebanking.com/investor-relations/overview/default.aspx", market_cap: 5850121709.0, country: nil, ipo_year: "2014", sector: "Technology", volume: 633449, industry: "EDP Services"},
  {ticker: "RAMP", name: "LiveRamp Holdings", website: "https://liveramp.com", market_cap: 2839156142.0, country: "United States", ipo_year: "2018", sector: "Technology", volume: 1830728, industry: "EDP Services"},
  {ticker: "RBLX", name: "Roblox Corporation", website: "https://www.roblox.com", market_cap: 46236124908.0, country: nil, ipo_year: "2021", sector: "Technology", volume: 11115615, industry: "EDP Services"},
  {ticker: "RIOT", name: "Riot Blockchain Inc.  ", website: nil, market_cap: 3087501476.0, country: "United States", ipo_year: nil, sector: "Technology", volume: 10771697, industry: "Retail: Computer Software & Peripheral Equipment"},
  {ticker: "RMBS", name: "Rambus", website: "https://www.rambus.com", market_cap: 2505492007.0, country: "United States", ipo_year: "1997", sector: "Technology", volume: 1640441, industry: "Semiconductors"},
  {ticker: "RPAY", name: "Repay Holdings Corporation", website: "https://www.repay.com", market_cap: 2247763262.0, country: "United States", ipo_year: "2018", sector: "Technology", volume: 1152854, industry: "EDP Services"},
  {ticker: "RPD", name: "Rapid7", website: "https://www.rapid7.com", market_cap: 5181113829.0, country: "United States", ipo_year: "2015", sector: "Technology", volume: 856617, industry: "Computer Software: Prepackaged Software"},
  {ticker: "RXT", name: "Rackspace Technology", website: "https://www.rackspace.com", market_cap: 3998384602.0, country: "United States", ipo_year: "2020", sector: "Technology", volume: 2134018, industry: "EDP Services"},
  {ticker: "SABR", name: "Sabre Corporation", website: "https://www.sabre.com", market_cap: 4450126541.0, country: "United States", ipo_year: "2014", sector: "Technology", volume: 8112609, industry: "EDP Services"},
  {ticker: "SAIC", name: "SCIENCE APPLICATIONS INTERNATIONAL CORPORATION", website: "https://www.saic.com", market_cap: 5307902437.0, country: nil, ipo_year: nil, sector: "Technology", volume: 1137620, industry: "EDP Services"},
  {ticker: "SAIL", name: "SailPoint Technologies Holdings", website: "https://www.sailpoint.com", market_cap: 4614588428.0, country: "United States", ipo_year: "2017", sector: "Technology", volume: 3268032, industry: "Computer Software: Prepackaged Software"},
  {ticker: "SANM", name: "Sanmina Corporation", website: "https://www.sanmina.com", market_cap: 2537431477.0, country: "United States", ipo_year: "1993", sector: "Technology", volume: 1162189, industry: "Electrical Products"},
  {ticker: "SATS", name: "EchoStar  Corporation", website: "echostar.com", market_cap: 2426445152.0, country: "United States", ipo_year: nil, sector: "Technology", volume: 1266721, industry: "Radio And Television Broadcasting And Communications Equipment"},
  {ticker: "SE", name: "Sea Limited", website: "https://sealimited.com", market_cap: 148147219980.0, country: "United States", ipo_year: "2017", sector: "Technology", volume: 2491562, industry: "Computer Software: Prepackaged Software"},
  {ticker: "SEMR", name: "SEMrush Holdings", website: "https://www.semrush.com/company", market_cap: 2378866359.0, country: nil, ipo_year: "2021", sector: "Technology", volume: 834957, industry: "EDP Services"},
  {ticker: "SHLS", name: "Shoals Technologies Group", website: "https://investors.shoals.com/overview/default.aspx", market_cap: 5133320989.0, country: "United States", ipo_year: "2021", sector: "Technology", volume: 6216129, industry: "Semiconductors"},
  {ticker: "SIMO", name: "Silicon Motion Technology Corporation", website: "https://www.siliconmotion.com", market_cap: 2191553978.0, country: "Taiwan", ipo_year: "2005", sector: "Technology", volume: 317875, industry: "Semiconductors"},
  {ticker: "SITM", name: "SiTime Corporation", website: "https://www.sitime.com", market_cap: 2250218307.0, country: "United States", ipo_year: "2019", sector: "Technology", volume: 178966, industry: "Semiconductors"},
  {ticker: "SKLZ", name: "Skillz", website: "https://www.skillz.com", market_cap: 7584831280.0, country: nil, ipo_year: "2020", sector: "Technology", volume: 12891391, industry: "EDP Services"},
  {ticker: "SLAB", name: "Silicon Laboratories", website: "https://www.silabs.com", market_cap: 6308258918.0, country: "United States", ipo_year: "2000", sector: "Technology", volume: 956692, industry: "Semiconductors"},
  {ticker: "SMAR", name: "Smartsheet", website: "https://www.smartsheet.com", market_cap: 8795370858.0, country: "United States", ipo_year: "2018", sector: "Technology", volume: 4554844, industry: "EDP Services"},
  {ticker: "SMTC", name: "Semtech Corporation", website: "https://www.semtech.com", market_cap: 4116978649.0, country: "United States", ipo_year: nil, sector: "Technology", volume: 666572, industry: "Semiconductors"},
  {ticker: "SNAP", name: "Snap", website: "https://www.fns.usda.gov/snap", market_cap: 98963111242.0, country: "United States", ipo_year: "2017", sector: "Technology", volume: 19266918, industry: "Computer Software: Prepackaged Software"},
  {ticker: "SNOW", name: "Snowflake", website: "https://www.snowflake.com", market_cap: 73847340000.0, country: "United States", ipo_year: "2020", sector: "Technology", volume: 6411740, industry: "Computer Software: Prepackaged Software"},
  {ticker: "SNX", name: "Synnex Corporation", website: "https://www.synnexcorp.com", market_cap: 6106255218.0, country: "United States", ipo_year: "2003", sector: "Technology", volume: 579119, industry: "EDP Services"},
  {ticker: "SPLK", name: "Splunk", website: "https://www.splunk.com", market_cap: 21160093939.0, country: "United States", ipo_year: "2012", sector: "Technology", volume: 4375587, industry: "Computer Software: Prepackaged Software"},
  {ticker: "SPSC", name: "SPS Commerce", website: "https://www.spscommerce.com", market_cap: 3523201750.0, country: "United States", ipo_year: "2010", sector: "Technology", volume: 273924, industry: "EDP Services"},
  {ticker: "SPT", name: "Sprout Social Inc", website: "https://sproutsocial.com", market_cap: 4774526158.0, country: "United States", ipo_year: "2019", sector: "Technology", volume: 1126340, industry: "EDP Services"},
  {ticker: "SPWR", name: "SunPower Corporation", website: "https://us.sunpower.com", market_cap: 4376861525.0, country: "United States", ipo_year: "2005", sector: "Technology", volume: 5063451, industry: "Semiconductors"},
  {ticker: "SQ", name: "Square", website: "https://squareup.com", market_cap: 107945138720.0, country: "United States", ipo_year: "2015", sector: "Technology", volume: 8469326, industry: "Computer Software: Prepackaged Software"},
  {ticker: "SQSP", name: "Squarespace", website: "https://www.squarespace.com", market_cap: 8647712034.0, country: nil, ipo_year: "2021", sector: "Technology", volume: 457200, industry: "EDP Services"},
  {ticker: "STEM", name: "Stem", website: "https://www.stem.com", market_cap: 4412725756.0, country: "United States", ipo_year: "2020", sector: "Technology", volume: 11858536, industry: "Computer Software: Prepackaged Software"},
  {ticker: "SUMO", name: "Sumo Logic", website: "https://www.sumologic.com", market_cap: 2345398777.0, country: "United States", ipo_year: "2020", sector: "Technology", volume: 4234233, industry: "Retail: Computer Software & Peripheral Equipment"},
  {ticker: "SWCH", name: "Switch", website: "https://www.nintendo.com/switch", market_cap: 5295117031.0, country: nil, ipo_year: "2017", sector: "Technology", volume: 2088454, industry: "EDP Services"},
  {ticker: "SWI", name: "SolarWinds Corporation", website: "https://www.solarwinds.com", market_cap: 5378701227.0, country: "United States", ipo_year: "2018", sector: "Technology", volume: 1006125, industry: "Computer Software: Prepackaged Software"},
  {ticker: "SYKE", name: "Sykes Enterprises Incorporated", website: "https://www.sykes.com", market_cap: 2126168361.0, country: "United States", ipo_year: "1996", sector: "Technology", volume: 8151810, industry: "EDP Services"},
  {ticker: "TDC", name: "Teradata Corporation", website: "https://www.teradata.com", market_cap: 4914464000.0, country: "United States", ipo_year: nil, sector: "Technology", volume: 1342665, industry: "EDP Services"},
  {ticker: "TEAM", name: "Atlassian Corporation Plc", website: "https://www.atlassian.com", market_cap: 66656465411.0, country: "United Kingdom", ipo_year: "2015", sector: "Technology", volume: 2064285, industry: "Computer Software: Prepackaged Software"},
  {ticker: "TENB", name: "Tenable Holdings", website: "https://www.tenable.com", market_cap: 4624890092.0, country: "United States", ipo_year: "2018", sector: "Technology", volume: 2089379, industry: "EDP Services"},
  {ticker: "TLS", name: "Telos Corporation", website: "https://www.telos.com", market_cap: 2370441017.0, country: "United States", ipo_year: "2020", sector: "Technology", volume: 1851592, industry: "EDP Services"},
  {ticker: "TSEM", name: "Tower Semiconductor Ltd.", website: "https://towersemi.com", market_cap: 2872794897.0, country: "Israel", ipo_year: "1994", sector: "Technology", volume: 370880, industry: "Semiconductors"},
  {ticker: "TTD", name: "The Trade Desk", website: "https://www.thetradedesk.com", market_cap: 28965037714.0, country: "United States", ipo_year: "2016", sector: "Technology", volume: 8924062, industry: "EDP Services"},
  {ticker: "TTEC", name: "TTEC Holdings", website: "https://www.ttec.com", market_cap: 4452841718.0, country: "United States", ipo_year: "1996", sector: "Technology", volume: 263336, industry: "Retail: Computer Software & Peripheral Equipment"},
  {ticker: "TUYA", name: "Tuya Inc.", website: "https://www.tuya.com", market_cap: 11760559302.0, country: nil, ipo_year: "2021", sector: "Technology", volume: 834352, industry: "Computer Software: Prepackaged Software"},
  {ticker: "TWTR", name: "Twitter", website: "https://twitter.com", market_cap: 48566005496.0, country: nil, ipo_year: "2013", sector: "Technology", volume: 13212194, industry: "Computer Software: Prepackaged Software"},
  {ticker: "U", name: "Unity Software", website: "https://unity.com", market_cap: 29344408837.0, country: "United States", ipo_year: "2020", sector: "Technology", volume: 5551141, industry: "Retail: Computer Software & Peripheral Equipment"},
  {ticker: "UBER", name: "Uber Technologies", website: "https://www.uber.com", market_cap: 93335613505.0, country: nil, ipo_year: "2019", sector: "Technology", volume: 20543217, industry: "EDP Services"},
  {ticker: "VERX", name: "Vertex", website: "https://www.vrtx.com", market_cap: 3072527594.0, country: "United States", ipo_year: "2020", sector: "Technology", volume: 379473, industry: "EDP Services"},
  {ticker: "VIAV", name: "Viavi Solutions", website: "https://www.viavisolutions.com", market_cap: 3914297506.0, country: "United States", ipo_year: nil, sector: "Technology", volume: 1804087, industry: "Radio And Television Broadcasting And Communications Equipment"},
  {ticker: "VMEO", name: "Vimeo", website: "https://vimeo.com", market_cap: 7107164655.0, country: "United States", ipo_year: nil, sector: "Technology", volume: 3305695, industry: "Computer Software: Programming Data Processing"},
  {ticker: "VNET", name: "21Vianet Group Inc. ", website: nil, market_cap: 3570444297.0, country: "China", ipo_year: "2011", sector: "Technology", volume: 2719615, industry: "EDP Services"},
  {ticker: "VRNS", name: "Varonis Systems", website: "https://www.varonis.com", market_cap: 6031566356.0, country: "United States", ipo_year: "2014", sector: "Technology", volume: 2949773, industry: "Computer Software: Prepackaged Software"},
  {ticker: "VRNT", name: "Verint Systems", website: "https://www.verint.com", market_cap: 2924956620.0, country: "United States", ipo_year: "2002", sector: "Technology", volume: 1399263, industry: "EDP Services"},
  {ticker: "VSAT", name: "ViaSat", website: "https://www.viasat.com", market_cap: 3400191680.0, country: "United States", ipo_year: "1996", sector: "Technology", volume: 642935, industry: "Radio And Television Broadcasting And Communications Equipment"},
  {ticker: "WEX", name: "WEX", website: "https://www.wix.com", market_cap: 8762129925.0, country: "United States", ipo_year: nil, sector: "Technology", volume: 387536, industry: "EDP Services"},
  {ticker: "WK", name: "Workiva", website: "https://www.workiva.com", market_cap: 5375344666.0, country: "United States", ipo_year: "2014", sector: "Technology", volume: 465476, industry: "Computer Software: Prepackaged Software"},
  {ticker: "XM", name: "Qualtrics International", website: "https://www.qualtrics.com", market_cap: 19095230961.0, country: "United States", ipo_year: "2021", sector: "Technology", volume: 826969, industry: "Computer Software: Prepackaged Software"},
  {ticker: "XPER", name: "Xperi Holding Corporation", website: "https://www.xperi.com", market_cap: 2255493427.0, country: "United States", ipo_year: nil, sector: "Technology", volume: 2183943, industry: "Semiconductors"},
  {ticker: "XRX", name: "Xerox Holdings Corporation", website: "https://www.xerox.com", market_cap: 4497326246.0, country: "United States", ipo_year: nil, sector: "Technology", volume: 6654811, industry: "EDP Services"},
  {ticker: "CCCS", name: "CCC Intelligent Solutions Holdings Inc.", website: nil, market_cap: 5.987, country: nil, ipo_year: nil, sector: nil, volume: 666, industry: nil},
  {ticker: "AUOTY", name: "AU Optronics Corp.", website: nil, market_cap: 6.968, country: nil, ipo_year: nil, sector: nil, volume: 144, industry: nil},
  {ticker: "CDK", name: "CDK Global, Inc.", website: nil, market_cap: 5.619, country: nil, ipo_year: nil, sector: nil, volume: 563, industry: nil},
  {ticker: "DNACF", name: "DeNA Co., Ltd.", website: nil, market_cap: 2.176, country: nil, ipo_year: nil, sector: nil, volume: 36, industry: nil},
  {ticker: "YOU", name: "Clear Secure, Inc.", website: nil, market_cap: 3.959, country: nil, ipo_year: nil, sector: nil, volume: 1, industry: nil},
  {ticker: "VNT", name: "Vontier Corporation", website: nil, market_cap: 5.784, country: nil, ipo_year: nil, sector: nil, volume: 1, industry: nil},
  {ticker: "AWEVF", name: "Alphawave IP Group plc", website: nil, market_cap: 3.624, country: nil, ipo_year: nil, sector: nil, volume: 13, industry: nil},
  {ticker: "SHCAY", name: "Sharp Corporation", website: nil, market_cap: 8.558, country: nil, ipo_year: nil, sector: nil, volume: 10, industry: nil},
  {ticker: "VSH", name: "Vishay Intertechnology, Inc.", website: nil, market_cap: 3.281, country: nil, ipo_year: nil, sector: nil, volume: 900, industry: nil},
  {ticker: "SEKEY", name: "Seiko Epson Corporation", website: nil, market_cap: 6.549, country: nil, ipo_year: nil, sector: nil, volume: 17, industry: nil},
  {ticker: "ELUXF", name: "AB Electrolux (publ)", website: nil, market_cap: 7.466, country: nil, ipo_year: nil, sector: nil, volume: 109, industry: nil},
  {ticker: "ASMVY", name: "ASM Pacific Technology Limited", website: nil, market_cap: 5.251, country: nil, ipo_year: nil, sector: nil, volume: 10, industry: nil},
  {ticker: "MKSI", name: "MKS Instruments, Inc.", website: nil, market_cap: 8.105, country: nil, ipo_year: nil, sector: nil, volume: 424, industry: nil},
  {ticker: "SEPJF", name: "Spectris plc", website: nil, market_cap: 5.988, country: nil, ipo_year: nil, sector: nil, volume: 334, industry: nil},
  {ticker: "TYOYY", name: "Taiyo Yuden Co., Ltd.", website: nil, market_cap: 6.714, country: nil, ipo_year: nil, sector: nil, volume: 165, industry: nil},
  {ticker: "IS", name: "ironSource Ltd.", website: nil, market_cap: 9.805, country: nil, ipo_year: nil, sector: nil, volume: 1, industry: nil},
  {ticker: "LPL", name: "LG Display Co., Ltd.", website: nil, market_cap: 6.394, country: nil, ipo_year: nil, sector: nil, volume: 534, industry: nil},
  {ticker: "IRBT", name: "iRobot Corporation", website: nil, market_cap: 2.507, country: nil, ipo_year: nil, sector: nil, volume: 488, industry: nil},
  {ticker: "AACAY", name: "AAC Technologies Holdings Inc.", website: nil, market_cap: 7.229, country: nil, ipo_year: nil, sector: nil, volume: 67, industry: nil},
  {ticker: "CIEN", name: "Ciena Corporation", website: nil, market_cap: 8.655, country: nil, ipo_year: nil, sector: nil, volume: 1, industry: nil},
  {ticker: "TISNF", name: "TIS Inc.", website: nil, market_cap: 6.508, country: nil, ipo_year: nil, sector: nil, volume: 926, industry: nil},
  {ticker: "ROHCY", name: "ROHM Co., Ltd.", website: nil, market_cap: 9.121, country: nil, ipo_year: nil, sector: nil, volume: 857, industry: nil},
  {ticker: "FN", name: "Fabrinet", website: nil, market_cap: 3.345, country: nil, ipo_year: nil, sector: nil, volume: 129, industry: nil},
  {ticker: "MANT", name: "ManTech International Corporation", website: nil, market_cap: 3.329, country: nil, ipo_year: nil, sector: nil, volume: 128, industry: nil},
  {ticker: "CSIOY", name: "Casio Computer Co.,Ltd.", website: nil, market_cap: 4.089, country: nil, ipo_year: nil, sector: nil, volume: 168, industry: nil},
  {ticker: "ST", name: "Sensata Technologies Holding plc", website: nil, market_cap: 9.599, country: nil, ipo_year: nil, sector: nil, volume: 750, industry: nil},
  {ticker: "SUOPY", name: "Sumco Corporation", website: nil, market_cap: 6.059, country: nil, ipo_year: nil, sector: nil, volume: 160, industry: nil},
  {ticker: "IIVI", name: "II-VI Incorporated", website: nil, market_cap: 6.643, country: nil, ipo_year: nil, sector: nil, volume: 1, industry: nil},
  {ticker: "SONO", name: "Sonos, Inc.", website: nil, market_cap: 4.797, country: nil, ipo_year: nil, sector: nil, volume: 1, industry: nil},
  {ticker: "TMICY", name: "Trend Micro Incorporated", website: nil, market_cap: 7.3, country: nil, ipo_year: nil, sector: nil, volume: 6, industry: nil},
  {ticker: "G", name: "Genpact Limited", website: nil, market_cap: 9.779, country: nil, ipo_year: nil, sector: nil, volume: 938, industry: nil},
  {ticker: "BESIY", name: "BE Semiconductor Industries N.V.", website: nil, market_cap: 6.743, country: nil, ipo_year: nil, sector: nil, volume: 153, industry: nil},
  {ticker: "CRCT", name: "Cricut, Inc.", website: nil, market_cap: 6.272, country: nil, ipo_year: nil, sector: nil, volume: 1, industry: nil},
  {ticker: "AVASF", name: "Avast Plc", website: nil, market_cap: 8.512, country: nil, ipo_year: nil, sector: nil, volume: 2, industry: nil},
  {ticker: "SPMYY", name: "Spirent Communications plc", website: nil, market_cap: 2.492, country: nil, ipo_year: nil, sector: nil, volume: 258, industry: nil},
  {ticker: "STWRY", name: "Software Aktiengesellschaft", website: nil, market_cap: 3.687, country: nil, ipo_year: nil, sector: nil, volume: 1, industry: nil},
  {ticker: "EGHSF", name: "Enghouse Systems Limited", website: nil, market_cap: 2.608, country: nil, ipo_year: nil, sector: nil, volume: 452, industry: nil},
  {ticker: "CFTLF", name: "Chinasoft International Limited", website: nil, market_cap: 5.552, country: nil, ipo_year: nil, sector: nil, volume: 1, industry: nil},
  {ticker: "CMSQY", name: "Computershare Limited", website: nil, market_cap: 7.456, country: nil, ipo_year: nil, sector: nil, volume: 1, industry: nil},
  {ticker: "NVMI", name: "Nova Ltd.", website: nil, market_cap: 2.682, country: nil, ipo_year: nil, sector: nil, volume: 98, industry: nil},
  {ticker: "ROG", name: "Rogers Corporation", website: nil, market_cap: 3.771, country: nil, ipo_year: nil, sector: nil, volume: 71, industry: nil},
  {ticker: "CSIQ", name: "Canadian Solar Inc.", website: nil, market_cap: 2.315, country: nil, ipo_year: nil, sector: nil, volume: 1, industry: nil},
  {ticker: "AEXAY", name: "Atos SE", website: nil, market_cap: 5.559, country: nil, ipo_year: nil, sector: nil, volume: 35, industry: nil},
  {ticker: "STMP", name: "Stamps.com Inc.", website: nil, market_cap: 6.023, country: nil, ipo_year: nil, sector: nil, volume: 385, industry: nil},
  {ticker: "AIXXF", name: "AIXTRON SE", website: nil, market_cap: 3.288, country: nil, ipo_year: nil, sector: nil, volume: 920, industry: nil},
  {ticker: "VZIO", name: "VIZIO Holding Corp.", website: nil, market_cap: 3.993, country: nil, ipo_year: nil, sector: nil, volume: 747, industry: nil},
  {ticker: "TMVWY", name: "TeamViewer AG", website: nil, market_cap: 6.724, country: nil, ipo_year: nil, sector: nil, volume: 49, industry: nil},
  {ticker: "SYNA", name: "Synaptics Incorporated", website: nil, market_cap: 6.11, country: nil, ipo_year: nil, sector: nil, volume: 441, industry: nil},
  {ticker: "TSYHY", name: "TravelSky Technology Limited", website: nil, market_cap: 5.021, country: nil, ipo_year: nil, sector: nil, volume: 5, industry: nil},
  {ticker: "NRSDY", name: "Nordic Semiconductor ASA", website: nil, market_cap: 6.156, country: nil, ipo_year: nil, sector: nil, volume: 3, industry: nil},
  {ticker: "VICR", name: "Vicor Corporation", website: nil, market_cap: 5.161, country: nil, ipo_year: nil, sector: nil, volume: 118, industry: nil},
  {ticker: "DSGX", name: "The Descartes Systems Group Inc", website: nil, market_cap: 6.2, country: nil, ipo_year: nil, sector: nil, volume: 74, industry: nil},
  {ticker: "ESE", name: "ESCO Technologies Inc.", website: nil, market_cap: 2.341, country: nil, ipo_year: nil, sector: nil, volume: 123, industry: nil},
  {ticker: "TIXT", name: "TELUS International (Cda) Inc.", website: nil, market_cap: 8.206, country: nil, ipo_year: nil, sector: nil, volume: 187, industry: nil},
  {ticker: "NOVT", name: "Novanta Inc.", website: nil, market_cap: 5.177, country: nil, ipo_year: nil, sector: nil, volume: 75, industry: nil},
  {ticker: "ALMFF", name: "Altium Limited", website: nil, market_cap: 3.36, country: nil, ipo_year: nil, sector: nil, volume: 485, industry: nil},
  {ticker: "PINS", name: "Pinterest, Inc.", website: nil, market_cap: 36.138, country: nil, ipo_year: nil, sector: nil, volume: 11, industry: nil},
  {ticker: "RZZRY", name: "Razer Inc.", website: nil, market_cap: 2.116, country: nil, ipo_year: nil, sector: nil, volume: 1, industry: nil},
  {ticker: "MAXR", name: "Maxar Technologies Inc.", website: nil, market_cap: 2.197, country: nil, ipo_year: nil, sector: nil, volume: 1, industry: nil},
  {ticker: "NWITY", name: "Network International Holdings plc", website: nil, market_cap: 2.832, country: nil, ipo_year: nil, sector: nil, volume: 11, industry: nil},
  {ticker: "KXSCF", name: "Kinaxis Inc.", website: nil, market_cap: 3.975, country: nil, ipo_year: nil, sector: nil, volume: 1, industry: nil},
  {ticker: "ABNB", name: "Airbnb, Inc.", website: nil, market_cap: 94.333, country: nil, ipo_year: nil, sector: nil, volume: 8, industry: nil},
  {ticker: "TWLO", name: "Twilio Inc.", website: nil, market_cap: 64.649, country: nil, ipo_year: nil, sector: nil, volume: 1, industry: nil},
  {ticker: "DASH", name: "DoorDash, Inc.", website: nil, market_cap: 63.47, country: nil, ipo_year: nil, sector: nil, volume: 3, industry: nil},
  {ticker: "LYFT", name: "Lyft, Inc.", website: nil, market_cap: 17.9, country: nil, ipo_year: nil, sector: nil, volume: 5, industry: nil},
  {ticker: "RUN", name: "Sunrun Inc.", website: nil, market_cap: 9.615, country: nil, ipo_year: nil, sector: nil, volume: 6, industry: nil},
  {ticker: "PSFE", name: "Paysafe Limited", website: nil, market_cap: 7.382, country: nil, ipo_year: nil, sector: nil, volume: 7, industry: nil},
  {ticker: "GCPEF", name: "GCL-Poly Energy Holdings Limited", website: nil, market_cap: 6.373, country: nil, ipo_year: nil, sector: nil, volume: 73, industry: nil},
  {ticker: "FVRR", name: "Fiverr International Ltd.", website: nil, market_cap: 6.149, country: nil, ipo_year: nil, sector: nil, volume: 699, industry: nil},
  {ticker: "PYCR", name: "Paycor HCM, Inc.", website: nil, market_cap: 6.119, country: nil, ipo_year: nil, sector: nil, volume: 1, industry: nil},
  {ticker: "DRKTF", name: "Darktrace plc", website: nil, market_cap: 6.041, country: nil, ipo_year: nil, sector: nil, volume: 7, industry: nil},
  {ticker: "COHR", name: "Coherent, Inc.", website: nil, market_cap: 5.874, country: nil, ipo_year: nil, sector: nil, volume: 254, industry: nil},
  {ticker: "NCR", name: "NCR Corporation", website: nil, market_cap: 5.709, country: nil, ipo_year: nil, sector: nil, volume: 1, industry: nil},
  {ticker: "VTEX", name: "VTEX", website: nil, market_cap: 5.483, country: nil, ipo_year: nil, sector: nil, volume: 1, industry: nil},
  {ticker: "ALIT", name: "Alight, Inc.", website: nil, market_cap: 5.093, country: nil, ipo_year: nil, sector: nil, volume: 2, industry: nil},
  {ticker: "DUOL", name: "Duolingo, Inc.", website: nil, market_cap: 5.112, country: nil, ipo_year: nil, sector: nil, volume: 660, industry: nil},
  {ticker: "AMSSY", name: "ams AG", website: nil, market_cap: 4.984, country: nil, ipo_year: nil, sector: nil, volume: 3, industry: nil},
  {ticker: "CXM", name: "Sprinklr, Inc.", website: nil, market_cap: 4.813, country: nil, ipo_year: nil, sector: nil, volume: 1, industry: nil},
  {ticker: "ATC", name: "Atotech Limited", website: nil, market_cap: 4.556, country: nil, ipo_year: nil, sector: nil, volume: 1, industry: nil},
  {ticker: "RSKD", name: "Riskified Ltd.", website: nil, market_cap: 4.35, country: nil, ipo_year: nil, sector: nil, volume: 1, industry: nil},
  {ticker: "CD", name: "Chindata Group Holdings Limited", website: nil, market_cap: 4.088, country: nil, ipo_year: nil, sector: nil, volume: 1, industry: nil},
  {ticker: "PWSC", name: "PowerSchool Holdings, Inc.", website: nil, market_cap: 4.005, country: nil, ipo_year: nil, sector: nil, volume: 1, industry: nil},
  {ticker: "BLND", name: "Blend Labs, Inc.", website: nil, market_cap: 3.953, country: nil, ipo_year: nil, sector: nil, volume: 1, industry: nil},
  {ticker: "TASK", name: "TaskUs, Inc.", website: nil, market_cap: 3.893, country: nil, ipo_year: nil, sector: nil, volume: 651, industry: nil},
  {ticker: "NOVA", name: "Sunnova Energy International Inc.", website: nil, market_cap: 3.81, country: nil, ipo_year: nil, sector: nil, volume: 2, industry: nil},
  {ticker: "EVCM", name: "EverCommerce Inc.", website: nil, market_cap: 3.795, country: nil, ipo_year: nil, sector: nil, volume: 802, industry: nil},
  {ticker: "ITRI", name: "Itron, Inc.", website: nil, market_cap: 3.619, country: nil, ipo_year: nil, sector: nil, volume: 333, industry: nil},
  {ticker: "MTTR", name: "Matterport, Inc.", website: nil, market_cap: 3.608, country: nil, ipo_year: nil, sector: nil, volume: 1, industry: nil},
  {ticker: "TOITF", name: "Topicus.com Inc.", website: nil, market_cap: 3.385, country: nil, ipo_year: nil, sector: nil, volume: 2, industry: nil},
  {ticker: "PAYO", name: "Payoneer Global Inc.", website: nil, market_cap: 3.268, country: nil, ipo_year: nil, sector: nil, volume: 1, industry: nil},
  {ticker: "MKTW", name: "MarketWise, Inc.", website: nil, market_cap: 3.201, country: nil, ipo_year: nil, sector: nil, volume: 357, industry: nil},
  {ticker: "MNTV", name: "Momentive Global Inc.", website: nil, market_cap: 3.045, country: nil, ipo_year: nil, sector: nil, volume: 623, industry: nil},
  {ticker: "ITMPF", name: "ITM Power Plc", website: nil, market_cap: 3.029, country: nil, ipo_year: nil, sector: nil, volume: 19, industry: nil},
  {ticker: "LAW", name: "CS Disco, Inc.", website: nil, market_cap: 2.931, country: nil, ipo_year: nil, sector: nil, volume: 553, industry: nil},
  {ticker: "ACKAY", name: "Arçelik Anonim Sirketi", website: nil, market_cap: 2.656, country: nil, ipo_year: nil, sector: nil, volume: 614, industry: nil},
  {ticker: "DYNDF", name: "Dye & Durham Limited", website: nil, market_cap: 2.545, country: nil, ipo_year: nil, sector: nil, volume: 267, industry: nil},
  {ticker: "NABL", name: "N-able, Inc.", website: nil, market_cap: 2.415, country: nil, ipo_year: nil, sector: nil, volume: 710, industry: nil},
  {ticker: "DCBO", name: "Docebo Inc.", website: nil, market_cap: 2.35, country: nil, ipo_year: nil, sector: nil, volume: 52, industry: nil},
  {ticker: "MVIS", name: "MicroVision, Inc.", website: nil, market_cap: 2.315, country: nil, ipo_year: nil, sector: nil, volume: 10, industry: nil},
  {ticker: "VYGVF", name: "Voyager Digital Ltd.", website: nil, market_cap: 2.251, country: nil, ipo_year: nil, sector: nil, volume: 753, industry: nil},
  {ticker: "KHOTF", name: "Kahoot! ASA", website: nil, market_cap: 2.125, country: nil, ipo_year: nil, sector: nil, volume: 59, industry: nil},
  {ticker: "MLNK", name: "MeridianLink, Inc.", website: nil, market_cap: 2.037, country: nil, ipo_year: nil, sector: nil, volume: 742, industry: nil},
  {ticker: "WKME", name: "WalkMe Ltd.", website: nil, market_cap: 2.01, country: nil, ipo_year: nil, sector: nil, volume: 340, industry: nil},
  {ticker: "ZEN", name: "Zendesk", website: "https://www.zendesk.com", market_cap: 17314557872.0, country: nil, ipo_year: "2014", sector: "Technology", volume: 1359531, industry: "EDP Services"},
  {ticker: "ZM", name: "Zoom Video Communications", website: "https://zoom.us", market_cap: 110268235584.0, country: "United States", ipo_year: "2019", sector: "Technology", volume: 4568775, industry: "Computer Software: Programming Data Processing"},
  {ticker: "ZUO", name: "Zuora", website: "https://www.zuora.com", market_cap: 2059532000.0, country: nil, ipo_year: "2018", sector: "Technology", volume: 1482237, industry: "EDP Services"},
  {ticker: "VTKLY", name: "Vtech Holdings Limited", website: "vtech.com", market_cap: 2.509, country: nil, ipo_year: nil, sector: nil, volume: 4, industry: nil},
  {ticker: "PANW", name: "Palo Alto Networks", website: "https://www.paloaltonetworks.com", market_cap: 36201163261.0, country: "United States", ipo_year: "2012", sector: "Technology", volume: 1438053, industry: "EDP Services"}
]

stocks.each do |stock|
  next if Stock.where(:ticker => stock[:ticker]).present?
  next if Stock.where(:name => stock[:name]).present?
  Stock.create(stock)
end

return if Rails.env.production?

users = [
    User.new(full_name: 'Admin User', email: 'admin.user@gmail.com', password: 'password@1'),
    User.new(full_name: 'Mark Aresty', email: 'mark.aresty@gmail.com', password: 'password@1'),
    User.new(full_name: 'John Smith', email: 'john.smith@gmail.com', password: 'password@1'),
    User.new(full_name: 'Peter Larson', email: 'peter.larson@gmail.com', password: 'password@1'),
    User.new(full_name: 'Adrien Moore', email: 'adrien.moore@gmail.com', password: 'password@1'),
    User.new(full_name: 'Kevin Westley', email: 'kevin.westley@gmail.com', password: 'password@1')
]

users.each(&:skip_confirmation!)
users.each(&:save)
users.each(&:confirm)

categories = [
    Category.create(title: 'Computer Science', description: 'Computer Science description', active: true),
    Category.create(title: 'Business', description: 'Business studies', active: true),
    Category.create(title: 'Finance and Accounting', description: 'Finance and Accounting', active: true)
]

category = categories.first
user = User.find(1)
user2 = User.find(2)
file_path = Rails.root + "app/assets/images/default-course-image.jpeg"
courses = [
    category.courses.create!(
      title: 'Python Programmer',
      body: 'Python Programming fundamentals <br/> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
      short_description: 'Land a Python Programming job or you pay $0',
      course_highlights: 'Ge a high paying job in 6 months',
      duration: '6 months',
      no_of_lessons: 30,
      level: 'Beginner',
      website: 'https://python.com',
      price: 4000,
      discount_percentage: 15,
      course_for: 'High school graduates',
      user_id: user2.id,
    ),
    category.courses.create!(
      title: 'Engineering Management',
      body: 'Become an engineering manager',
      short_description: 'Learn what it takes to be a leader',
      course_highlights: 'This is for people who wants to get into management.',
      duration: '4 months',
      no_of_lessons: 15,
      level: 'Intermediate',
      website: 'https://vcroom.com',
      price: 5000,
      discount_percentage: 10,
      course_for: 'Senior Software Engineer',
      user_id: user.id,
    ),
    category.courses.create!(
      title: 'Machine Learning',
      body: 'Become job ready in 6 months',
      short_description: 'Machine Learning Engineer with a job guarentee',
      course_highlights: 'Machine Learning',
      duration: '6 months',
      no_of_lessons: 30,
      level: 'Intermediate',
      website: 'https://google.com',
      price: 6000,
      discount_percentage: 20,
      course_for: 'High school graduates',
      user_id: user.id,
    )
]

courses.each do |course|
  course.cover_image.attach(io: File.open(file_path), filename: "default-course-file.jpeg")
end

course = courses.first
course.reviews.create(
    rating: 5,
    user_id: users[3].id,
    comment: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,'
)

course.reviews.create(
    rating: 4,
    user_id: users[4].id,
    comment: 'quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non'
)

chapter1 = course.chapters.create(title: 'Chapter 1')
chapter2 = course.chapters.create(title: 'Chapter 2')

chapter1.course_contents.create(
    title: 'Course Overview',
    description: 'Introduction, overview and content',
    duration: '1 week'
)

chapter1.course_contents.create(
    title: 'Installation steps',
    description: 'Setting up the view, Running code, finding help, Getting the notebook and course material',
    duration: '2 weeks',
)

chapter2.course_contents.create(
    title: 'Modules and Packages',
    description: 'Packages, libraries, MVPs etc',
    duration: '2.5 weeks',
)
chapter2.course_contents.create(
    title: 'Finishing up and further reading',
    description: 'Practical applications, further reading etc.',
    duration: '2 weeks',
)

chapter1.assignments.create(
    question: 'What is the Capital of United States?',
    instructions: 'Read the first chapter in detail',
    points: 25,
    due_date: 1.months.after,
)
chapter1.assignments.create(
    question: 'Who is the prime minister of Australia?',
    instructions: 'It should be the recent one.',
    points: 20,
    due_date: 2.months.after,
)

chapter2.assignments.create(
    question: 'Who is the first man to go to moon?',
    instructions: 'You can refer internet to find the solution of this question',
    points: 50,
    due_date: 1.months.after,
)

user2.educations.create(name_of_institution: 'Harvard University', year_start: 2006, year_end: 2010, title: 'Bachelor of Computer Science', location: 'Boston', country: 'USA')
user2.educations.create(name_of_institution: 'Stanford University', year_start: 2010, year_end: 2012, title: 'Masters in Artificial Intelligence', location: 'San Francisco', country: 'USA')
user2.experiences.create(name_of_institution: 'Google', year_start: 2012, year_end: 2016, title: 'Software Engineer', location: 'Mountain View', country: 'USA')
user2.experiences.create(name_of_institution: 'Facebook', year_start: 2010, year_end: 2012, title: 'Senior Software Engineer', location: 'Menlo Park', country: 'USA')

user2.notebooks.create(title: 'Engineering Management')
user2.notebooks.create(title: 'Senior React Development')
user2.notebooks.create(title: 'Machine Learning')
user2.notebooks.create(title: 'Docker Fundamentals')
user2.notebooks.create(title: 'AI for everyone')
user2.notebooks.create(title: 'Python Development')
user2.notebooks.create(title: 'Database')

courses.each(&:approve)
courses[0..1].each do |course|
  users[1..2].each do |user|
    course.enrolled_users << user unless course.user_id == user.id
    course.general_conversation.users << user
  end
end

first_course = courses.first

users[3..5].each do |user|
  first_course.enrolled_users << user
  first_course.general_conversation.users << user
end
