//国家职业分类体系		National Occupational Classification
var NOC = [
  [
    "NOC代码",
    "LEVEL",
    "中文名称",
    "英文名称"
  ],
  [
    "0011",
    "0",
    "立法会议员",
    " Legislators"
  ],
  [
    "0012",
    "0",
    "政府高级管理人员和政府官员",
    " Senior government managers and officials"
  ],
  [
    "0013",
    "0",
    "高级管理人员-财务，通信和其他商业服务",
    " Senior managers - financial, communications and other business services"
  ],
  [
    "0014",
    "0",
    "高级经理-医疗卫生，教育，社会和​​社区服务及会员组织",
    " Senior managers - health, education, social and community services and membership organizations"
  ],
  [
    "0015",
    "0",
    "高级经理-贸易，广播和其他业务，NEC",
    " Senior managers - trade, broadcasting and other services, n.e.c."
  ],
  [
    "0016",
    "0",
    "高级经理-建筑，交通运输，生产和公用事业",
    " Senior managers - construction, transportation, production and utilities"
  ],
  [
    "0111",
    "0",
    "财务经理",
    " Financial managers"
  ],
  [
    "0112",
    "0",
    "人力资源经理",
    " Human resources managers"
  ],
  [
    "0113",
    "0",
    "采购经理",
    " Purchasing managers"
  ],
  [
    "0114",
    "0",
    "其他行政服务经理",
    " Other administrative services managers"
  ],
  [
    "0121",
    "0",
    "保险，房地产和金融经纪经理",
    " Insurance, real estate and financial brokerage managers"
  ],
  [
    "0122",
    "0",
    "银行，信贷和其他投资经理",
    " Banking, credit and other investment managers"
  ],
  [
    "0124",
    "0",
    "广告，市场营销和公共关系经理",
    " Advertising, marketing and public relations managers"
  ],
  [
    "0125",
    "0",
    "其他业务服务经理",
    " Other business services managers"
  ],
  [
    "0131",
    "0",
    "电信运营经理",
    " Telecommunication carriers managers"
  ],
  [
    "0132",
    "0",
    "邮政和快递服务经理",
    " Postal and courier services managers"
  ],
  [
    "0211",
    "0",
    "工程师经理",
    " Engineering managers"
  ],
  [
    "0212",
    "0",
    "建筑师和科学家经理",
    " Architecture and science managers"
  ],
  [
    "0213",
    "0",
    "计算机和信息系统经理",
    " Computer and information systems managers"
  ],
  [
    "0311",
    "0",
    "医疗保健经理",
    " Managers in health care"
  ],
  [
    "0411",
    "0",
    "政府管理人员-卫生和社会政策的制定和计划管理",
    " Government managers - health and social policy development and program administration"
  ],
  [
    "0412",
    "0",
    "政府管理人员-经济分析，政策制定和计划管理",
    " Government managers - economic analysis, policy development and program administration"
  ],
  [
    "0413",
    "0",
    "政府管理人员-制定教育政策和计划管理",
    " Government managers - education policy development and program administration"
  ],
  [
    "0414",
    "0",
    "其他公共管理经理",
    " Other managers in public administration"
  ],
  [
    "0421",
    "0",
    "管理员-中学后教育和职业培训",
    " Administrators - post-secondary education and vocational training"
  ],
  [
    "0422",
    "0",
    "初等和中等教育的学校校长和管理员",
    " School principals and administrators of elementary and secondary education"
  ],
  [
    "0423",
    "0",
    "社会，社区和惩教服务经理",
    " Managers in social, community and correctional services"
  ],
  [
    "0431",
    "0",
    "现役警察",
    " Commissioned police officers"
  ],
  [
    "0432",
    "0",
    "消防长官和高级消防人员",
    " Fire chiefs and senior firefighting officers"
  ],
  [
    "0433",
    "0",
    "加拿大部队军官",
    " Commissioned officers of the Canadian Armed Forces"
  ],
  [
    "0511",
    "0",
    "图书馆，档案馆，博物馆和艺术画廊经理",
    " Library, archive, museum and art gallery managers"
  ],
  [
    "0512",
    "0",
    "经理-出版，电影，广播和表演艺术",
    " Managers - publishing, motion pictures, broadcasting and performing arts"
  ],
  [
    "0513",
    "0",
    "娱乐，体育和健身计划和服务董事",
    " Recreation, sports and fitness program and service directors"
  ],
  [
    "0601",
    "0",
    "公司销售经理",
    " Corporate sales managers"
  ],
  [
    "0621",
    "0",
    "零售和批发贸易经理",
    " Retail and wholesale trade managers"
  ],
  [
    "0631",
    "0",
    "餐厅和食品服务经理",
    " Restaurant and food service managers"
  ],
  [
    "0632",
    "0",
    "住宿服务经理",
    " Accommodation service managers"
  ],
  [
    "0651",
    "0",
    "客户和个人服务经理，NEC",
    " Managers in customer and personal services, n.e.c."
  ],
  [
    "0711",
    "0",
    "建筑经理",
    " Construction managers"
  ],
  [
    "0712",
    "0",
    "家居建材和装修经理",
    " Home building and renovation managers"
  ],
  [
    "0714",
    "0",
    "设备操作和维护经理",
    " Facility operation and maintenance managers"
  ],
  [
    "0731",
    "0",
    "运输经理",
    " Managers in transportation"
  ],
  [
    "0811",
    "0",
    "自然资源经理和渔业经理",
    " Managers in natural resources production and fishing"
  ],
  [
    "0821",
    "0",
    "农业经理",
    " Managers in agriculture"
  ],
  [
    "0822",
    "0",
    "园艺经理",
    " Managers in horticulture"
  ],
  [
    "0823",
    "0",
    "水产养殖经理",
    " Managers in aquaculture"
  ],
  [
    "0911",
    "0",
    "制造业经理",
    " Manufacturing managers"
  ],
  [
    "0912",
    "0",
    "公用事业经理",
    " Utilities managers"
  ],
  [
    "1111",
    "A",
    "财务审计师和会计师",
    " Financial auditors and accountants"
  ],
  [
    "1112",
    "A",
    "财务及投资分析员",
    " Financial and investment analysts"
  ],
  [
    "1113",
    "A",
    "证券代理，投资交易商和经纪商",
    " Securities agents, investment dealers and brokers"
  ],
  [
    "1114",
    "A",
    "其他财务人员",
    " Other financial officers"
  ],
  [
    "1121",
    "A",
    "人力资源专业人士",
    " Human resources professionals"
  ],
  [
    "1122",
    "A",
    "企业管理咨询的专业职业",
    " Professional occupations in business management consulting"
  ],
  [
    "1123",
    "A",
    "广告，市场营销和公共关系专业职业",
    " Professional occupations in advertising, marketing and public relations"
  ],
  [
    "1211",
    "B",
    "主管，总经理办公室和行政支持人员",
    " Supervisors, general office and administrative support workers"
  ],
  [
    "1212",
    "B",
    "主管，金融保险业职业",
    " Supervisors, finance and insurance office workers"
  ],
  [
    "1213",
    "B",
    "主管，图书馆，通信及相关信息工作者",
    " Supervisors, library, correspondence and related information workers"
  ],
  [
    "1214",
    "B",
    "主管，邮政和信息分发职业",
    " Supervisors, mail and message distribution occupations"
  ],
  [
    "1215",
    "B",
    "主管，供应链，跟踪和调度协调职业",
    " Supervisors, supply chain, tracking and scheduling co-ordination occupations"
  ],
  [
    "1221",
    "B",
    "行政人员",
    " Administrative officers"
  ],
  [
    "1222",
    "B",
    "行政助理",
    " Executive assistants"
  ],
  [
    "1223",
    "B",
    "人力资源和招聘顾问",
    " Human resources and recruitment officers"
  ],
  [
    "1224",
    "B",
    "物业管理员",
    " Property administrators"
  ],
  [
    "1225",
    "B",
    "采购代理人员",
    " Purchasing agents and officers"
  ],
  [
    "1226",
    "B",
    "会议和活动策划",
    " Conference and event planners"
  ],
  [
    "1227",
    "B",
    "法院人员和治安法官",
    " Court officers and justices of the peace"
  ],
  [
    "1228",
    "B",
    "就业保险，移民，边境服务和缉私关员",
    " Employment insurance, immigration, border services and revenue officers"
  ],
  [
    "1241",
    "B",
    "行政助理",
    " Administrative assistants"
  ],
  [
    "1242",
    "B",
    "法律行政助理",
    " Legal administrative assistants"
  ],
  [
    "1243",
    "B",
    "医疗行政助理",
    " Medical administrative assistants"
  ],
  [
    "1251",
    "B",
    "法院书记官，医疗打字员及相关职业",
    " Court reporters, medical transcriptionists and related occupations"
  ],
  [
    "1252",
    "B",
    "卫生信息管理职业",
    " Health information management occupations"
  ],
  [
    "1253",
    "B",
    "记录管理技术员",
    " Records management technicians"
  ],
  [
    "1254",
    "B",
    "统计官员和相关研究支持职业",
    " Statistical officers and related research support occupations"
  ],
  [
    "1311",
    "B",
    "会计技师和会计员",
    " Accounting technicians and bookkeepers"
  ],
  [
    "1312",
    "B",
    "保险理算和索赔审查员",
    " Insurance adjusters and claims examiners"
  ],
  [
    "1313",
    "B",
    "保险承销商",
    " Insurance underwriters"
  ],
  [
    "1314",
    "B",
    "陪审员，房地产估价师和估价师",
    " Assessors, valuators and appraisers"
  ],
  [
    "1315",
    "B",
    "海关，船舶和其他经纪人",
    " Customs, ship and other brokers"
  ],
  [
    "1411",
    "C",
    "办公室支持工人",
    " General office support workers"
  ],
  [
    "1414",
    "C",
    "接待员",
    " Receptionists"
  ],
  [
    "1415",
    "C",
    "人事文员",
    " Personnel clerks"
  ],
  [
    "1416",
    "C",
    "书记员",
    " Court clerks"
  ],
  [
    "1422",
    "C",
    "数据录入员",
    " Data entry clerks"
  ],
  [
    "1423",
    "C",
    "桌面排版人员及相关职业",
    " Desktop publishing operators and related occupations"
  ],
  [
    "1431",
    "C",
    "会计及相关文员",
    " Accounting and related clerks"
  ],
  [
    "1432",
    "C",
    "工资办事员",
    " Payroll administrators"
  ],
  [
    "1434",
    "C",
    "银行，保险和其他财务人员",
    " Banking, insurance and other financial clerks"
  ],
  [
    "1435",
    "C",
    "收集员",
    " Collectors"
  ],
  [
    "1451",
    "C",
    "图书馆助理和办事员",
    " Library assistants and clerks"
  ],
  [
    "1452",
    "C",
    "通信，出版和监管办事员",
    " Correspondence, publication and regulatory clerks"
  ],
  [
    "1454",
    "C",
    "调查采访和统计文员",
    " Survey interviewers and statistical clerks"
  ],
  [
    "1511",
    "C",
    "邮件，邮政及有关人员",
    " Mail, postal and related workers"
  ],
  [
    "1512",
    "C",
    "邮递员",
    " Letter carriers"
  ],
  [
    "1513",
    "C",
    "快递，速递和送货到门经销商",
    " Couriers, messengers and door-to-door distributors"
  ],
  [
    "1521",
    "C",
    "托运人和接收员",
    " Shippers and receivers"
  ],
  [
    "1522",
    "C",
    "仓库保管员",
    " Storekeepers and partspersons"
  ],
  [
    "1523",
    "C",
    "生产物流协调员",
    " Production logistics co-ordinators"
  ],
  [
    "1524",
    "C",
    "采购与库存控制工人",
    " Purchasing and inventory control workers"
  ],
  [
    "1525",
    "C",
    "调度员",
    " Dispatchers"
  ],
  [
    "1526",
    "C",
    "交通路线和船员调度",
    " Transportation route and crew schedulers"
  ],
  [
    "2111",
    "A",
    "物理学家和天文学家",
    " Physicists and astronomers"
  ],
  [
    "2112",
    "A",
    "化学家",
    " Chemists"
  ],
  [
    "2113",
    "A",
    "地质学家和海洋学家",
    " Geoscientists and oceanographers"
  ],
  [
    "2114",
    "A",
    "气象学家和气候学家",
    " Meteorologists and climatologists"
  ],
  [
    "2115",
    "A",
    "物理科学其他专业职业",
    " Other professional occupations in physical sciences"
  ],
  [
    "2121",
    "A",
    "生物学家及相关科学家",
    " Biologists and related scientists"
  ],
  [
    "2122",
    "A",
    "林业专业人员",
    " Forestry professionals"
  ],
  [
    "2123",
    "A",
    "农业代表，顾问和专家",
    " Agricultural representatives, consultants and specialists"
  ],
  [
    "2131",
    "A",
    "土木工程师",
    " Civil engineers"
  ],
  [
    "2132",
    "A",
    "机械工程师",
    " Mechanical engineers"
  ],
  [
    "2133",
    "A",
    "电气和电子工程师",
    " Electrical and electronics engineers"
  ],
  [
    "2134",
    "A",
    "化学工程师",
    " Chemical engineers"
  ],
  [
    "2141",
    "A",
    "工业和制造工程师",
    " Industrial and manufacturing engineers"
  ],
  [
    "2142",
    "A",
    "冶金与材料工程师",
    " Metallurgical and materials engineers"
  ],
  [
    "2143",
    "A",
    "矿业工程师",
    " Mining engineers"
  ],
  [
    "2144",
    "A",
    "地质工程师",
    " Geological engineers"
  ],
  [
    "2145",
    "A",
    "石油工程师",
    " Petroleum engineers"
  ],
  [
    "2146",
    "A",
    "航天工程师",
    " Aerospace engineers"
  ],
  [
    "2147",
    "A",
    "计算机工程师（软件工程师和设计师除外）",
    " Computer engineers (except software engineers and designers)"
  ],
  [
    "2148",
    "A",
    "其他专业工程师，n.e.c.",
    " Other professional engineers, n.e.c."
  ],
  [
    "2151",
    "A",
    "建筑师",
    " Architects"
  ],
  [
    "2152",
    "A",
    "景观建筑师",
    " Landscape architects"
  ],
  [
    "2153",
    "A",
    "城市规划和土地使用规划师",
    " Urban and land use planners"
  ],
  [
    "2154",
    "A",
    "土地测量师",
    " Land surveyors"
  ],
  [
    "2161",
    "A",
    "数学家，统计学家和精算师",
    " Mathematicians, statisticians and actuaries"
  ],
  [
    "2171",
    "A",
    "信息系统分析师和顾问",
    " Information systems analysts and consultants"
  ],
  [
    "2172",
    "A",
    "数据库分析师和数据管理员",
    " Database analysts and data administrators"
  ],
  [
    "2173",
    "A",
    "软件工程师和设计师",
    " Software engineers and designers"
  ],
  [
    "2174",
    "A",
    "计算机程序员和互动媒体开发",
    " Computer programmers and interactive media developers"
  ],
  [
    "2175",
    "A",
    "网页设计师和开发人员",
    " Web designers and developers"
  ],
  [
    "2211",
    "B",
    "化学技师和技术员",
    " Chemical technologists and technicians"
  ],
  [
    "2212",
    "B",
    "地质和矿产技师和技术员",
    " Geological and mineral technologists and technicians"
  ],
  [
    "2221",
    "B",
    "生物技术专家和技术人员",
    " Biological technologists and technicians"
  ],
  [
    "2222",
    "B",
    "农业和鱼产品检查员",
    " Agricultural and fish products inspectors"
  ],
  [
    "2223",
    "B",
    "林业技师和技术员",
    " Forestry technologists and technicians"
  ],
  [
    "2224",
    "B",
    "保护和渔政人员",
    " Conservation and fishery officers"
  ],
  [
    "2225",
    "B",
    "园林和园艺技术人员和专家",
    " Landscape and horticulture technicians and specialists"
  ],
  [
    "2231",
    "B",
    "民用工程技师和技术员",
    " Civil engineering technologists and technicians"
  ],
  [
    "2232",
    "B",
    "机械工程技术人员和技术人员",
    " Mechanical engineering technologists and technicians"
  ],
  [
    "2233",
    "B",
    "工业工程与制造技师和技术员",
    " Industrial engineering and manufacturing technologists and technicians"
  ],
  [
    "2234",
    "B",
    "建筑估价师",
    " Construction estimators"
  ],
  [
    "2241",
    "B",
    "电气和电子工程技术人员和技术人员",
    " Electrical and electronics engineering technologists and technicians"
  ],
  [
    "2242",
    "B",
    "电子维修技师（家用和商用设备等）",
    " Electronic service technicians (household and business equipment)"
  ],
  [
    "2243",
    "B",
    "工业仪器仪表的技术人员和机械师",
    " Industrial instrument technicians and mechanics"
  ],
  [
    "2244",
    "B",
    "飞机仪表，电气和航空电子设备技工，技师和检查员",
    " Aircraft instrument, electrical and avionics mechanics, technicians and inspectors"
  ],
  [
    "2251",
    "B",
    "建筑技师和技术员",
    " Architectural technologists and technicians"
  ],
  [
    "2252",
    "B",
    "工业设计师",
    " Industrial designers"
  ],
  [
    "2253",
    "B",
    "起草技师和技术员",
    " Drafting technologists and technicians"
  ],
  [
    "2254",
    "B",
    "土地调查技术人员和技师",
    " Land survey technologists and technicians"
  ],
  [
    "2255",
    "B",
    "大地测量学和气象学技术职业",
    " Technical occupations in geomatics and meteorology"
  ],
  [
    "2261",
    "B",
    "非破坏性测试人员和检验技术人员",
    " Non-destructive testers and inspection technicians"
  ],
  [
    "2262",
    "B",
    "工程督察和监管人员",
    " Engineering inspectors and regulatory officers"
  ],
  [
    "2263",
    "B",
    "公众和环境健康及职业健康安全检查员",
    " Inspectors in public and environmental health and occupational health and safety"
  ],
  [
    "2264",
    "B",
    "建设检查员",
    " Construction inspectors"
  ],
  [
    "2271",
    "B",
    "航空飞行员，飞行工程师和飞行教官",
    " Air pilots, flight engineers and flying instructors"
  ],
  [
    "2272",
    "B",
    "空中交通管制及相关职业",
    " Air traffic controllers and related occupations"
  ],
  [
    "2273",
    "B",
    "甲板人员，水上运输",
    " Deck officers, water transport"
  ],
  [
    "2274",
    "B",
    "工程师人员，水上运输",
    " Engineer officers, water transport"
  ],
  [
    "2275",
    "B",
    "铁路交通管制和海上交通监管",
    " Railway traffic controllers and marine traffic regulators"
  ],
  [
    "2281",
    "B",
    "计算机网络技术",
    " Computer network technicians"
  ],
  [
    "2282",
    "B",
    "用户技术支持人员",
    " User support technicians"
  ],
  [
    "2283",
    "B",
    "信息系统测试技术员",
    " Information systems testing technicians"
  ],
  [
    "3011",
    "A",
    "护理协调员及主管",
    " Nursing co-ordinators and supervisors"
  ],
  [
    "3012",
    "A",
    "注册护士及注册精神科护士",
    " Registered nurses and registered psychiatric nurses"
  ],
  [
    "3111",
    "A",
    "专科医师",
    " Specialist physicians"
  ],
  [
    "3112",
    "A",
    "全科医生和家庭医生",
    " General practitioners and family physicians"
  ],
  [
    "3113",
    "A",
    "牙医",
    " Dentists"
  ],
  [
    "3114",
    "A",
    "兽医",
    " Veterinarians"
  ],
  [
    "3121",
    "A",
    "视光师",
    " Optometrists"
  ],
  [
    "3122",
    "A",
    "脊医（按摩疗法医生）",
    " Chiropractors"
  ],
  [
    "3124",
    "A",
    "同盟初级保健医生",
    " Allied primary health practitioners"
  ],
  [
    "3125",
    "A",
    "其他专业的健康诊断和治疗职业",
    " Other professional occupations in health diagnosing and treating"
  ],
  [
    "3131",
    "A",
    "药剂师",
    " Pharmacists"
  ],
  [
    "3132",
    "A",
    "营养师和营养学家",
    " Dietitians and nutritionists"
  ],
  [
    "3141",
    "A",
    "听觉病矫治专家和语音语言病理学家",
    " Audiologists and speech-language pathologists"
  ],
  [
    "3142",
    "A",
    "物理治疗师",
    " Physiotherapists"
  ],
  [
    "3143",
    "A",
    "职业治疗师",
    " Occupational therapists"
  ],
  [
    "3144",
    "A",
    "其他专业的职业治疗和评估",
    " Other professional occupations in therapy and assessment"
  ],
  [
    "3211",
    "B",
    "医学实验室化验师",
    " Medical laboratory technologists"
  ],
  [
    "3212",
    "B",
    "医学实验室技术人员和病理学家助理",
    " Medical laboratory technicians and pathologists' assistants"
  ],
  [
    "3213",
    "B",
    "动物健康技术人员和兽医技术人员",
    " Animal health technologists and veterinary technicians"
  ],
  [
    "3214",
    "B",
    "呼吸治疗师，临床灌注和心肺技师",
    " Respiratory therapists, clinical perfusionists and cardiopulmonary technologists"
  ],
  [
    "3215",
    "B",
    "医疗放射技师",
    " Medical radiation technologists"
  ],
  [
    "3216",
    "B",
    "医用超声检查",
    " Medical sonographers"
  ],
  [
    "3217",
    "B",
    "心脏病学技师和电生理诊断技师，制造业",
    " Cardiology technologists and electrophysiological diagnostic technologists, n.e.c."
  ],
  [
    "3219",
    "B",
    "其他医疗技师和技术员（除牙齿健康）",
    " Other medical technologists and technicians (except dental health)"
  ],
  [
    "3221",
    "B",
    "牙科艺人（镶牙）",
    " Denturists"
  ],
  [
    "3222",
    "B",
    "牙齿卫生员，牙科治疗",
    " Dental hygienists and dental therapists"
  ],
  [
    "3223",
    "B",
    "牙科技师，技术员及实验室助理",
    " Dental technologists, technicians and laboratory assistants"
  ],
  [
    "3231",
    "B",
    "配镜师",
    " Opticians"
  ],
  [
    "3232",
    "B",
    "自然疗法职业医师",
    " Practitioners of natural healing"
  ],
  [
    "3233",
    "B",
    "执照护士",
    " Licensed practical nurses"
  ],
  [
    "3234",
    "B",
    "医疗辅助职业",
    " Paramedical occupations"
  ],
  [
    "3236",
    "B",
    "按摩治疗师",
    " Massage therapists"
  ],
  [
    "3237",
    "B",
    "其他技术职业治疗和评估",
    " Other technical occupations in therapy and assessment"
  ],
  [
    "3411",
    "C",
    "牙科助理",
    " Dental assistants"
  ],
  [
    "3413",
    "C",
    "护士助手，看护员和病人服务合作员",
    " Nurse aides, orderlies and patient service associates"
  ],
  [
    "3414",
    "C",
    "其他协助职业卫生服务的支持",
    " Other assisting occupations in support of health services"
  ],
  [
    "4011",
    "0",
    "大学教授和讲师",
    " University professors and lecturers"
  ],
  [
    "4012",
    "0",
    "大专的教学和研究助理",
    " Post-secondary teaching and research assistants"
  ],
  [
    "4021",
    "0",
    "学院和其他职业教师",
    " College and other vocational instructors"
  ],
  [
    "4031",
    "0",
    "中学教师",
    " Secondary school teachers"
  ],
  [
    "4032",
    "0",
    "小学和幼儿园教师",
    " Elementary school and kindergarten teachers"
  ],
  [
    "4033",
    "0",
    "教育辅导员",
    " Educational counsellors"
  ],
  [
    "4111",
    "A",
    "法官",
    " Judges"
  ],
  [
    "4112",
    "A",
    "律师和魁北克公证人",
    " Lawyers and Quebec notaries"
  ],
  [
    "4151",
    "A",
    "心理学家",
    " Psychologists"
  ],
  [
    "4152",
    "A",
    "社会工作者",
    " Social workers"
  ],
  [
    "4153",
    "A",
    "家庭，婚姻和其他相关的辅导员",
    " Family, marriage and other related counsellors"
  ],
  [
    "4154",
    "A",
    "宗教专家职业",
    " Professional occupations in religion"
  ],
  [
    "4155",
    "A",
    "缓刑和假释人员及相关行业",
    " Probation and parole officers and related occupations"
  ],
  [
    "4156",
    "A",
    "就业辅导员",
    " Employment counsellors"
  ],
  [
    "4161",
    "A",
    "自然和应用科学政策研究人员，顾问和项目官员",
    " Natural and applied science policy researchers, consultants and program officers"
  ],
  [
    "4162",
    "A",
    "经济学家和经济政策研究人员和分析师",
    " Economists and economic policy researchers and analysts"
  ],
  [
    "4163",
    "A",
    "商业发展主任及营销研究人员和顾问",
    " Business development officers and marketing researchers and consultants"
  ],
  [
    "4164",
    "A",
    "社会政策研究人员，顾问和项目官员",
    " Social policy researchers, consultants and program officers"
  ],
  [
    "4165",
    "A",
    "卫生政策研究人员，顾问和项目官员",
    " Health policy researchers, consultants and program officers"
  ],
  [
    "4166",
    "A",
    "教育政策研究人员，顾问和项目官员",
    " Education policy researchers, consultants and program officers"
  ],
  [
    "4167",
    "A",
    "娱乐，体育和健身政策研究人员，顾问和项目官员",
    " Recreation, sports and fitness policy researchers, consultants and program officers"
  ],
  [
    "4168",
    "A",
    "政府计划官员",
    " Program officers unique to government"
  ],
  [
    "4169",
    "A",
    "其他社会科学专员 NEC",
    " Other professional occupations in social science, n.e.c."
  ],
  [
    "4211",
    "B",
    "律师助理及相关职业",
    " Paralegal and related occupations"
  ],
  [
    "4212",
    "B",
    "社会和社区服务工作者",
    " Social and community service workers"
  ],
  [
    "4214",
    "B",
    "幼儿教育工作者和助理",
    " Early childhood educators and assistants"
  ],
  [
    "4215",
    "B",
    "残疾人教练",
    " Instructors of persons with disabilities"
  ],
  [
    "4216",
    "B",
    "其他教官",
    " Other instructors"
  ],
  [
    "4217",
    "B",
    "其他宗教职业",
    " Other religious occupations"
  ],
  [
    "4311",
    "B",
    "警员（除现役）",
    " Police officers (except commissioned)"
  ],
  [
    "4312",
    "B",
    "消防队员",
    " Firefighters"
  ],
  [
    "4313",
    "B",
    "非现役加拿大部队",
    " Non-commissioned ranks of the Canadian Armed Forces"
  ],
  [
    "4411",
    "C",
    "家庭儿童护理提供者",
    " Home child care providers"
  ],
  [
    "4412",
    "C",
    "家庭支持工人，管家和相关职业",
    " Home support workers, housekeepers and related occupations"
  ],
  [
    "4413",
    "C",
    "小学和中学教师助理",
    " Elementary and secondary school teacher assistants"
  ],
  [
    "4421",
    "C",
    "警长和法警",
    " Sheriffs and bailiffs"
  ],
  [
    "4422",
    "C",
    "惩教服务人员",
    " Correctional service officers"
  ],
  [
    "4423",
    "C",
    "执法及其他监管人员，NEC",
    " By-law enforcement and other regulatory officers, n.e.c."
  ],
  [
    "5111",
    "A",
    "图书管理员",
    " Librarians"
  ],
  [
    "5112",
    "A",
    "保管员和馆长",
    " Conservators and curators"
  ],
  [
    "5113",
    "A",
    "档案管理员",
    " Archivists"
  ],
  [
    "5121",
    "A",
    "作者和作家",
    " Authors and writers"
  ],
  [
    "5122",
    "A",
    "编辑",
    " Editors"
  ],
  [
    "5123",
    "A",
    "记者",
    " Journalists"
  ],
  [
    "5125",
    "A",
    "翻译，术语学家和口译",
    " Translators, terminologists and interpreters"
  ],
  [
    "5131",
    "A",
    "制片人，导演，编舞和相关职业",
    " Producers, directors, choreographers and related occupations"
  ],
  [
    "5132",
    "A",
    "指挥家，作曲家和编曲",
    " Conductors, composers and arrangers"
  ],
  [
    "5133",
    "A",
    "音乐家和歌手",
    " Musicians and singers"
  ],
  [
    "5134",
    "A",
    "舞者",
    " Dancers"
  ],
  [
    "5135",
    "A",
    "演员和喜剧演员",
    " Actors and comedians"
  ],
  [
    "5136",
    "A",
    "画家，雕塑家和其他视觉艺术家",
    " Painters, sculptors and other visual artists"
  ],
  [
    "5211",
    "B",
    "图书馆和公共档案技师",
    " Library and public archive technicians"
  ],
  [
    "5212",
    "B",
    "博物馆和艺术画廊相关技术职业",
    " Technical occupations related to museums and art galleries"
  ],
  [
    "5221",
    "B",
    "摄影师",
    " Photographers"
  ],
  [
    "5222",
    "B",
    "电影和视频摄像机操作员",
    " Film and video camera operators"
  ],
  [
    "5223",
    "B",
    "图形艺术技术员的",
    " Graphic arts technicians"
  ],
  [
    "5224",
    "B",
    "广播技术员",
    " Broadcast technicians"
  ],
  [
    "5225",
    "B",
    "音频和视频录制技术人员",
    " Audio and video recording technicians"
  ],
  [
    "5226",
    "B",
    "其他技术和协调职业运动图片，广播和表演艺术",
    " Other technical and co-ordinating occupations in motion pictures, broadcasting and the performing arts"
  ],
  [
    "5227",
    "B",
    "电影，广播，摄影和表演艺术支持职业",
    " Support occupations in motion pictures, broadcasting, photography and the performing arts"
  ],
  [
    "5231",
    "B",
    "播音员和其他广播",
    " Announcers and other broadcasters"
  ],
  [
    "5232",
    "B",
    "其他表演者，n.e.c.",
    " Other performers, n.e.c."
  ],
  [
    "5241",
    "B",
    "平面设计师和插画画家",
    " Graphic designers and illustrators"
  ],
  [
    "5242",
    "B",
    "室内设计师和室内装饰师",
    " Interior designers and interior decorators"
  ],
  [
    "5243",
    "B",
    "剧场，时尚，展览和其他创意设计师",
    " Theatre, fashion, exhibit and other creative designers"
  ],
  [
    "5244",
    "B",
    "工匠和手艺匠",
    " Artisans and craftspersons"
  ],
  [
    "5245",
    "B",
    "制模工-纺织，皮革和毛皮产品",
    " Patternmakers - textile, leather and fur products"
  ],
  [
    "5251",
    "B",
    "运动员",
    " Athletes"
  ],
  [
    "5252",
    "B",
    "教练",
    " Coaches"
  ],
  [
    "5253",
    "B",
    "体育官员和裁判",
    " Sports officials and referees"
  ],
  [
    "5254",
    "B",
    "计划的领导和教师在娱乐，体育和健身",
    " Program leaders and instructors in recreation, sport and fitness"
  ],
  [
    "6211",
    "B",
    "零售销售主管的",
    " Retail sales supervisors"
  ],
  [
    "6221",
    "B",
    "技术销售专家-批发贸易",
    " Technical sales specialists - wholesale trade"
  ],
  [
    "6222",
    "B",
    "零售及批发买家",
    " Retail and wholesale buyers"
  ],
  [
    "6231",
    "B",
    "保险代理人和经纪人",
    " Insurance agents and brokers"
  ],
  [
    "6232",
    "B",
    "地产代理及营业员",
    " Real estate agents and salespersons"
  ],
  [
    "6235",
    "B",
    "金融销售代表",
    " Financial sales representatives"
  ],
  [
    "6311",
    "B",
    "餐饮服务主管",
    " Food service supervisors"
  ],
  [
    "6312",
    "B",
    "执行开发部经理",
    " Executive housekeepers"
  ],
  [
    "6313",
    "B",
    "住宿，旅游，旅游及相关服务，主管",
    " Accommodation, travel, tourism and related services supervisors"
  ],
  [
    "6314",
    "B",
    "客户和信息服务监督员",
    " Customer and information services supervisors"
  ],
  [
    "6315",
    "B",
    "清洁主管",
    " Cleaning supervisors"
  ],
  [
    "6316",
    "B",
    "其他服务主管",
    " Other services supervisors"
  ],
  [
    "6321",
    "B",
    "厨师",
    " Chefs"
  ],
  [
    "6322",
    "B",
    "厨师",
    " Cooks"
  ],
  [
    "6331",
    "B",
    "屠宰，切肉和鱼贩-零售及批发",
    " Butchers, meat cutters and fishmongers - retail and wholesale"
  ],
  [
    "6332",
    "B",
    "面包师",
    " Bakers"
  ],
  [
    "6341",
    "B",
    "发型师和理发师",
    " Hairstylists and barbers"
  ],
  [
    "6342",
    "B",
    "裁缝，裁缝，皮货和女帽",
    " Tailors, dressmakers, furriers and milliners"
  ],
  [
    "6343",
    "B",
    "擦鞋维修和鞋匠",
    " Shoe repairers and shoemakers"
  ],
  [
    "6344",
    "B",
    "珠宝商，珠宝及钟表维修及相关行业",
    " Jewellers, jewellery and watch repairers and related occupations"
  ],
  [
    "6345",
    "B",
    "装潢商",
    " Upholsterers"
  ],
  [
    "6346",
    "B",
    "殡仪董事和尸体防腐者",
    " Funeral directors and embalmers"
  ],
  [
    "6411",
    "C",
    "销售和客户代表-批发业（非技术）",
    " Sales and account representatives - wholesale trade (non-technical)"
  ],
  [
    "6421",
    "C",
    "零售售货员",
    " Retail salespersons"
  ],
  [
    "6511",
    "C",
    "旅店老板",
    " Maîtres d'hôtel and hosts/hostesses"
  ],
  [
    "6512",
    "C",
    "调酒师",
    " Bartenders"
  ],
  [
    "6513",
    "C",
    "食品和饮料服务员",
    " Food and beverage servers"
  ],
  [
    "6521",
    "C",
    "旅游辅导员",
    " Travel counsellors"
  ],
  [
    "6522",
    "C",
    "事务长和飞行服务员",
    " Pursers and flight attendants"
  ],
  [
    "6523",
    "C",
    "机票和服务代理",
    " Airline ticket and service agents"
  ],
  [
    "6524",
    "C",
    "地面和水上运输票务代理，货运服务代表及相关文员",
    " Ground and water transport ticket agents, cargo service representatives and related clerks"
  ],
  [
    "6525",
    "C",
    "酒店前台文员",
    " Hotel front desk clerks"
  ],
  [
    "6531",
    "C",
    "旅行和旅游导游",
    " Tour and travel guides"
  ],
  [
    "6532",
    "C",
    "户外运动和娱乐导引员",
    " Outdoor sport and recreational guides"
  ],
  [
    "6533",
    "C",
    "赌场娱乐城职业",
    " Casino occupations"
  ],
  [
    "6541",
    "C",
    "安全警卫和相关安全服务的职业",
    " Security guards and related security service occupations"
  ],
  [
    "6551",
    "C",
    "客户服务代表-金融机构",
    " Customer services representatives - financial institutions"
  ],
  [
    "6552",
    "C",
    "其他客户和信息服务代表",
    " Other customer and information services representatives"
  ],
  [
    "6561",
    "C",
    "影像，社会和其他个人顾问",
    " Image, social and other personal consultants"
  ],
  [
    "6562",
    "C",
    "美学家，电蚀医师及相关职业",
    " Estheticians, electrologists and related occupations"
  ],
  [
    "6563",
    "C",
    "宠物美容师和动物保健工作者",
    " Pet groomers and animal care workers"
  ],
  [
    "6564",
    "C",
    "其他个人服务行业",
    " Other personal service occupations"
  ],
  [
    "6611",
    "D",
    "收银员",
    " Cashiers"
  ],
  [
    "6621",
    "D",
    "服务站服务员",
    " Service station attendants"
  ],
  [
    "6622",
    "D",
    "商店货架储存器，管理员和订单取货",
    " Store shelf stockers, clerks and order fillers"
  ],
  [
    "6623",
    "D",
    "其他销售相关职业",
    " Other sales related occupations"
  ],
  [
    "6711",
    "D",
    "食品柜台服务员，厨房助手和相关支持职业",
    " Food counter attendants, kitchen helpers and related support occupations"
  ],
  [
    "6721",
    "D",
    "支持职业住宿，旅游设施建立服务",
    " Support occupations in accommodation, travel and facilities set-up services"
  ],
  [
    "6722",
    "D",
    "运营商和服务员在娱乐，休闲和运动",
    " Operators and attendants in amusement, recreation and sport"
  ],
  [
    "6731",
    "D",
    "轻型清洁工",
    " Light duty cleaners"
  ],
  [
    "6732",
    "D",
    "专业清洁工",
    " Specialized cleaners"
  ],
  [
    "6733",
    "D",
    "门卫，管理员和建筑管理者",
    " Janitors, caretakers and building superintendents"
  ],
  [
    "6741",
    "D",
    "干洗，洗衣及相关职业",
    " Dry cleaning, laundry and related occupations"
  ],
  [
    "6742",
    "D",
    "其他服务支持职业，n.e.c.",
    " Other service support occupations, n.e.c."
  ],
  [
    "7201",
    "B",
    "机械加工，金属成型，塑造和树立行业及相关行业，承包商和监督员",
    " Contractors and supervisors, machining, metal forming, shaping and erecting trades and related occupations"
  ],
  [
    "7202",
    "B",
    "电力行业和电信行业，承包商和监督员",
    " Contractors and supervisors, electrical trades and telecommunications occupations"
  ],
  [
    "7203",
    "B",
    "管道安装工，承包商和监督员",
    " Contractors and supervisors, pipefitting trades"
  ],
  [
    "7204",
    "B",
    "木工行业，承包商和监督员",
    " Contractors and supervisors, carpentry trades"
  ],
  [
    "7205",
    "B",
    "建设行业，安装，维修和服务商，承包商和监督员",
    " Contractors and supervisors, other construction trades, installers, repairers and servicers"
  ],
  [
    "7231",
    "B",
    "机械师和加工和模具督察",
    " Machinists and machining and tooling inspectors"
  ],
  [
    "7232",
    "B",
    "的工具和模具制造商",
    " Tool and die makers"
  ],
  [
    "7233",
    "B",
    "钣金工人",
    " Sheet metal workers"
  ],
  [
    "7234",
    "B",
    "锅炉工",
    " Boilermakers"
  ],
  [
    "7235",
    "B",
    "金属结构和platework制造和钳工",
    " Structural metal and platework fabricators and fitters"
  ],
  [
    "7236",
    "B",
    "联合冲剪机",
    " Ironworkers"
  ],
  [
    "7237",
    "B",
    "焊工和相关机器操作员",
    " Welders and related machine operators"
  ],
  [
    "7241",
    "B",
    "电工（除工业和电力系统）",
    " Electricians (except industrial and power system)"
  ],
  [
    "7242",
    "B",
    "工业电工",
    " Industrial electricians"
  ],
  [
    "7243",
    "B",
    "电力系统电工",
    " Power system electricians"
  ],
  [
    "7244",
    "B",
    "电源线和电缆工人",
    " Electrical power line and cable workers"
  ],
  [
    "7245",
    "B",
    "电信线路和电缆工人",
    " Telecommunications line and cable workers"
  ],
  [
    "7246",
    "B",
    "电信安装和维修工人",
    " Telecommunications installation and repair workers"
  ],
  [
    "7247",
    "B",
    "有线电视服务和维修技师",
    " Cable television service and maintenance technicians"
  ],
  [
    "7251",
    "B",
    "管道工",
    " Plumbers"
  ],
  [
    "7252",
    "B",
    "蒸汽管道工人，管道装配和自动喷水灭火系统安装",
    " Steamfitters, pipefitters and sprinkler system installers"
  ],
  [
    "7253",
    "B",
    "燃气钳工",
    " Gas fitters"
  ],
  [
    "7271",
    "B",
    "木匠",
    " Carpenters"
  ],
  [
    "7272",
    "B",
    "橱柜制作",
    " Cabinetmakers"
  ],
  [
    "7281",
    "B",
    "瓦工",
    " Bricklayers"
  ],
  [
    "7282",
    "B",
    "混凝土选手",
    " Concrete finishers"
  ],
  [
    "7283",
    "B",
    "砖瓦工",
    " Tilesetters"
  ],
  [
    "7284",
    "B",
    "泥水工，石膏板安装名将和适当的泡沫",
    " Plasterers, drywall installers and finishers and lathers"
  ],
  [
    "7291",
    "B",
    "盖屋顶和积压操作员",
    " Roofers and shinglers"
  ],
  [
    "7292",
    "B",
    "玻璃匠",
    " Glaziers"
  ],
  [
    "7293",
    "B",
    "绝缘子",
    " Insulators"
  ],
  [
    "7294",
    "B",
    "画家和装饰（室内装修除外）",
    " Painters and decorators (except interior decorators)"
  ],
  [
    "7295",
    "B",
    "楼覆盖安装程序",
    " Floor covering installers"
  ],
  [
    "7301",
    "B",
    "承包商和主管，机械行业",
    " Contractors and supervisors, mechanic trades"
  ],
  [
    "7302",
    "B",
    "承包商和监督员，重型设备操作人员",
    " Contractors and supervisors, heavy equipment operator crews"
  ],
  [
    "7303",
    "B",
    "主管，印刷及相关行业",
    " Supervisors, printing and related occupations"
  ],
  [
    "7304",
    "B",
    "主管，铁路运输业务",
    " Supervisors, railway transport operations"
  ],
  [
    "7305",
    "B",
    "主管，汽车运输和其他地面公交运营",
    " Supervisors, motor transport and other ground transit operators"
  ],
  [
    "7311",
    "B",
    "的建设millwrights和工业机械",
    " Construction millwrights and industrial mechanics"
  ],
  [
    "7312",
    "B",
    "重型设备技师",
    " Heavy-duty equipment mechanics"
  ],
  [
    "7313",
    "B",
    "制冷与空调技工",
    " Heating, refrigeration and air conditioning mechanics"
  ],
  [
    "7314",
    "B",
    "铁路卡门/妇女",
    " Railway carmen/women"
  ],
  [
    "7315",
    "B",
    "飞机机械师和飞机检查员",
    " Aircraft mechanics and aircraft inspectors"
  ],
  [
    "7316",
    "B",
    "机械钳工",
    " Machine fitters"
  ],
  [
    "7318",
    "B",
    "电梯的构造和力学",
    " Elevator constructors and mechanics"
  ],
  [
    "7321",
    "B",
    "汽车维修技师，卡车和公共汽车力学和机械维修",
    " Automotive service technicians, truck and bus mechanics and mechanical repairers"
  ],
  [
    "7322",
    "B",
    "汽车车身维修师",
    " Motor vehicle body repairers"
  ],
  [
    "7331",
    "B",
    "石油和固体燃料加热力学的",
    " Oil and solid fuel heating mechanics"
  ],
  [
    "7332",
    "B",
    "家电服务商和维修",
    " Appliance servicers and repairers"
  ],
  [
    "7333",
    "B",
    "电气力学",
    " Electrical mechanics"
  ],
  [
    "7334",
    "B",
    "摩托车，全地形车和其他相关力学",
    " Motorcycle, all-terrain vehicle and other related mechanics"
  ],
  [
    "7335",
    "B",
    "其他小型发动机和小型设备维修",
    " Other small engine and small equipment repairers"
  ],
  [
    "7361",
    "B",
    "铁路和堆场机车工程师",
    " Railway and yard locomotive engineers"
  ],
  [
    "7362",
    "B",
    "铁路导体和列车机务员/女性",
    " Railway conductors and brakemen/women"
  ],
  [
    "7371",
    "B",
    "起重机操作员",
    " Crane operators"
  ],
  [
    "7372",
    "B",
    "钻井和爆破员-表面采矿，采石和建筑",
    " Drillers and blasters - surface mining, quarrying and construction"
  ],
  [
    "7373",
    "B",
    "钻井工人",
    " Water well drillers"
  ],
  [
    "7381",
    "B",
    "印刷机操作员",
    " Printing press operators"
  ],
  [
    "7384",
    "B",
    "其他行业及相关行业，n.e.c.",
    " Other trades and related occupations, n.e.c."
  ],
  [
    "7441",
    "C",
    "住宅和商业安装和服务商",
    " Residential and commercial installers and servicers"
  ],
  [
    "7442",
    "C",
    "水务和燃气维修工人",
    " Waterworks and gas maintenance workers"
  ],
  [
    "7444",
    "C",
    "害虫控制器和熏蒸",
    " Pest controllers and fumigators"
  ],
  [
    "7445",
    "C",
    "其他的维修和服务商",
    " Other repairers and servicers"
  ],
  [
    "7451",
    "C",
    "朗绍尔工人",
    " Longshore workers"
  ],
  [
    "7452",
    "C",
    "材料处理程序",
    " Material handlers"
  ],
  [
    "7511",
    "C",
    "运输卡车司机",
    " Transport truck drivers"
  ],
  [
    "7512",
    "C",
    "巴士司机，地铁运营及其他交通营办商",
    " Bus drivers, subway operators and other transit operators"
  ],
  [
    "7513",
    "C",
    "出租车和豪华轿车的司机和司机",
    " Taxi and limousine drivers and chauffeurs"
  ],
  [
    "7514",
    "C",
    "交货和快递服务司机",
    " Delivery and courier service drivers"
  ],
  [
    "7521",
    "C",
    "重型设备操作员（除了起重机）",
    " Heavy equipment operators (except crane)"
  ],
  [
    "7522",
    "C",
    "公共工程维护设备操作人员及相关人员",
    " Public works maintenance equipment operators and related workers"
  ],
  [
    "7531",
    "C",
    "铁路堆场和养路工人",
    " Railway yard and track maintenance workers"
  ],
  [
    "7532",
    "C",
    "水上运输甲板和机房船员",
    " Water transport deck and engine room crew"
  ],
  [
    "7533",
    "C",
    "船和电缆渡轮营办商及相关行业",
    " Boat and cable ferry operators and related occupations"
  ],
  [
    "7534",
    "C",
    "航空运输坡道服务员",
    " Air transport ramp attendants"
  ],
  [
    "7535",
    "C",
    "其他汽车的机械安装和服务商",
    " Other automotive mechanical installers and servicers"
  ],
  [
    "7611",
    "D",
    "建筑行业佣工和劳动者",
    " Construction trades helpers and labourers"
  ],
  [
    "7612",
    "D",
    "其他行业佣工及劳动者",
    " Other trades helpers and labourers"
  ],
  [
    "7621",
    "D",
    "公共工程和维护劳动者",
    " Public works and maintenance labourers"
  ],
  [
    "7622",
    "D",
    "铁路和汽车运输工人",
    " Railway and motor transport labourers"
  ],
  [
    "8211",
    "B",
    "主管，伐木和林业",
    " Supervisors, logging and forestry"
  ],
  [
    "8221",
    "B",
    "主管，采矿和采石",
    " Supervisors, mining and quarrying"
  ],
  [
    "8222",
    "B",
    "承包商和监督员，石油和天然气钻探和服务",
    " Contractors and supervisors, oil and gas drilling and services"
  ],
  [
    "8231",
    "B",
    "地下生产和开发矿工",
    " Underground production and development miners"
  ],
  [
    "8232",
    "B",
    "石油和天然气钻井工人，服务人员，测试人员及有关人员",
    " Oil and gas well drillers, servicers, testers and related workers"
  ],
  [
    "8241",
    "B",
    "伐木机械运营商",
    " Logging machinery operators"
  ],
  [
    "8252",
    "B",
    "农业服务承包商，农场主管和专门的牲畜工人",
    " Agricultural service contractors, farm supervisors and specialized livestock workers"
  ],
  [
    "8255",
    "B",
    "承包商和监督员，园林绿化，场地维护和园艺服务",
    " Contractors and supervisors, landscaping, grounds maintenance and horticulture services"
  ],
  [
    "8261",
    "B",
    "渔船的船长和高级船员",
    " Fishing masters and officers"
  ],
  [
    "8262",
    "B",
    "渔民/女性",
    " Fishermen/women"
  ],
  [
    "8411",
    "C",
    "地下矿山的服务和支持工人",
    " Underground mine service and support workers"
  ],
  [
    "8412",
    "C",
    "石油和天然气钻井及有关人员和服务运营商",
    " Oil and gas well drilling and related workers and services operators"
  ],
  [
    "8421",
    "C",
    "链锯，集材机运营商",
    " Chain saw and skidder operators"
  ],
  [
    "8422",
    "C",
    "林业和林业工人",
    " Silviculture and forestry workers"
  ],
  [
    "8431",
    "C",
    "一般农场工人",
    " General farm workers"
  ],
  [
    "8432",
    "C",
    "苗圃和温室工人",
    " Nursery and greenhouse workers"
  ],
  [
    "8441",
    "C",
    "渔船渔工",
    " Fishing vessel deckhands"
  ],
  [
    "8442",
    "C",
    "动物诱捕人员和猎人",
    " Trappers and hunters"
  ],
  [
    "8611",
    "D",
    "收割工人",
    " Harvesting labourers"
  ],
  [
    "8612",
    "D",
    "园林绿化和场地维护工人",
    " Landscaping and grounds maintenance labourers"
  ],
  [
    "8613",
    "D",
    "水产养殖和海洋收获工人",
    " Aquaculture and marine harvest labourers"
  ],
  [
    "8614",
    "D",
    "煤矿工人",
    " Mine labourers"
  ],
  [
    "8615",
    "D",
    "石油和天然气钻探，服务费和相关工人",
    " Oil and gas drilling, servicing and related labourers"
  ],
  [
    "8616",
    "D",
    "测井和林业工人",
    " Logging and forestry labourers"
  ],
  [
    "9211",
    "B",
    "主管，矿产和金属加工",
    " Supervisors, mineral and metal processing"
  ],
  [
    "9212",
    "B",
    "主管，石油，天然气和化工处理和公用事业",
    " Supervisors, petroleum, gas and chemical processing and utilities"
  ],
  [
    "9213",
    "B",
    "主管，食品，饮料及相关产品的加工",
    " Supervisors, food and beverage processing"
  ],
  [
    "9214",
    "B",
    "主管，塑料和橡胶制品制造业",
    " Supervisors, plastic and rubber products manufacturing"
  ],
  [
    "9215",
    "B",
    "主管，林产品加工",
    " Supervisors, forest products processing"
  ],
  [
    "9217",
    "B",
    "主管，纺织，面料，毛皮及皮革制品加工及制造",
    " Supervisors, textile, fabric, fur and leather products processing and manufacturing"
  ],
  [
    "9221",
    "B",
    "主管，机动车组装",
    " Supervisors, motor vehicle assembling"
  ],
  [
    "9222",
    "B",
    "主管，电子制造业",
    " Supervisors, electronics manufacturing"
  ],
  [
    "9223",
    "B",
    "主管，电气产品制造",
    " Supervisors, electrical products manufacturing"
  ],
  [
    "9224",
    "B",
    "主管，家具及固定装置制造业",
    " Supervisors, furniture and fixtures manufacturing"
  ],
  [
    "9226",
    "B",
    "主管，其他机械和金属制品制造​​业",
    " Supervisors, other mechanical and metal products manufacturing"
  ],
  [
    "9227",
    "B",
    "主管，其他产品的制造和装配",
    " Supervisors, other products manufacturing and assembly"
  ],
  [
    "9231",
    "B",
    "中央控制和过程操作员，矿产和金属加工",
    " Central control and process operators, mineral and metal processing"
  ],
  [
    "9232",
    "B",
    "石油，天然气和化工过程操作",
    " Central control and process operators, petroleum, gas and chemical processing"
  ],
  [
    "9235",
    "B",
    "制浆，造纸和涂料控制运营",
    " Pulping, papermaking and coating control operators"
  ],
  [
    "9241",
    "B",
    "电源工程师和电力系统运营商",
    " Power engineers and power systems operators"
  ],
  [
    "9243",
    "B",
    "水及废物处理厂运营",
    " Water and waste treatment plant operators"
  ],
  [
    "9411",
    "C",
    "机床操作员，矿产和金属加工",
    " Machine operators, mineral and metal processing"
  ],
  [
    "9412",
    "C",
    "铸造工人",
    " Foundry workers"
  ],
  [
    "9413",
    "C",
    "玻璃成型和精加工机器操作员及玻璃切割机",
    " Glass forming and finishing machine operators and glass cutters"
  ],
  [
    "9414",
    "C",
    "混凝土，粘土和石材形成运营商",
    " Concrete, clay and stone forming operators"
  ],
  [
    "9415",
    "C",
    "矿物和金属加工检查人员和测试人员",
    " Inspectors and testers, mineral and metal processing"
  ],
  [
    "9416",
    "C",
    "金属加工和锻造机运营商",
    " Metalworking and forging machine operators"
  ],
  [
    "9417",
    "C",
    "加工工具运营商",
    " Machining tool operators"
  ],
  [
    "9418",
    "C",
    "其他金属制品机器操作员",
    " Other metal products machine operators"
  ],
  [
    "9421",
    "C",
    "化学厂机器经营者",
    " Chemical plant machine operators"
  ],
  [
    "9422",
    "C",
    "塑料加工机器操作员",
    " Plastics processing machine operators"
  ],
  [
    "9423",
    "C",
    "橡胶加工机器操作员及有关人员",
    " Rubber processing machine operators and related workers"
  ],
  [
    "9431",
    "C",
    "锯木厂机器操作员",
    " Sawmill machine operators"
  ],
  [
    "9432",
    "C",
    "纸浆厂的机器操作员",
    " Pulp mill machine operators"
  ],
  [
    "9433",
    "C",
    "造纸及后整理机器操作员",
    " Papermaking and finishing machine operators"
  ],
  [
    "9434",
    "C",
    "木材加工机器操作员",
    " Other wood processing machine operators"
  ],
  [
    "9435",
    "C",
    "纸转换机器操作员",
    " Paper converting machine operators"
  ],
  [
    "9436",
    "C",
    "木材平地机等木材加工检查员和判卷",
    " Lumber graders and other wood processing inspectors and graders"
  ],
  [
    "9437",
    "C",
    "木工机器操作员",
    " Woodworking machine operators"
  ],
  [
    "9441",
    "C",
    "纺织纤维和纱线，皮和毛皮加工的机器操作员及工人",
    " Textile fibre and yarn, hide and pelt processing machine operators and workers"
  ],
  [
    "9442",
    "C",
    "织布工，编织工和其他纺织类职业",
    " Weavers, knitters and other fabric making occupations"
  ],
  [
    "9445",
    "C",
    "面料，毛皮及皮革切割工",
    " Fabric, fur and leather cutters"
  ],
  [
    "9446",
    "C",
    "工业缝纫机经营",
    " Industrial sewing machine operators"
  ],
  [
    "9447",
    "C",
    "督察及平地机，纺织，面料，毛皮及皮革制品制造",
    " Inspectors and graders, textile, fabric, fur and leather products manufacturing"
  ],
  [
    "9461",
    "C",
    "过程控制和机器操作员，食品，饮料及相关产品加工",
    " Process control and machine operators, food and beverage processing"
  ],
  [
    "9462",
    "C",
    "工业屠夫和切肉工，家禽肉类处理工及有关人员",
    " Industrial butchers and meat cutters, poultry preparers and related workers"
  ],
  [
    "9463",
    "C",
    "鱼和海鲜工厂工人",
    " Fish and seafood plant workers"
  ],
  [
    "9465",
    "C",
    "食品，饮料及相关产品加工的测试人员和评级人员",
    " Testers and graders, food and beverage processing"
  ],
  [
    "9471",
    "C",
    "无铅板印刷设备经营者",
    " Plateless printing equipment operators"
  ],
  [
    "9472",
    "C",
    "相机，印前制版和其他职业",
    " Camera, platemaking and other prepress occupations"
  ],
  [
    "9473",
    "C",
    "装订和后整理机器操作员",
    " Binding and finishing machine operators"
  ],
  [
    "9474",
    "C",
    "摄影和电影处理器",
    " Photographic and film processors"
  ],
  [
    "9521",
    "C",
    "飞机装配和飞机装配检查员",
    " Aircraft assemblers and aircraft assembly inspectors"
  ],
  [
    "9522",
    "C",
    "汽车装配检查员和测试人员",
    " Motor vehicle assemblers, inspectors and testers"
  ],
  [
    "9523",
    "C",
    "电子装配，制造，检验人员和测试人员",
    " Electronics assemblers, fabricators, inspectors and testers"
  ],
  [
    "9524",
    "C",
    "汇编和督察，电器，仪器和设备的制造",
    " Assemblers and inspectors, electrical appliance, apparatus and equipment manufacturing"
  ],
  [
    "9525",
    "C",
    "工业电动机和变压器的制造商和检测人员",
    " Assemblers, fabricators and inspectors, industrial electrical motors and transformers"
  ],
  [
    "9526",
    "C",
    "机械装配和检验员",
    " Mechanical assemblers and inspectors"
  ],
  [
    "9527",
    "C",
    "机床操作员和检查员，电气设备制造业",
    " Machine operators and inspectors, electrical apparatus manufacturing"
  ],
  [
    "9531",
    "C",
    "艇装配和督察",
    " Boat assemblers and inspectors"
  ],
  [
    "9532",
    "C",
    "家具和灯具装配和检查员",
    " Furniture and fixture assemblers and inspectors"
  ],
  [
    "9533",
    "C",
    "其他木制品的装配和检查员",
    " Other wood products assemblers and inspectors"
  ],
  [
    "9534",
    "C",
    "家具修整工及翻修工",
    " Furniture finishers and refinishers"
  ],
  [
    "9535",
    "C",
    "塑料产品装配，选手和检查员",
    " Plastic products assemblers, finishers and inspectors"
  ],
  [
    "9536",
    "C",
    "工业画家，镀膜机，金属整理过程中运营商",
    " Industrial painters, coaters and metal finishing process operators"
  ],
  [
    "9537",
    "C",
    "其他产品的装配，选手和检查员",
    " Other products assemblers, finishers and inspectors"
  ],
  [
    "9611",
    "D",
    "矿产和金属加工",
    " Labourers in mineral and metal processing"
  ],
  [
    "9612",
    "D",
    "劳动者在金属加工工人",
    " Labourers in metal fabrication"
  ],
  [
    "9613",
    "D",
    "化工产品处理与公用事业工人",
    " Labourers in chemical products processing and utilities"
  ],
  [
    "9614",
    "D",
    "劳动力在木材，纸浆和纸加工工人",
    " Labourers in wood, pulp and paper processing"
  ],
  [
    "9615",
    "D",
    "在橡胶和塑料制品制造业工人",
    " Labourers in rubber and plastic products manufacturing"
  ],
  [
    "9616",
    "D",
    "纺织加工工人",
    " Labourers in textile processing"
  ],
  [
    "9617",
    "D",
    "食品，饮料及相关产品的加工工人",
    " Labourers in food and beverage processing"
  ],
  [
    "9618",
    "D",
    "鱼类和海产品加工工人",
    " Labourers in fish and seafood processing"
  ],
  [
    "9619",
    "D",
    "其他加工，制造和公用事业工人",
    " Other labourers in processing, manufacturing and utilities"
  ]
];
