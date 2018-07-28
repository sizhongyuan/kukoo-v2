(function(gla) {

  var dictionary = [
    [
      "序号",
      "字典序号",
      "Title",
      "检索词",
      "内容",
      "url"
    ],
    [
      "1",
      "0001",
      "枫叶卡",
      "枫叶卡",
      "<P>枫叶卡是加拿大永久居民卡的俗称（Permanent Resident Card, \"PR Card\" )。是加拿大永久居民进入加拿大时永居身份的证明。</p>"
    ],
    [
      "2",
      "0002",
      "永久居民",
      "永久居民",
      "<P>拥有某一国家永久居留权（Permanent Residence, \"PR\"）的人称作该国的“永久居民”（Permanent Residents）。永久居留权是一种近似公民权的权利，这种权利允许永久居民在该国永远居住，并在许多方面与该国公民享受同等待遇，但通常不拥有选举权。</p>"
    ],
    [
      "3",
      "0003",
      "永久居留权",
      "“Permanent Residence”“PR”“永居”“永久居留权”",
      "<P>永久居留权（Permanent Residence, \"PR\"）是一种近似公民权的权利，这种权利允许永久居民在该国永远居住，并在许多方面与该国公民享受同等待遇，但通常不拥有选举权。拥有某一国家永久居留权的人称作该国的“永久居民”（Permanent Residents）。</p>"
    ],
    [
      "4",
      "0004",
      "加拿大联邦技术移民项目",
      "“FSW”“FSW”",
      "<P>加拿大联邦技术移民项目（The Federal Skilled Worker Program，“FSW”or \"FSWP\"）即申请者向加拿大联邦政府递交技术移民申请，由联邦政府发放移民签证并最终成为加拿大永久居民的移民申请项目。联邦技术移民对申请者无加拿大境内居住地要求，获得永居身份后可在加拿大任意地区居住生活。</p>"
    ],
    [
      "5",
      "0005",
      "加拿大魁北克技术移民项目\r\n",
      "“QSW”“QSW”",
      "<P>加拿大魁北克技术移民项目（The Quebec Skilled Worker Program, \"QSW\"or \"QSWP\"）。</p>\r\n<P>加拿大宪法规定，移民事务由联邦政府和省政府共同管辖。加拿大魁北克技术移民项目（The Quebec Skilled Worker Program, \"QSW\"or \"QSWP\"）需要申请人首先向魁北克省的移民局递交申请材料，通过后魁北克省移民局给申请人发放CSQ，申请人再将CSQ和有关申请表格递交到联邦。联邦会进行体检、无犯罪、安全调查等审核，但一般不得拒绝申请人的移民申请。魁北克省提名的移民要求申请人有意向定居新不伦瑞克省，并提供定居计划；获得永居身份后，建议申请人在新不伦瑞克省短暂居住一段时间表明居住意向，然后可迁徙至加拿大任意地区居住。</p>"
    ],
    [
      "6",
      "0006",
      "加拿大萨斯喀彻温省提名项目",
      "SINP",
      "<p>加拿大萨斯喀彻温省提名项目（The Saskatchewan Immigrant Nominee Program，\"SINP\"）</p>\r\n\r\n<p>加拿大宪法规定，移民事务由联邦政府和省政府共同管辖。加拿大萨斯喀彻温省提名（Saskatchewan Immigrant Nominee Program, \"SINP\"）技术移民项目（简称“萨省提名技术移民项目”）需要申请人首先向萨省的移民局递交申请材料，通过后萨省移民局给申请人发放省提名函，申请人再将省提名函和有关申请表格递交到联邦。联邦会进行体检、无犯罪、安全调查等审核，但一般不得拒绝申请人的移民申请。萨省技术移民要求申请人有意向定居萨省，并提供定居计划；获得永居身份后，建议申请人在萨省短暂居住一段时间表明居住意向，然后可迁徙至加拿大任意地区居住。</p>\r\n\r\n<p>萨省提名项目包含多个类别：技术移民（有雇主/无雇主）、经验移民、商业移民等。</p>"
    ],
    [
      "7",
      "0007",
      "加拿大安大略省提名项目",
      "OINP",
      "<p>加拿大安大略省提名项目（The Ontario Immigrant Nominee Program, \"OINP\"）</p>\r\n\r\n<p> 加拿大宪法规定，移民事务由联邦政府和省政府共同管辖。加拿大安大略省提名项目（Ontario Immigrant Nominee Program, \"OINP\"）（简称“安省提名项目”）需要申请人首先向安省的移民局递交申请材料，通过后安省移民局给申请人发放省提名函，申请人再将省提名函和有关申请表格递交到联邦。联邦会进行体检、无犯罪、安全调查等审核，但一般不得拒绝申请人的移民申请。安省提名的移民要求申请人有意向定居安省，并提供定居计划；获得永居身份后，建议申请人在安省短暂居住一段时间表明居住意向，然后可迁徙至加拿大任意地区居住。</p>\r\n\r\n<p>安大略省提名项目包含多个类别：商业类，雇主类，非雇主类。</p>"
    ],
    [
      "8",
      "0008",
      "加拿大新斯科舍省移民提名项目",
      "NSNP",
      "<p>加拿大新斯科舍省移民提名项目（The Nova Scotia Nominee Program, \"NSNP\"）</p>\r\n\r\n<p>加拿大宪法规定，移民事务由联邦政府和省政府共同管辖。加拿大新斯科舍省提名项目（Nova Scotia Nominee Program, \"NSNP\"）（简称“新省提名项目”）需要申请人首先向新省的移民局递交申请材料，通过后新省移民局给申请人发放省提名函，申请人再将省提名函和有关申请表格递交到联邦。联邦会进行体检、无犯罪、安全调查等审核，但一般不会拒绝申请人的移民申请。新省省提名项目要求申请人有意向定居新省，并提供定居计划；获得永居身份后，建议申请人在新省短暂居住一段时间表明居住意向，然后可迁徙至加拿大任意地区居住。</p>\r\n\r\n<p>新省提名项目包括多个类别：紧缺职业类别快速通道项目、经验类快速通道项目、企业家类别、国际毕业生创业类别、持雇主Offer技工类等</p>"
    ],
    [
      "9",
      "0009",
      "加拿大新斯科舍省紧缺职业类别快速通道项目",
      "NSDEE",
      "<p>加拿大新斯科舍省紧缺职业类别快速通道项目（The Nova Scotia Demand: Express Entry, \"NSDEE\"）。NSDEE有A和B两个子类别，A类（NSDEE Category A）需要有当地雇主offer，随时可以申请；B类（NSDEE Category B），不需要当地雇主提供offer就可以申请，但申请人从事职业需要在新省紧缺职业清单上，同时需要抢配额。我们通常所称的新省省提名技术移民项目即为新省提名紧缺职业类别快速通道项目B类别（NSDEE Category B）。</p>"
    ],
    [
      "10",
      "0010",
      "加拿大新不伦瑞克省提名项目",
      "NBPNP",
      "<p>加拿大新不伦瑞克省提名项目（The New Brunswick Provincial Nominee Program, \"NBPNP\"）。</p>\r\n\r\n<p>加拿大宪法规定，移民事务由联邦政府和省政府共同管辖。新不伦瑞克省提名项目（New Brunswick Provincial Nominee Program, \"NBPNP\"）（简称“NB省提名项目”）需要申请人首先向新不伦瑞克省的移民局递交申请材料，通过后新不伦瑞克省移民局给申请人发放省提名函，申请人再将省提名函和有关申请表格递交到联邦。联邦会进行体检、无犯罪、安全调查等审核，但一般不得拒绝申请人的移民申请。新不伦瑞克省提名的移民要求申请人有意向定居新不伦瑞克省，并提供定居计划；获得永居身份后，建议申请人在新不伦瑞克省短暂居住一段时间表明居住意向，然后可迁徙至加拿大任意地区居住。</p>\r\n\r\n<p>新不伦瑞克省提名项目包含多个类别：快速通道项目劳动力市场类别（ Express Entry Labour Market Stream, \"EELMS\"）、雇主担保类别、家庭担保类别、企业家类别等。</p>"
    ],
    [
      "11",
      "0011",
      "加拿大新不伦瑞克省提名快速通道项目劳动力市场类别",
      "NBPNP EELMS",
      "<p>加拿大新不伦瑞克省提名快速通道项目劳动力市场类别（The New Brunswick Provincial Nominee Program Express Entry Labour Market Stream, \"NBPNP EELMS\"），即我们通常所称的NB省提名技术移民项目。</p>"
    ],
    [
      "12",
      "0012",
      "联邦六项评分标准",
      "“六项评分标准”“入池标准”",
      "<p>加拿大联邦技术移民项目六项评分标准（Six selection factors）从语言、教育、工作、年龄、工作安排和适应能力六个方面对申请者进行初审评估。在申请者满足语言（CLB7以上）和工作等基本要求的基础上，评分达到67分（满分100分）则可有资格提交EE申请，进入候选池。上述基本要求又被称为“入池标准”。</p>\r\n\r\n<p>此处有个表</p>"
    ],
    [
      "14",
      "0013",
      "加拿大联邦综合排名系统",
      "CRS",
      "<p>加拿大联邦综合排名系统（Comprehensive Ranking System , \"CRS\"）是联邦快速通道系统下的打分体系，满分1200分，主要涉及4个方面：核心要素（年龄、教育、语言和加拿大工作经验等）、配偶加分（教育、语言和加拿大工作经验等）、适应能力（教育、工作经验和加拿大资格证书等），和其他加分（雇主offer、省提名等）。总分 1200=核心要素+配偶加分+适应分数+其他分数。</p>\r\n\r\n<p>此处有个表</p>\r\n\r\n<p>在满足联邦入池标准后，申请人可在EE系统中提交申请，并根据CRS评分标准进行评分。联邦移民局会按照申请人CRS评分高低，不定期发出正式的移民申请邀请（Invitation to Apply, \"ITA\"）。</p>"
    ],
    [
      "16",
      "0014",
      "快速通道",
      "“EE”“Express Entry”“快速通道”",
      "<p>快速通道（Express Entry，\"EE\"）是2015年1月1日起加拿大开始执行的一个在线注册用来进行移民申请的系统，适用于加拿大联邦技术移民FSWP、经验类移民CEC和技工移民FSTP。</p>"
    ],
    [
      "17",
      "0015",
      "加拿大经验移民",
      "CEC",
      "<p>加拿大经验移民 （Canadian Experience Class, \"CEC\"）</p>"
    ],
    [
      "18",
      "0016",
      "加拿大联邦技工移民",
      "“FST”“FSTP”",
      "<p>加拿大联邦技工移民（Federal skilled Trades Program, \"FST\" or \"FSTP\"）</p>"
    ],
    [
      "19",
      "0017",
      "移民申请邀请信",
      "ITA",
      "<p>移民申请邀请信（Invitation to Apply, ITA）；</p>\r\n<p>对于采用邀请制度的移民项目，想要申请移民,必须首先提交意向表达（Expression of Interest, \"EOI\"）来表达移民意向。移民局根据申请人的情况，选择发放意向通知书（Notifications of Interest,“NOI\"）或移民申请邀请（Invitation to Apply, ITA）以邀请其提交移民申请。</p>"
    ],
    [
      "21",
      "0018",
      "加拿大语言等级标准",
      "CLB",
      "<p>加拿大语言等级标准（ Canadian Language Benchmarks, “CLB\"）是加拿大用以评判语言水平的一套标准，共分为12个等级（CLB1-CLB12）。CLB标准是语言能力水平的衡量标准但并非考试本身，该标准规定了标准化的语言考试成绩与加拿大认可的语言能力之间的对应关系。</p>\r\n<p>加拿大移民申请可接受的语言考试包括雅思（IELTS: International English Language Testing System）、思培（CELPIP: Canadian English Language Proficiency Index Program）和TEF-Canada法语考试（TEF: Test d’évaluation de français），上述标准化语言考试成绩与CLB级别对应关系如下：</p>\r\n\r\n<p>英语 IELTS 与 CLB 级别对照表</p>\r\n<p>英语 CELPIP 与 CLB 级别对照表</p>\r\n<p>法语 TEF-Canada 与 CLB 级别对照表</p>",
      "http://www.cic.gc.ca/english/resources/tools/language/charts.asp"
    ],
    [
      "24",
      "0019",
      "萨省紧缺职业类别",
      "OID",
      "<p>紧缺职业类别（Occupations In Demand, \"OID\"），OID特指萨省技术移民的紧缺职业类别；该类别联邦阶段不以快速通道的方式申请，因此无需满足联邦入池标准。但联邦阶段审理速度会比快速通道项目慢半年左右。</p>"
    ],
    [
      "25",
      "0020",
      "魁北克移民甄选证书",
      "CSQ",
      "<p>魁北克移民甄选证书 (Cetificate Selection of Quebec, \"CSQ\")是魁北克省政府发出的移民甄选证明，用以证明申请人通过了魁省移民的条例。获得CSQ基本上可以确定能拿到移民签证，除非申请人在体检、背景及安全调查出问题。</p>"
    ],
    [
      "26",
      "0021",
      "魁省在线移民申请系统",
      "“MPQ”“Mon project Québec”",
      "<p>魁省在线移民申请系统（Mon project Québec, \"MPQ\"），从2016年开始魁省申请均通过MPQ在线申请系统进行申请。</p>",
      "http://www.immigration-quebec.gouv.qc.ca/en/informations/mon-projet-quebec/index.html"
    ],
    [
      "28",
      "0022",
      "联邦移民申请集中处理中心",
      "“联邦移民申请集中处理中心”“CIO”",
      "<p>联邦移民申请集中处理中心（Central Intake Office, \"CIO\"）</p>"
    ],
    [
      "29",
      "0023",
      "受训领域",
      "受训领域",
      "<p>受训领域（Domaine de formation）也就是所谓的申请者所受教育的专业，不要求与工作有关。</p>\r\n<p>魁省受训领域加分列表如下：</p>\r\n<p>此处有个表</p>"
    ],
    [
      "30",
      "0024",
      "技能优先类别",
      "HCP",
      "<p>技能优先类别（Human Capital Priorities, \"HCP\"），特指安省提名非雇主类快速通道项目技能优先类别（OINP Express Entry Human Capital Priorities Stream, \"OINP EE HCP\"），即通常所称的安省提名技术移民项目。HCP类别不限制申请人职业（监管职业除外），主要对EE系统下CRS评分达到400分以上的申请者发出邀请。</p>"
    ],
    [
      "31",
      "0025",
      "意向表达",
      "EOI",
      "<p>意向表达（Expression of Interest, \"EOI\"）；</p>\r\n<p>对于采用邀请制度的移民项目，想要申请移民,必须首先提交EOI来表达移民意向。移民局根据申请人的情况，选择发放意向通知书（Notifications of Interest,“NOI\"）或移民申请邀请（Invitation to Apply, ITA）以邀请其提交移民申请。</p>"
    ],
    [
      "32",
      "0026",
      "意向通知书",
      "NOI",
      "<p>意向通知书（Notifications of Interest,“NOI\"）；</p>\r\n<p>对于采用邀请制度的移民项目，想要申请移民,必须首先提交意向表达（Expression of Interest, \"EOI\"）来表达移民意向。移民局根据申请人的情况，选择发放意向通知书（Notifications of Interest,“NOI\"）或移民申请邀请（Invitation to Apply, ITA）以邀请其提交移民申请。</p>"
    ],
    [
      "33",
      "0027",
      "劳动力市场影响评估",
      "LMIA",
      "<p>劳动力市场影响评估（Labour Market Impact Assessment, \"LMIA\"）是由加拿大就业及社会发展部（Employment and Social Development Canada, \"ESDC\"）向加拿大雇主签发的评估报告，用以评判雇主是否具有雇佣外籍劳工的需要和能力。只有在加拿大本国劳动市场无法满足企业招聘需求时，ESDC才会向雇主签发LMIA报告，允许雇主招聘外籍劳工。</p>"
    ],
    [
      "34",
      "0028",
      "加拿大就业及社会发展部",
      "加拿大就业及社会发展部",
      "<p>加拿大就业及社会发展部（Employment and Social Development Canada, \"ESDC\"）。ESDC负责受理审核并向加拿大雇主签发LMIA报告，以允许雇主招聘外籍劳工。</p>"
    ],
    [
      "35",
      "0029",
      "加拿大移民部",
      "“加拿大移民部”“IRCC”“CIC”",
      "<p>加拿大移民部（ Immigration, Refugees and Citizenship Canada, \"IRCC\"），即通常所称的加拿大移民部；2016年2月以前，加拿大移民部英文名称为（Citizenship and Immigration Canada, \"CIC\"）。目前也有部分机构继续沿用CIC的名字指代加拿大移民局。</p>"
    ],
    [
      "38",
      "0030",
      "FN",
      "FN",
      "<p>档案号 （File NO., \"FN\"）</p>"
    ],
    [
      "39",
      "0031",
      "UCI",
      "UCI",
      "<p>申请人唯一客户账号（Unique Client Identity,\"UCI\"） </p>"
    ],
    [
      "40",
      "0032",
      "ME",
      "ME",
      "<p>体检（Medical Exam,\"ME\"） </p>"
    ],
    [
      "41",
      "0033",
      "MER",
      "MER",
      "<p>已经收到体检结果（ME Received,\"MER\"）</p>"
    ],
    [
      "42",
      "0034",
      "DM",
      "DM",
      "<p>材料已经审理完毕（Decision Made, \"DM\"）</p>"
    ],
    [
      "43",
      "0035",
      "PL",
      "PL",
      "<p>取签通知（Picking Up Letter,\"PL\"）</p>"
    ],
    [
      "44",
      "0036",
      "IP",
      "IP",
      "<p>正在处理中（In Process, \"IP\"）</p>"
    ],
    [
      "45",
      "0037",
      "LP",
      "LP",
      "<p>签证纸（Landing paper,\"LP\"）</p>"
    ],
    [
      "46",
      "0038",
      "VO",
      "VO",
      "<p>签证办公室（Visa Office,“VO”）</p>"
    ],
    [
      "47",
      "0039",
      "背景调查",
      "背调",
      "<p>背景调查（Background Check，\"BC\"）</p>"
    ],
    [
      "48",
      "0040",
      "AR",
      "AR",
      "<p>文档已接收（Acknowledge Of Receiving, \"AR\"）</p>"
    ],
    [
      "49",
      "0041",
      "APEGS",
      "APEGS",
      "<p>萨省职业工程师与地质学家协会（Association of Professional Engineers &Geoscientists of Saskatchewan,\"APEGS\"）</p>",
      "https://www.apegs.ca"
    ],
    [
      "50",
      "0042",
      "CACB",
      "CACB",
      "<p>加拿大建筑认证委员会（Canadian Architectural Certification Board, \"CACB\"）</p>",
      "www.cacb.ca"
    ],
    [
      "51",
      "0043",
      "BEFA",
      "BEFA",
      "<p>BEFA项目（Broadly Experienced Foreign Architects ,\"BEFA\"）是为外国建筑师颁发加拿大许可的另一种途径。该项目由加拿大建筑师执照局（Canadian Architectural Licensing Authorities，\"CALA\"）开发，并由加拿大建筑认证委员会（Canadian Architectural Certification Board, \"CACB\"）进行管理。</p>",
      "http://cacb.ca/en/welcome/"
    ],
    [
      "52",
      "0044",
      "CBEPS",
      "CBEPS",
      "<p>加拿大职业测量师考试委员会 （The Canadian Board of Examiners for Professional Surveyors, \"CBEPS\"）</p>",
      "www.cbeps-cceag.ca/"
    ],
    [
      "53",
      "0045",
      "CIPS",
      "CIPS",
      "<p>加拿大信息处理学会（ Canadian Information Processing Society,“CIPS ”）</p>",
      "http://www.cips.ca/"
    ],
    [
      "54",
      "0046",
      "AITP",
      "AITP",
      "<p>助理信息技术专业人员（Associate Information Technology Professional），为加拿大信息处理学会（ Canadian Information Processing Society,“CIPS ”）的认证职位之一。</p>"
    ],
    [
      "55",
      "0047",
      "ISP",
      "ISP",
      "<p>信息系统专业人员（Information Systems Professional），为加拿大信息处理学会（ Canadian Information Processing Society,“CIPS ”）的认证职位之一。</p>"
    ],
    [
      "56",
      "0048",
      "ITCP",
      "ITCP",
      "<p>信息技术认证专业人员（Information Technology Certified Professional），为加拿大信息处理学会（ Canadian Information Processing Society,“CIPS ”）的认证职位之一。</p>"
    ],
    [
      "57",
      "0049",
      "SSMLT",
      "SSMLT",
      "<p>萨斯喀彻温省医学检验技术协会（Saskatchewan Society of Medical Laboratory Technologists, \"SSMLT\"）</p>",
      "www.ssmlt.org"
    ],
    [
      "58",
      "0050",
      "Sonography Canada",
      "Sonography Canada",
      "<p>加拿大超声波协会 （Sonography Canada）</p>",
      "https://www.sonographycanada.ca"
    ],
    [
      "59",
      "0051",
      "ARDMS",
      "ARDMS",
      "<p>美国注册诊断医疗超声医师协会（The American Registry for Diagnostic Medical Sonography, \"ARDMS\"） </p>",
      "www.ardms.org"
    ],
    [
      "60",
      "0052",
      "Saskatchewan College of Psychologists",
      "Saskatchewan College of Psychologists",
      "<p>萨斯喀彻温省心理学学会 （Saskatchewan College of Psychologists）</p>",
      "http://www.skcp.ca/"
    ],
    [
      "61",
      "0053",
      "CASW",
      "CASW",
      "<p> 加拿大社会工作者协会（Canadian Association of Social Workers, \"CASW\"）</p>",
      "https://www.casw-acts.ca/"
    ],
    [
      "62",
      "0054",
      "ECEC",
      "ECEC",
      "<p>萨省早期教育认证（Early Childhood Educator Certification, \"ECEC\"） ，由萨省教育部（Ministry of Education, Saskatchewan）审批。</p>",
      "http://www.saskatchewan.ca/government/education-and-child-care-facility-administration/become-an-early-childhood-educator"
    ],
    [
      "63",
      "0055",
      "SATCC",
      "SATCC",
      "<p>萨斯喀彻温省学徒和行业认证委员会 （Saskatchewan Apprenticeship and Trade Certification Commission，\"SATCC\"）</p>",
      "http://saskapprenticeship.ca/"
    ],
    [],
    [
      "65",
      "0056",
      "MLTSSL",
      "MLTSSL",
      "<p>澳洲技术移民中长期移民职业列表（Medium and Long-term Strategic Skills List, \"MLTSSL\"）。</p>\r\n<p>此处有个表</p>"
    ],
    [
      "66",
      "0057",
      "STSOL",
      "STSOL",
      "<p>澳洲技术移民短期期移民职业列表（Short-term Skilled Occupation List, \"STSOL\"）。</p>\r\n<p>此处有个表</p>"
    ],
    [
      "68",
      "0058",
      "CO",
      "CO",
      "<p>签证官 （Case Officer, \"CO\"）</p>"
    ],
    [
      "70",
      "0059",
      "IELTS",
      "IELTS",
      "<p>雅思考试（International English Language Testing System, \"IELTS\"），全称国际英语语言测试系统，由剑桥大学考试委员会外语考试部、英国文化协会及IDP教育集团共同管理。是全球最通行的英语水平标准化考试之一。</p>"
    ],
    [
      "71",
      "0060",
      "TOEFL",
      "TOEFL",
      "<p>托福全名为“检定非英语为母语者的英语能力考试”（The Test of English as a Foreign Language，\"TOEFL\"），中文由TOEFL而音译为“托福”。是由美国教育测验服务社（ETS）举办的英语能力考试。TOEFL有三种类型，分别是： 纸考（Paper Based Test,\"PBT\"），满分为677分、机考（Computer Based Test，“CBT”），满分为300，和网考（Internet Based Test，\"IBT） ，满分为120分。 </p>"
    ],
    [
      "72",
      "0061",
      "PTE Academic",
      "PTE Academic",
      "<p>PTE学术英语考试（Pearson Test of English Academic, PTE Academic）是于2009年10月26日推出的新一代的国际性英语水平测试，由金融时报的母公司英国培生集团以及GMAT的开发机构管理专业研究生入学考试委员（GMAC）共同研究主办。</p>"
    ],
    [
      "73",
      "0062",
      "OET",
      "OET",
      "<p>澳洲医护职业英语考试（English language test for healthcare professionals,\"OET\"）是一种面向在澳洲境外受过专业培训并打算在澳大利亚从事相关职业的医疗工作者的专业英语考试。OET用来考查来自非英语国家的医疗护理工作者是否具有足够的英语能力在澳大利亚从事相关领域的职业活动。\"OET\"可取代IELTS作为评判英语水平的标准，也是取得澳大利亚及其它英联邦国家注册护士职业资格的第一步也是关键步骤。 </p>"
    ],
    [
      "74",
      "0063",
      "CAE",
      "CAE",
      "<p>剑桥英语高级英语证书（Cambridge Certificate in Advanced English, \"CAE\"）由剑桥大学外语考试部研发，是剑桥通用英语五级系列考试中的第四个等级证书考试。</p>"
    ],
    [
      "75",
      "0064",
      "NAATI",
      "NAATI",
      "<p>NAATI是National Accreditation Authority for Translators and Interpreters，暨澳大利亚翻译资格认证局的英文首字母的缩写。NAATI是澳大利亚进行翻译资格认证的唯一机构。</p>",
      "https://www.naati.com.au/"
    ],
    [
      "76",
      "0065",
      "Paraprofessional",
      "Paraprofessional",
      "<p>澳大利亚翻译资格认证局（NAATI）准专业或副专业翻译级别</p>"
    ],
    [
      "77",
      "0066",
      "AACA",
      "AACA",
      "<p>澳大利亚建筑师资格协会 (Architects Accreditation Council of Australia, \"AACA\")</p>",
      "https://www.aaca.org.au/"
    ],
    [
      "78",
      "0067",
      "AASW",
      "AASW",
      "<p>澳洲社工协会(Australian Association of Social Workers, \"AASW\")</p>",
      "https://www.aasw.asn.au/"
    ],
    [
      "79",
      "0068",
      "ACPSEM",
      "ACPSEM",
      "<p>澳大利亚物理学家和医学工程师学院(The Australasian College of Physical Scientists and Engineers in Medicines, \"ACPSEM\")</p>",
      "https://www.acpsem.org.au/"
    ],
    [
      "80",
      "0069",
      "ACS",
      "ACS",
      "<p>澳大利亚计算机协会 (The Australian Computer Society, \"ACS\")</p>",
      "https://www.acs.org.au/"
    ],
    [
      "81",
      "0070",
      "ACWA",
      "ACWA",
      "<p>澳大利亚社会工作者协会(Australian Community Workers Association, \"ACWA\")</p>",
      "http://www.acwa.org.au/"
    ],
    [
      "82",
      "0071",
      "ADC",
      "ADC",
      "<p>澳大利亚牙医委员会(Australian Dental Council, \"ADC\")</p>",
      "https://www.adc.org.au/"
    ],
    [
      "83",
      "0072",
      "AIM",
      "AIM",
      "<p>澳洲管理协会(Australian Institute of Management, \"AIM\")</p>",
      "https://www.aim.com.au/"
    ],
    [
      "84",
      "0073",
      "AIMS",
      "AIMS",
      "<p>澳大利亚医学科学家研究所(Australian Institute of Medical Scientists, \"AIMS\")</p>",
      "https://www.aims.gov.au/"
    ],
    [
      "85",
      "0074",
      "AIQS",
      "AIQS",
      "<p>澳洲工料测量师协会(Australian Institute of Quantity Surveyors, \"AIQS\") </p>",
      "https://www.aiqs.com.au/"
    ],
    [
      "86",
      "0075",
      "AITSL",
      "AITSL",
      "<p>澳大利亚教学与校务指导协会(The Australian Institute for Teaching and School Leadership, \"AITSL\")</p>",
      "https://www.aitsl.edu.au/"
    ],
    [
      "87",
      "0076",
      "AMSA",
      "AMSA",
      "<p>澳大利亚海事安全局(The Australian Maritime Safety Authority, \"AMSA\")</p>",
      "https://www.amsa.gov.au/"
    ],
    [
      "88",
      "0077",
      "ANMAC",
      "ANMAC",
      "<p>澳洲护理及助产学认可委员会(Australian Nursing and Midwifery Accreditation Council, \"ANMAC\" )</p>",
      "https://www.anmac.org.au/"
    ],
    [
      "89",
      "0078",
      "ANZPAC",
      "ANZPAC",
      "<p>澳大利亚和新西兰整骨疗法委员会(Australian and New Zealand Podiatry Accreditation Council, \"ANZPAC\") </p>",
      "http://www.anzpac.org.au/"
    ],
    [
      "90",
      "0079",
      "ANZSNM",
      "ANZSNM",
      "<p>澳大利亚和新西兰核医研究所(Australian and New Zealand Society of Nuclear Medicine, “ANZSNM”)</p>",
      "http://www.anzsnm.org.au/"
    ],
    [
      "91",
      "0080",
      "AOAC",
      "AOAC",
      "<p>澳大利亚和新西兰骨科委员会(Australian and New Zealand Osteopathic Council, \"AOAC\")</p>",
      "http://www.osteopathiccouncil.org.au/"
    ],
    [
      "92",
      "0081",
      "AOPA",
      "AOPA",
      "<p>澳大利亚矫正假肢协会(Australian Orthotic Prosthetic Association, \"AOPA\")</p>",
      "https://aopa.com.au/"
    ],
    [
      "93",
      "0082",
      "APC",
      "APC",
      "<p>澳洲物理治疗协会(Australian Physiotherapy Council, \"APC\")</p>",
      "https://physiocouncil.com.au/"
    ],
    [
      "94",
      "0083",
      "APharmC",
      "APharmC",
      "<p>澳大利亚药剂委员会 (Australian Pharmacy Council, \"APharmC\")</p>",
      "https://pharmacycouncil.org.au"
    ],
    [
      "95",
      "0084",
      "APodA",
      "APodA",
      "<p>大洋洲足部医疗协会(Australasian Podiatry Council, \"APodA\")</p>",
      "https://www.podiatry.org.au/"
    ],
    [
      "96",
      "0085",
      "APS",
      "APS",
      "<p>澳大利亚心理学会(Australian Psychological Society, \"APS\")</p>",
      "https://www.psychology.org.au"
    ],
    [
      "97",
      "0086",
      "ASMIRT",
      "ASMIRT",
      "<p>澳洲放射线技术协会 (Australian Institute of Radiography, \"ASMIRT\")</p>",
      "https://www.asmirt.org/"
    ],
    [
      "98",
      "0087",
      "AVBC",
      "AVBC",
      "<p>大洋洲兽医董事委员会(Australasian Veterinary Boards Council, \"AVBC\")</p>",
      "https://avbc.asn.au"
    ],
    [
      "99",
      "0088",
      "CAANZ",
      "CAANZ",
      "<p>澳洲和新西兰特许会计师(Chartered Accountants Australia & New Zealand, \"CAANZ\")</p>",
      "https://www.charteredaccountantsanz.com/"
    ],
    [
      "100",
      "0089",
      "CASA",
      "CASA",
      "<p>民航安全局(Civil Aviation Safety Authority, \"CASA\")</p>",
      "https://www.casa.gov.au"
    ],
    [
      "101",
      "0090",
      "CCEA",
      "CCEA",
      "<p>大洋洲脊椎按摩疗法教育协会(Council on Chiropractic Education Australasia, \"CCEA\")</p>",
      "http://www.ccea.com.au/"
    ],
    [
      "102",
      "0091",
      "Chinese Medicine Board of Australia",
      "Chinese Medicine Board of Australia",
      "<p>澳大利亚中医委员会(Chinese Medicine Board of Australia)</p>",
      "http://www.chinesemedicineboard.gov.au/"
    ],
    [
      "103",
      "0092",
      "CPAA",
      "CPAA",
      "<p>澳大利亚注册执业会计师(Certified Practising Accountants Australia, \"CPAA\")</p>",
      "https://www.cpaaustralia.com.au"
    ],
    [
      "104",
      "0093",
      "DAA",
      "DAA",
      "<p>澳大利亚营养师协会(Dieticians Association of Australia, \"DAA\")</p>",
      "https://daa.asn.au/"
    ],
    [
      "105",
      "0094",
      "Engineers Australia",
      "Engineers Australia",
      "<p>澳大利亚工程师研究所(Institution of Engineers, Australia, \"Engineers Australia\")</p>",
      "https://www.engineersaustralia.org.au"
    ],
    [
      "106",
      "0095",
      "IPA",
      "IPA",
      "<p>公共会计师协会(Institute of Public Accountants, \"IPA\")</p>",
      "https://www.publicaccountants.org.au"
    ],
    [
      "107",
      "0096",
      "MedBA",
      "MedBA",
      "<p>澳大利亚医学委员会(Medical Board of Australia, \"MedBA\")</p>",
      "http://www.medicalboard.gov.au/"
    ],
    [
      "108",
      "0097",
      "NAATI",
      "NAATI",
      "<p>翻译和口译员国家认证机构(National Accreditation Authority for Translators and Interpreters, \"NAATI\")</p>",
      "https://www.naati.com.au"
    ],
    [
      "109",
      "0098",
      "OCANZ",
      "OCANZ",
      "<p>澳大利亚和新西兰验光委员会(Optometry Council of Australia and New Zealand, \"OCANZ\")</p>",
      "http://www.ocanz.org/"
    ],
    [
      "110",
      "0099",
      "OTC",
      "OTC",
      "<p>职业治疗委员会(Occupational Therapy Council, \"OTC\")</p>",
      "http://otcouncil.com.au/"
    ],
    [
      "111",
      "0100",
      "SPA",
      "SPA",
      "<p>澳洲言语病理学协会(Speech Pathology Association of Australia, \"SPA\")</p>",
      "http://www.speechpathologyaustralia.org.au/"
    ],
    [
      "112",
      "0101",
      "SSSI",
      "SSSI",
      "<p>测绘与空间科学研究所(Surveying and Spatial Sciences Institute, \"SSSI\")</p>",
      "https://sssi.org.au"
    ],
    [
      "113",
      "0102",
      "TRA",
      "TRA",
      "<p>澳大利亚职业技术认证中心(Trades Recognition Australia, \"TRA\")</p>",
      "https://www.tradesrecognitionaustralia.gov.au/"
    ],
    [
      "114",
      "0103",
      "VETASSESS",
      "VETASSESS",
      "<p>职业教育与培训评估服务中心(Vocational Education and Training Assessment Services, \"VETASSESS\")</p>",
      "www.vetassess.com.au"
    ]
  ];

  var mapping = {
    "枫叶卡": "0001",
    "永久居民": "0002",
    "Permanent Residence": "0003",
    "PR": "0003",
    "永居": "0003",
    "永久居留权": "0003",
    "FSW": "0004",
    "QSW": "0005",
    "SINP": "0006",
    "OINP": "0007",
    "NSNP": "0008",
    "NSDEE": "0009",
    "NBPNP": "0010",
    "NBPNP EELMS": "0011",
    "六项评分标准": "0012",
    "入池标准": "0012",
    "CRS": "0013",
    "EE": "0014",
    "Express Entry": "0014",
    "快速通道": "0014",
    "CEC": "0015",
    "FST": "0016",
    "FSTP": "0016",
    "ITA": "0017",
    "CLB": "0018",
    "OID": "0019",
    "CSQ": "0020",
    "MPQ": "0021",
    "Mon project Québec": "0021",
    "联邦移民申请集中处理中心": "0022",
    "CIO": "0022",
    "受训领域": "0023",
    "HCP": "0024",
    "EOI": "0025",
    "NOI": "0026",
    "LMIA": "0027",
    "加拿大就业及社会发展部": "0028",
    "加拿大移民部": "0029",
    "IRCC": "0029",
    "CIC": "0029",
    "FN": "0030",
    "UCI": "0031",
    "ME": "0032",
    "MER": "0033",
    "DM": "0034",
    "PL": "0035",
    "IP": "0036",
    "LP": "0037",
    "VO": "0038",
    "背调": "0039",
    "AR": "0040",
    "APEGS": "0041",
    "CACB": "0042",
    "BEFA": "0043",
    "CBEPS": "0044",
    "CIPS": "0045",
    "AITP": "0046",
    "ISP": "0047",
    "ITCP": "0048",
    "SSMLT": "0049",
    "Sonography Canada": "0050",
    "ARDMS": "0051",
    "Saskatchewan College of Psychologists": "0052",
    "CASW": "0053",
    "ECEC": "0054",
    "SATCC": "0055",
    "MLTSSL": "0056",
    "STSOL": "0057",
    "CO": "0058",
    "IELTS": "0059",
    "TOEFL": "0060",
    "PTE Academic": "0061",
    "OET": "0062",
    "CAE": "0063",
    "NAATI": "0097",
    "Paraprofessional": "0065",
    "AACA": "0066",
    "AASW": "0067",
    "ACPSEM": "0068",
    "ACS": "0069",
    "ACWA": "0070",
    "ADC": "0071",
    "AIM": "0072",
    "AIMS": "0073",
    "AIQS": "0074",
    "AITSL": "0075",
    "AMSA": "0076",
    "ANMAC": "0077",
    "ANZPAC": "0078",
    "ANZSNM": "0079",
    "AOAC": "0080",
    "AOPA": "0081",
    "APC": "0082",
    "APharmC": "0083",
    "APodA": "0084",
    "APS": "0085",
    "ASMIRT": "0086",
    "AVBC": "0087",
    "CAANZ": "0088",
    "CASA": "0089",
    "CCEA": "0090",
    "Chinese Medicine Board of Australia": "0091",
    "CPAA": "0092",
    "DAA": "0093",
    "Engineers Australia": "0094",
    "IPA": "0095",
    "MedBA": "0096",
    "OCANZ": "0098",
    "OTC": "0099",
    "SPA": "0100",
    "SSSI": "0101",
    "TRA": "0102",
    "VETASSESS": "0103"
  };


  // var dr = {};
  // dictionary.forEach(function(cu, i) {
  //   dr[cu[3]] = cu[1];
  // });
  //JSON.stringify(dr)

  jQuery.fn.highlight = function(pat, key) {
    function innerHighlight(node, pat) {
      var skip = 0;
      if (node.nodeType == 3) {
        var pos = node.data.indexOf(pat);
        pos -= (node.data.substr(0, pos).length - node.data.substr(0, pos).length);
        if (pos >= 0) {
          var spannode = document.createElement('span');
          spannode.className = 'dictionary-hl';
          spannode.setAttribute("_id", key);
          spannode.setAttribute("data-toggle", "modal");
          spannode.setAttribute("data-target", "#bs-dictionary-modal");
          $(spannode).on("click", function(e) {
            var id = $(this).attr("_id");
            for (var i = 0; i < dictionary.length; i++) {
              if (dictionary[i][1] == id) {
                $("#bs-dictionary-modal #mySmallModalLabel").text(dictionary[i][2]);
                $("#bs-dictionary-modal .my-content").html(dictionary[i][4]);
                if (dictionary[i][5] && dictionary[i][5].length > 5) {
                  $("#bs-dictionary-modal .my-a-c").show();
                  $("#bs-dictionary-modal .my-a").attr('href', dictionary[i][5]);
                } else {
                  $("#bs-dictionary-modal .my-a-c").hide();
                }
              }
            }
            if ($(this).parents(".toggle").length > 0) {
              $('#bs-dictionary-modal').modal("show");
              e.stopPropagation();
            }
          });
          var middlebit = node.splitText(pos);
          var endbit = middlebit.splitText(pat.length);
          var middleclone = middlebit.cloneNode(true);
          spannode.appendChild(middleclone);
          middlebit.parentNode.replaceChild(spannode, middlebit);
          skip = 1;
        }
      } else if (node.nodeType == 1 && node.childNodes && !/(script|style)/i.test(node.tagName)) {
        for (var i = 0; i < node.childNodes.length; ++i) {
          i += innerHighlight(node.childNodes[i], pat);
        }
      }
      return skip;
    }
    return this.length && pat && pat.length ? this.each(function() {
      innerHighlight(this, pat.toUpperCase());
    }) : this;
  };

  jQuery.fn.removeHighlight = function() {
    return this.find("span.dictionary-hl").each(function() {
      this.parentNode.firstChild.nodeName;
      with(this.parentNode) {
        replaceChild(this.firstChild, this);
        normalize();
      }
    }).end();
  };

  gla.DICTIONART = {
    addmodal: function() {
      var modal = '<div class="modal fade bootstrap-modal" id="bs-dictionary-modal" tabindex="-1" role="dialog" aria-hidden="true" style="display: none;">' +
        '<div class="modal-dialog">' +
        '  <div class="modal-body">' +
        '    <div class="modal-content">' +
        '      <div class="modal-header">' +
        '        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>' +
        '        <h4 class="modal-title" id="mySmallModalLabel">标题</h4>' +
        '      </div>' +
        '      <div class="modal-body">' +
        '        <div class="my-content-c">' +
        '          <span class="my-content"></span>' +
        '           <ul class="my-a-c icon-list mb-10 font-微软雅黑">' +
        '              <li>' +
        '                <i class="fa fa-info-circle"></i>' +
        '                <a class="my-a" target="_blank" style="color: #888;">官网链接：点击查看</a>' +
        '              </li>' +
        '          </ul>' +
        '        </div>' +
        '      </div>' +
        '    </div>' +
        '  </div>' +
        '</div>' +
        '</div>';
      $(document.body).append($(modal));
    },
    init: function() {
      this.addmodal();
      $('#bs-dictionary-modal').on('show.bs.modal', function(e) {
        e.stopPropagation();
      });
      for (var name in mapping) {
        //$("#wrap p").highlight(name, mapping[name]);
        $("#wrap p,#wrap .icon-list li,#wrap .alert-info").filter(function() {
          return $(this).parents(".toggle-view-custom").length == 0;
        }).highlight(name, mapping[name]);
        //$("#wrap").highlight("\"" + name + "\"", mapping[name]);
        //$("#wrap").highlight("“" + name + "”", mapping[name]);
      }
      var $dd = $('#wrap .toggle-view-custom dd');
      $dd.highlight("CLB", mapping["CLB"]);
      $dd.highlight("受训领域", mapping["受训领域"]);
      $dd.highlight("LMIA", mapping["LMIA"]);
    }
  };

})(window);
