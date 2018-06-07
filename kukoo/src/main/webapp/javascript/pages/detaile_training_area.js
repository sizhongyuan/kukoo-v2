//受训练领域
var TRAINING = [
  // [
  //   "魁北克受训列表",
  //   "2017年3月8日更新"
  // ],
  [
    "中文专业名称",
    "英文专业名称",
    "主申加分",
    "配偶加分"
  ],
  [
    "心理学（博士）",
    "Psychology (Doctorate)",
    "9",
    "3"
  ],
  [
    "遗传学（硕士学位）",
    "Genetics (Master's degree)",
    "12",
    "4"
  ],
  [
    "水文与水科学（硕士学位）",
    "Hydrology and Water Sciences (Master's degree)",
    "9",
    "3"
  ],
  [
    "图书馆科学与记录管理（硕士学位）",
    "Library Science and Records Management (Master's degree)",
    "9",
    "3"
  ],
  [
    "动物学（硕士学位）",
    "Zoology (Master's degree)",
    "9",
    "3"
  ],
  [
    "畜牧学（硕士学位）",
    "Zootechnics (Master's degree)",
    "9",
    "3"
  ],
  [
    "应用数学（硕士学位）",
    "Applied Mathematics (Master's degree)",
    "6",
    "2"
  ],
  [
    "基础和应用健康科学（硕士学位）",
    "Basic and Applied Health Sciences (Master's degree)",
    "6",
    "2"
  ],
  [
    "大学水平教师培训（硕士学位）",
    "College Level Teacher Training (Master's degree)",
    "6",
    "2"
  ],
  [
    "比较文学（硕士学位）",
    "Compared Literature (Master's degree)",
    "6",
    "2"
  ],
  [
    "人口学（硕士学位）",
    "Demography (Master's degree)",
    "6",
    "2"
  ],
  [
    "Didactics（教学艺术）（硕士学位）",
    "Didactics (The Art of Teaching) (Master's degree)",
    "6",
    "2"
  ],
  [
    "能源（硕士学位）",
    "Energy (Master's degree)",
    "6",
    "2"
  ],
  [
    "民族学和民族志（硕士学位）",
    "Ethnology and Ethnography (Master's degree)",
    "6",
    "2"
  ],
  [
    "健康服务管理（硕士学位）",
    "Health Services Management (Master's degree)",
    "6",
    "2"
  ],
  [
    "海洋学（硕士学位）",
    "Oceanography (Master's degree)",
    "6",
    "2"
  ],
  [
    "心理教育（硕士学位）",
    "Psychoeducation (Master's degree)",
    "6",
    "2"
  ],
  [
    "心理学（硕士学位）",
    "Psychology (Master's degree)",
    "6",
    "2"
  ],
  [
    "农业和农业经济学（硕士学位）",
    "Rural and Agricultural Economics (Master's degree)",
    "6",
    "2"
  ],
  [
    "大学教育学（硕士学位）",
    "University Pedagogy (Master's degree)",
    "6",
    "2"
  ],
  [
    "计算机工程（学士）",
    "Computer Engineering (Bach.)",
    "12",
    "4"
  ],
  [
    "计算机科学（学士）",
    "Computer Science (Bach.)",
    "12",
    "4"
  ],
  [
    "会计与会计科学（学士）",
    "Accounting and Accounting Science (Bach.)",
    "9",
    "3"
  ],
  [
    "航空航天，航天和航天工程（学士）",
    "Aerospace, Aeronautical and Astronautical Engineering (Bach.)",
    "9",
    "3"
  ],
  [
    "银行和金融业务（学士）",
    "Banking and Financial Operations (Bach.)",
    "9",
    "3"
  ],
  [
    "生物和生物医学工程（学士）",
    "Biological and Biomedical Engineering (Bach.)",
    "9",
    "3"
  ],
  [
    "生物物理学（学士）",
    "Biophysics (Bach.)",
    "9",
    "3"
  ],
  [
    "土木，建筑和交通工程（学士）",
    "Civil, Construction and Transportation Engineering (Bach.)",
    "9",
    "3"
  ],
  [
    "地球科学（学士）",
    "Earth Sciences (Bach.)",
    "9",
    "3"
  ],
  [
    "电气，电子和通信工程（学士）",
    "Electrical, Electronic and Communications Engineering (Bach.)",
    "9",
    "3"
  ],
  [
    "食品工程（学士）",
    "Food Engineering (Bach.)",
    "9",
    "3"
  ],
  [
    "食品科学与技术（学士）",
    "Food Sciences and Technology (Bach.)",
    "9",
    "3"
  ],
  [
    "地质学或矿物学（学士）",
    "Geology or Mineralogy (Bach.)",
    "9",
    "3"
  ],
  [
    "工业和管理工程（学士）",
    "Industrial and Administrative Engineering (Bach.)",
    "9",
    "3"
  ],
  [
    "工业设计（学士）",
    "Industrial Design (Bach.)",
    "9",
    "3"
  ],
  [
    "工业关系（学士）",
    "Industrial Relations (Bach.)",
    "9",
    "3"
  ],
  [
    "信息管理（学士）",
    "Information Management (Bach.)",
    "9",
    "3"
  ],
  [
    "营销和采购（学士）",
    "Marketing and Purchasing (Bach.)",
    "9",
    "3"
  ],
  [
    "机械工程（学士）",
    "Mechanical Engineering (Bach.)",
    "9",
    "3"
  ],
  [
    "核工程（学士）",
    "Nuclear Engineering (Bach.)",
    "9",
    "3"
  ],
  [
    "护理（学士）",
    "Nursing (Bach.)",
    "9",
    "3"
  ],
  [
    "操作研究（学士）",
    "Operational Research (Bach.)",
    "9",
    "3"
  ],
  [
    "物理工程（学士）",
    "Physical Engineering (Bach.)",
    "9",
    "3"
  ],
  [
    "植物学（学士）",
    "Phytotechnics (Bach.)",
    "9",
    "3"
  ],
  [
    "翻译（学士）",
    "Translation (Bach.)",
    "9",
    "3"
  ],
  [
    "动物学（学士）",
    "Zoology (Bach.)",
    "9",
    "3"
  ],
  [
    "动物饲养学（学士）",
    "Zootechnics (Bach.)",
    "9",
    "3"
  ],
  [
    "精算学（学士）",
    "Actuarial Science (Bach.)",
    "6",
    "2"
  ],
  [
    "农业和农村工程（学士）",
    "Agricultural and Rural Engineering (Bach.)",
    "6",
    "2"
  ],
  [
    "农林工程（学士）",
    "Agri-forest Engineering (Bach.)",
    "6",
    "2"
  ],
  [
    "应用数学（学士）",
    "Applied Mathematics (Bach.)",
    "6",
    "2"
  ],
  [
    "艺术史（学士）",
    "Art History (Bach.)",
    "6",
    "2"
  ],
  [
    "基础和应用健康科学（学士）",
    "Basic and Applied Health Sciences (Bach.)",
    "6",
    "2"
  ],
  [
    "生物科学（学士）",
    "Biological Sciences (Bach.)",
    "6",
    "2"
  ],
  [
    "工商管理（学士）",
    "Business Administration (Bach.)",
    "6",
    "2"
  ],
  [
    "商业管理与管理（学士）",
    "Business Management and Administration (Bach.)",
    "6",
    "2"
  ],
  [
    "化学工程（学士）",
    "Chemical Engineering (Bach.)",
    "6",
    "2"
  ],
  [
    "通讯与新闻（学士）",
    "Communications and Journalism (Bach.)",
    "6",
    "2"
  ],
  [
    "犯罪学（学士）",
    "Criminology (Bach.)",
    "6",
    "2"
  ],
  [
    "教学（教学艺术）（学士）",
    "Didactics (The Art of Teaching) (Bach.)",
    "6",
    "2"
  ],
  [
    "营养与营养（学士）",
    "Dietetics and Nutrition (Bach.)",
    "6",
    "2"
  ],
  [
    "经济学（学士）",
    "Economics (Bach.)",
    "6",
    "2"
  ],
  [
    "工程（学士）",
    "Engineering (Bach.)",
    "6",
    "2"
  ],
  [
    "环境（环境质量和污染）（学士）",
    "Environment (Environmental Quality and Pollution) (Bach.)",
    "6",
    "2"
  ],
  [
    "环境设计（学士）",
    "Environmental Design (Bach.)",
    "6",
    "2"
  ],
  [
    "民族学和民族志（学士）",
    "Ethnology and Ethnography (Bach.)",
    "6",
    "2"
  ],
  [
    "运动科学（学士）",
    "Exercise Sciences (Bach.)",
    "6",
    "2"
  ],
  [
    "法语，一般和母语（学士）",
    "French, General and Mother Tongue (Bach.)",
    "6",
    "2"
  ],
  [
    "大地测量（学士）",
    "Geodesy (Surveying) (Bach.)",
    "6",
    "2"
  ],
  [
    "地理（学士）",
    "Geography (Bach.)",
    "6",
    "2"
  ],
  [
    "地缘政治学（学士）",
    "Geopolitical Sciences (Bach.)",
    "6",
    "2"
  ],
  [
    "拉脱维亚人文与古典考古学（学士）",
    "Greco-Latin Humanities and Classical Archeology (Bach.)",
    "6",
    "2"
  ],
  [
    "指导咨询和教育与职业信息",
    "Guidance Counselling and Educational and Vocational Information (Bach.)",
    "6",
    "2"
  ],
  [
    "历史（学士）",
    "History (Bach.)",
    "6",
    "2"
  ],
  [
    "家政经济学（学士）",
    "Home Economics (Bach.)",
    "6",
    "2"
  ],
  [
    "人力资源管理（学士）",
    "Human Resources Management (Bach.)",
    "6",
    "2"
  ],
  [
    "国际商务（学士）",
    "International Business (Bach.)",
    "6",
    "2"
  ],
  [
    "景观建筑（学士）",
    "Landscaping Architecture (Bach.)",
    "6",
    "2"
  ],
  [
    "图书馆科学与记录管理（学士）",
    "Library Science and Records Management (Bach.)",
    "6",
    "2"
  ],
  [
    "语言学（语音学，语义学，语言学）（学士）",
    "Linguistics (Phonetics, Semantics, Philology) (Bach.)",
    "6",
    "2"
  ],
  [
    "数学（学士）",
    "Mathematics (Bach.)",
    "6",
    "2"
  ],
  [
    "冶金和材料工程（学士）",
    "Metallurgical and Materials Engineering (Bach.)",
    "6",
    "2"
  ],
  [
    "微生物学（学士）",
    "Microbiology (Bach.)",
    "6",
    "2"
  ],
  [
    "矿业工程（学士）",
    "Mining Engineering (Bach.)",
    "6",
    "2"
  ],
  [
    "自然资源（学士）",
    "Natural Resources (Bach.)",
    "6",
    "2"
  ],
  [
    "哲学（学士）",
    "Philosophy (Bach.)",
    "6",
    "2"
  ],
  [
    "物理科学（学士）",
    "Physical Science (Bach.)",
    "6",
    "2"
  ],
  [
    "学前教师培训（学士）",
    "Preschool Teacher Training (Bach.)",
    "6",
    "2"
  ],
  [
    "概率和统计（学士）",
    "Probability and Statistics (Bach.)",
    "6",
    "2"
  ],
  [
    "心理教育（学士）",
    "Psychoeducation (Bach.)",
    "6",
    "2"
  ],
  [
    "心理学（学士）",
    "Psychology (Bach.)",
    "6",
    "2"
  ],
  [
    "公共管理（学士）",
    "Public Administration (Bach.)",
    "6",
    "2"
  ],
  [
    "纸浆和造纸工程（学士）",
    "Pulp and Paper Engineering (Bach.)",
    "6",
    "2"
  ],
  [
    "娱乐（学士）",
    "Recreology (Bach.)",
    "6",
    "2"
  ],
  [
    "宗教研究（学士）",
    "Religious Studies (Bach.)",
    "6",
    "2"
  ],
  [
    "农业和农业经济学（学士）",
    "Rural and Agricultural Economics (Bach.)",
    "6",
    "2"
  ],
  [
    "性学（学士）",
    "Sexology (Bach.)",
    "6",
    "2"
  ],
  [
    "社会科学与人文学科（学士）",
    "Social Sciences and Humanities (Bach.)",
    "6",
    "2"
  ],
  [
    "社会工作（学士）",
    "Social Work (Bach.)",
    "6",
    "2"
  ],
  [
    "专科小学和中学教师培训（学士）",
    "Specialist Primary and Secondary School Teacher Training (Bach.)",
    "6",
    "2"
  ],
  [
    "幼儿和小学教学（学士）",
    "Teaching at the Preschool and Elementary Levels (Bach.)",
    "6",
    "2"
  ],
  [
    "中学教学（学士）",
    "Teaching at the Secondary Level (Bach.)",
    "6",
    "2"
  ],
  [
    "职业教育（中学）和技术（学院）教育（学士）",
    "Teaching in Vocational (Secondary) and Technical (College) Education (Bach.)",
    "6",
    "2"
  ],
  [
    "特殊教育教师培训（补习教育）（学士）",
    "Training of Special Education Teachers (Remedial Education) (Bach.)",
    "6",
    "2"
  ],
  [
    "核医学技术（DCS）",
    "Nuclear Medicine Technology (DCS)",
    "12",
    "4"
  ],
  [
    "药品生产技术（DCS）",
    "Pharmaceutical Production Technology (DCS)",
    "12",
    "4"
  ],
  [
    "辐射肿瘤技术（DCS）",
    "Radiation Oncology Technology (DCS)",
    "12",
    "4"
  ],
  [
    "视觉矫正技术（DCS）",
    "Visual Orthosis Techniques (DCS)",
    "12",
    "4"
  ],
  [
    "飞机结构技术（DCS）",
    "Aircraft Construction Techniques (DCS)",
    "9",
    "3"
  ],
  [
    "飞机维修技术（DCS）",
    "Aircraft Maintenance Techniques (DCS)",
    "9",
    "3"
  ],
  [
    "建筑技术（DCS）",
    "Architectural Technology (DCS)",
    "9",
    "3"
  ],
  [
    "建筑系统技术（DCS）",
    "Building Systems Technology (DCS)",
    "9",
    "3"
  ],
  [
    "化学工程技术（DCS）",
    "Chemical Engineering Techniques (DCS)",
    "9",
    "3"
  ],
  [
    "计算机科学技术（DCS）",
    "Computer Science Techniques (DCS)",
    "9",
    "3"
  ],
  [
    "诊断放射科技（DCS）",
    "Diagnostic Radiology Technology (DCS)",
    "9",
    "3"
  ],
  [
    "文档技术（DCS）",
    "Documentation Techniques (DCS)",
    "9",
    "3"
  ],
  [
    "食品加工和质量技术（DCS）",
    "Food Processing and Quality Technology (DCS)",
    "9",
    "3"
  ],
  [
    "助听器（DCS）",
    "Hearing Aids (DCS)",
    "9",
    "3"
  ],
  [
    "机械工程技术（DCS）",
    "Mechanical Engineering Techniques (DCS)",
    "9",
    "3"
  ],
  [
    "多媒体集成技术（DCS）",
    "Multimedia Integration Techniques (DCS)",
    "9",
    "3"
  ],
  [
    "海军建筑技术（DCS）",
    "Naval Architecture Technology (DCS)",
    "9",
    "3"
  ],
  [
    "护理（DCS）",
    "Nursing (DCS)",
    "9",
    "3"
  ],
  [
    "塑料转换技术（DCS）",
    "Plastics Transformation Techniques (DCS)",
    "9",
    "3"
  ],
  [
    "会计和管理技术（DCS）",
    "Accounting and Management Techniques (DCS)",
    "6",
    "2"
  ],
  [
    "机械工程技术（DCS）",
    "Agromechanical Engineering Technology (DCS)",
    "6",
    "2"
  ],
  [
    "飞机驾驶技术（DCS）",
    "Aircraft piloting techniques (DCS)",
    "6",
    "2"
  ],
  [
    "动物生产技术（DCS）",
    "Animal Production Technology (DCS)",
    "6",
    "2"
  ],
  [
    "建筑评估和评估技术（DCS）",
    "Building Appraisal and Assessment Technology (DCS)",
    "6",
    "2"
  ],
  [
    "业务管理（DCS）",
    "Business Management (DCS)",
    "6",
    "2"
  ],
  [
    "化学工艺技术（DCS）",
    "Chemical Process Techniques (DCS)",
    "6",
    "2"
  ],
  [
    "马戏艺术（DCS）",
    "Circus Arts (DCS)",
    "6",
    "2"
  ],
  [
    "土木工程技术（DCS）",
    "Civil Engineering Technology (DCS)",
    "6",
    "2"
  ],
  [
    "社区娱乐领导力培训技术（DCS）",
    "Community Recreation Leadership Training Techniques (DCS)",
    "6",
    "2"
  ],
  [
    "复合材料加工技术（DCS）",
    "Composite Material Processing Techniques (DCS)",
    "6",
    "2"
  ],
  [
    "牙科卫生技术（DCS）",
    "Dental Hygiene Techniques (DCS)",
    "6",
    "2"
  ],
  [
    "饮食技术（DCS）",
    "Dietetic Techniques (DCS)",
    "6",
    "2"
  ],
  [
    "幼儿教育技术（DCS）",
    "Early Childhood Education Techniques (DCS)",
    "6",
    "2"
  ],
  [
    "环境职业健康和安全（DCS）",
    "Environmental Occupational Health and Safety (DCS)",
    "6",
    "2"
  ],
  [
    "环境技术（DCS）",
    "Environmental Techniques (DCS)",
    "6",
    "2"
  ],
  [
    "马技术（DCS）",
    "Equine Techniques (DCS)",
    "6",
    "2"
  ],
  [
    "农场管理和运营（DCS）",
    "Farm Management and Operations (DCS)",
    "6",
    "2"
  ],
  [
    "时尚营销（DCS）",
    "Fashion Marketing (DCS)",
    "6",
    "2"
  ],
  [
    "家具和橱柜制造技术（DCS）",
    "Furniture and Cabinetmaking Techniques (DCS)",
    "6",
    "2"
  ],
  [
    "地理技术（DCS）",
    "Geomatics Technology (DCS)",
    "6",
    "2"
  ],
  [
    "园艺生产和环境技术（DCS）",
    "Horticultural Production and Environmental Technology (DCS)",
    "6",
    "2"
  ],
  [
    "酒店管理技术（DCS）",
    "Hotel Management Techniques (DCS)",
    "6",
    "2"
  ],
  [
    "狩猎和捕鱼资源开发技术（DCS）",
    "Hunting and Fishing Resources Development Techniques (DCS)",
    "6",
    "2"
  ],
  [
    "工业设计技术（DCS）",
    "Industrial Design Techniques (DCS)",
    "6",
    "2"
  ],
  [
    "工业工程技术（DCS）",
    "Industrial Engineering Technology (DCS)",
    "6",
    "2"
  ],
  [
    "工业维护技术（DCS）",
    "Industrial Maintenance Technology (DCS)",
    "6",
    "2"
  ],
  [
    "保险和财务咨询服务（DCS）",
    "Insurance and Financial Advisory Services (DCS)",
    "6",
    "2"
  ],
  [
    "实验室技术（DCS）",
    "Laboratory Techniques (DCS)",
    "6",
    "2"
  ],
  [
    "法律技术（DCS）",
    "Legal Techniques (DCS)",
    "6",
    "2"
  ],
  [
    "海洋机械工程技术（DCS）",
    "Marine Mechanical Engineering Techniques (DCS)",
    "6",
    "2"
  ],
  [
    "冶金工程技术（DCS）",
    "Metallurgical Engineering Technology (DCS)",
    "6",
    "2"
  ],
  [
    "矿物技术（DCS）",
    "Mineral Technology (DCS)",
    "6",
    "2"
  ],
  [
    "博物馆技术（DCS）",
    "Museology Techniques (DCS)",
    "6",
    "2"
  ],
  [
    "办公系统技术（DCS）",
    "Office System Techniques (DCS)",
    "6",
    "2"
  ],
  [
    "矫形和矫形假体技术（DCS）",
    "Orthotic and Orthopedic Prosthesis Techniques (DCS)",
    "6",
    "2"
  ],
  [
    "物理康复技术（DCS）",
    "Physical Rehabilitation Techniques (DCS)",
    "6",
    "2"
  ],
  [
    "医院前急症护理（DCS）",
    "Pre-Hospital Emergency Care (DCS)",
    "6",
    "2"
  ],
  [
    "印刷工程管理（DCS）",
    "Printing Works Management (DCS)",
    "6",
    "2"
  ],
  [
    "餐厅管理（DCS）",
    "Restaurant Management (DCS)",
    "6",
    "2"
  ],
  [
    "海鲜加工（DCS）",
    "Seafood Processing (DCS)",
    "6",
    "2"
  ],
  [
    "社会研究技术（DCS）",
    "Social Research Techniques (DCS)",
    "6",
    "2"
  ],
  [
    "社会工作技术（DCS）",
    "Social Work Techniques (DCS)",
    "6",
    "2"
  ],
  [
    "特殊护理咨询技术（DCS）",
    "Special Care Counselling Techniques (DCS)",
    "6",
    "2"
  ],
  [
    "旅游技术（DCS）",
    "Tourism Techniques (DCS)",
    "6",
    "2"
  ],
  [
    "运输物流技术（DCS）",
    "Transportation Logistics Techniques (DCS)",
    "6",
    "2"
  ],
  [
    "城市规划技术（DCS）",
    "Urban Planning Techniques (DCS)",
    "6",
    "2"
  ],
  [
    "水净化（DCS）",
    "Water Purification (DCS)",
    "6",
    "2"
  ],
  [
    "青少年和成人惩教干预技术（DCS）",
    "Youth and Adult Correctional Intervention Techniques (DCS)",
    "6",
    "2"
  ],
  [
    "农业力学（DVS）",
    "Agricultural Mechanics (DVS)",
    "9",
    "3"
  ],
  [
    "工程机械（DVS）",
    "Construction Machine Mechanics (DVS)",
    "9",
    "3"
  ],
  [
    "健康，援助和护理（DVS）",
    "Health, Assistance, and Nursing (DVS)",
    "9",
    "3"
  ],
  [
    "加工技术（DVS）",
    "Machining Techniques (DVS)",
    "9",
    "3"
  ],
  [
    "动物生产技术（DVS）",
    "Animal Production Technology (DVS)",
    "6",
    "2"
  ],
  [
    "汽车力学（DVS）",
    "Automobile Mechanics (DVS)",
    "6",
    "2"
  ],
  [
    "汽车车身修理和重涂（DVS）",
    "Automotive Body Repair and Repainting (DVS)",
    "6",
    "2"
  ],
  [
    "商业设备技术服务（DVS）",
    "Business Equipment Technical Service (DVS)",
    "6",
    "2"
  ],
  [
    "电缆和电路组件（DVS）",
    "Cable and Circuit Assembly (DVS)",
    "6",
    "2"
  ],
  [
    "计算机图形（DVS）",
    "Computer Graphics (DVS)",
    "6",
    "2"
  ],
  [
    "混凝土制备和整理（DVS）",
    "Concrete Preparation and Finishing (DVS)",
    "6",
    "2"
  ],
  [
    "施工机械操作（DVS）",
    "Construction Machine Operation (DVS)",
    "6",
    "2"
  ],
  [
    "装饰软垫（DVS）",
    "Decorative Upholstering (DVS)",
    "6",
    "2"
  ],
  [
    "电子音频/视频设备维修（DVS）",
    "Electronic Audio/Video Equipment Repair (DVS)",
    "6",
    "2"
  ],
  [
    "电梯机械（DVS）",
    "Elevator Mechanics (DVS)",
    "6",
    "2"
  ],
  [
    "田间作物（DVS）",
    "Field Crops (DVS)",
    "6",
    "2"
  ],
  [
    "消防力学（DVS）",
    "Fire Protection Mechanics (DVS)",
    "6",
    "2"
  ],
  [
    "航班调度（DVS）",
    "Flight Dispatch (DVS)",
    "6",
    "2"
  ],
  [
    "食品和饮料服务（DVS）",
    "Food and Beverage Services (DVS)",
    "6",
    "2"
  ],
  [
    "玻璃器皿切割和处理（DVS）",
    "Glassware Cutting and Treatment (DVS)",
    "6",
    "2"
  ],
  [
    "五金店销售（DVS）",
    "Hardware Store Sales (DVS)",
    "6",
    "2"
  ],
  [
    "重型道路设备力学（DVS）",
    "Heavy Road Equipment Mechanics (DVS)",
    "6",
    "2"
  ],
  [
    "家庭护理（DVS）",
    "Home Care (DVS)",
    "6",
    "2"
  ],
  [
    "工业制图（DVS）",
    "Industrial Drafting (DVS)",
    "6",
    "2"
  ],
  [
    "工业内饰（DVS）",
    "Industrial Upholstering (DVS)",
    "6",
    "2"
  ],
  [
    "安全系统（DVS）的安装和维护",
    "Installation and Maintenance of Security Systems (DVS)",
    "6",
    "2"
  ],
  [
    "安装输电线路（DVS）",
    "Installation of Electrical Transmission Lines (DVS)",
    "6",
    "2"
  ],
  [
    "室内装饰和显示（DVS）",
    "Interior Decorating and Display (DVS)",
    "6",
    "2"
  ],
  [
    "枫糖浆生产（DVS）",
    "Maple Syrup Production (DVS)",
    "6",
    "2"
  ],
  [
    "砖石：砌砖（DVS）",
    "Masonry: Bricklaying (DVS)",
    "6",
    "2"
  ],
  [
    "客户咨询（DVS）",
    "Motorized Equipment Customer Consultation (DVS)",
    "6",
    "2"
  ],
  [
    "成型（DVS）",
    "Moulding (DVS)",
    "6",
    "2"
  ],
  [
    "成型机设置和操作（DVS）",
    "Moulding Machine Set-up and Operation (DVS)",
    "6",
    "2"
  ],
  [
    "北方重型设备操作（DVS）",
    "Northern Heavy Equipment Operations (DVS)",
    "6",
    "2"
  ],
  [
    "水暖和供暖（DVS）",
    "Plumbing and Heating (DVS)",
    "6",
    "2"
  ],
  [
    "专业烹饪（DVS）",
    "Professional Cooking (DVS)",
    "6",
    "2"
  ],
  [
    "专业销售（DVS）",
    "Professional Sales (DVS)",
    "6",
    "2"
  ],
  [
    "住宅和商业起草（DVS）",
    "Residential and Commercial Drafting (DVS)",
    "6",
    "2"
  ],
  [
    "零售屠宰（DVS）",
    "Retail Butchery (DVS)",
    "6",
    "2"
  ],
  [
    "秘书研究 (DVS)",
    "Secretarial Studies (DVS)",
    "6",
    "2"
  ],
  [
    "固定机械力学（DVS）",
    "Stationary Machine Mechanics (DVS)",
    "6",
    "2"
  ],
  [
    "测量和地形（DVS）",
    "Surveying and Topography (DVS)",
    "6",
    "2"
  ],
  [
    "水处理（DVS）",
    "Water Treatment (DVS)",
    "6",
    "2"
  ],
  [
    "模具制造（AVS）",
    "Mould Making (AVS)",
    "6",
    "2"
  ],
  [
    "制造（AVS）",
    "Diemaking (AVS)",
    "6",
    "2"
  ],
  [
    "工具制作（AVS）",
    "Toolmaking (AVS)",
    "6",
    "2"
  ],
  [
    "药品生产技术（ACS）",
    "Pharmaceutical Production Technology (ACS)",
    "9",
    "3"
  ],
  [
    "会计和管理技术（ACS）",
    "Accounting and Management Techniques (ACS)",
    "6",
    "2"
  ],
  [
    "飞机结构技术（ACS）",
    "Aircraft Construction Techniques (ACS)",
    "6",
    "2"
  ],
  [
    "建筑技术（ACS）",
    "Architectural Technology (ACS)",
    "6",
    "2"
  ],
  [
    "建筑系统技术（ACS）",
    "Building Systems Technology (ACS)",
    "6",
    "2"
  ],
  [
    "化学工艺技术（ACS）",
    "Chemical Process Techniques (ACS)",
    "6",
    "2"
  ],
  [
    "马戏艺术（ACS）",
    "Circus Arts (ACS)",
    "6",
    "2"
  ],
  [
    "复合材料加工技术（ACS）",
    "Composite Material Processing Techniques (ACS)",
    "6",
    "2"
  ],
  [
    "计算机科学技术（ACS）",
    "Computer Science Techniques (ACS)",
    "6",
    "2"
  ],
  [
    "诊断放射技术（ACS）",
    "Diagnostic Radiology Technology (ACS)",
    "6",
    "2"
  ],
  [
    "文档技术（ACS）",
    "Documentation Techniques (ACS)",
    "6",
    "2"
  ],
  [
    "幼儿教育技术（ACS）",
    "Early Childhood Education Techniques (ACS)",
    "6",
    "2"
  ],
  [
    "环境职业健康安全（ACS）",
    "Environmental Occupational Health and Safety (ACS)",
    "6",
    "2"
  ],
  [
    "食品加工和质量技术（ACS）",
    "Food Processing and Quality Technology (ACS)",
    "6",
    "2"
  ],
  [
    "工业设计技术（ACS）",
    "Industrial Design Techniques (ACS)",
    "6",
    "2"
  ],
  [
    "工业工程技术（ACS）",
    "Industrial Engineering Technology (ACS)",
    "6",
    "2"
  ],
  [
    "工业维护技术（ACS）",
    "Industrial Maintenance Technology (ACS)",
    "6",
    "2"
  ],
  [
    "实验室技术（ACS）",
    "Laboratory Techniques (ACS)",
    "6",
    "2"
  ],
  [
    "法律技术（ACS）",
    "Legal Techniques (ACS)",
    "6",
    "2"
  ],
  [
    "机械工程技术（ACS）",
    "Mechanical Engineering Techniques (ACS)",
    "6",
    "2"
  ],
  [
    "冶金工程技术（ACS）",
    "Metallurgical Engineering Technology (ACS)",
    "6",
    "2"
  ],
  [
    "矿物加工（ACS）",
    "Mineral Processing (ACS)",
    "6",
    "2"
  ],
  [
    "多媒体集成技术（ACS）",
    "Multimedia Integration Techniques (ACS)",
    "6",
    "2"
  ],
  [
    "护理（ACS）",
    "Nursing (ACS)",
    "6",
    "2"
  ],
  [
    "办公系统技术（ACS）",
    "Office System Techniques (ACS)",
    "6",
    "2"
  ],
  [
    "塑料转换技术（ACS）",
    "Plastics Transformation Techniques (ACS)",
    "6",
    "2"
  ],
  [
    "医院前急救护理（ACS）",
    "Pre-Hospital Emergency Care (ACS)",
    "6",
    "2"
  ],
  [
    "社会工作技术（ACS）",
    "Social Work Techniques (ACS)",
    "6",
    "2"
  ],
  [
    "特殊护理咨询技术（ACS）",
    "Special Care Counselling Techniques (ACS)",
    "6",
    "2"
  ],
  [
    "水净化（ACS）",
    "Water Purification (ACS)",
    "6",
    "2"
  ],
  [
    "飞机维修技术 (ACS)",
    "Aircraft Maintenance Techniques (ACS)",
    "6",
    "2"
  ],
  [
    "社区娱乐领导力培训技术 (ACS)",
    "Community Recreation Leadership Training Techniques (ACS)",
    "6",
    "2"
  ],
  [
    "物理康复技术 (ACS)",
    "Physical Rehabilitation Techniques (ACS)",
    "6",
    "2"
  ],
  [
    "运输物流技术 (ACS)",
    "Transportation Logistics Techniques (ACS)",
    "6",
    "2"
  ]
];
