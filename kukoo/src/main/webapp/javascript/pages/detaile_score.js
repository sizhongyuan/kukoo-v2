//评分标准
var SCORE = {
  "ns": [
    [
      "教育",
      null,
      "Education ",
      null,
      "最高25分",
      "1"
    ],
    [
      "博士",
      null,
      null,
      null,
      "25分",
      null,
      null,
      "1"
    ],
    [
      "硕士",
      null,
      null,
      null,
      "23分",
      null,
      null,
      "1"
    ],
    [
      "双学历",
      null,
      null,
      null,
      "22分",
      null,
      null,
      "1"
    ],
    [
      "3年文凭",
      null,
      null,
      null,
      "21分",
      null,
      null,
      "1"
    ],
    [
      "2年文凭",
      null,
      null,
      null,
      "19分",
      null,
      null,
      "1"
    ],
    [
      "一年文凭",
      null,
      null,
      null,
      "15分",
      null,
      null,
      "1"
    ],
    [
      "高中",
      null,
      null,
      null,
      "5分",
      null,
      null,
      "1"
    ],
    [
      "语言",
      null,
      "Ability in English and/or French",
      null,
      "最高28分",
      "2"
    ],
    [
      " 第一语言, 单项",
      null,
      null,
      null,
      "最高24分",
      null,
      "21",
      ""
    ],
    [
      "CLB 7",
      null,
      null,
      null,
      "4分/项",
      null,
      null,
      "21"
    ],
    [
      "CLB 8",
      null,
      null,
      null,
      "5分/项",
      null,
      null,
      "21"
    ],
    [
      "CLB 9",
      null,
      null,
      null,
      "6分/项",
      null,
      null,
      "21"
    ],
    [
      " 第二语言, 单项",
      null,
      null,
      null,
      "最高4分",
      null,
      "22",
      ""
    ],
    [
      "CLB 5 及以上",
      null,
      null,
      null,
      "1分/项",
      null,
      null,
      "22"
    ],
    [
      "工作",
      null,
      "Work experience",
      null,
      "最高15分",
      "3"
    ],
    [
      "6年+",
      null,
      null,
      null,
      "15分",
      null,
      null,
      "3"
    ],
    [
      "4-5年",
      null,
      null,
      null,
      "13分",
      null,
      null,
      "3"
    ],
    [
      "2-3年",
      null,
      null,
      null,
      "11分",
      null,
      null,
      "3"
    ],
    [
      "1年",
      null,
      null,
      null,
      "9分",
      null,
      null,
      "3"
    ],
    [
      null,
      null,
      null,
      null,
      null,
      null,
      null,
      "3"
    ],
    [
      "年龄",
      null,
      "Age",
      null,
      "最高12分",
      "4"
    ],
    [
      "18-35岁",
      null,
      null,
      null,
      "12分",
      null,
      null,
      "4"
    ],
    [
      "36岁",
      null,
      null,
      null,
      "11分",
      null,
      null,
      "4"
    ],
    [
      "37岁",
      null,
      null,
      null,
      "10分",
      null,
      null,
      "4"
    ],
    [
      "38岁",
      null,
      null,
      null,
      "9分",
      null,
      null,
      "4"
    ],
    [
      "39岁",
      null,
      null,
      null,
      "8分",
      null,
      null,
      "4"
    ],
    [
      "40岁",
      null,
      null,
      null,
      "7分",
      null,
      null,
      "4"
    ],
    [
      "41岁",
      null,
      null,
      null,
      "6分",
      null,
      null,
      "4"
    ],
    [
      "42岁",
      null,
      null,
      null,
      "5分",
      null,
      null,
      "4"
    ],
    [
      "43岁",
      null,
      null,
      null,
      "4分",
      null,
      null,
      "4"
    ],
    [
      "44岁",
      null,
      null,
      null,
      "3分",
      null,
      null,
      "4"
    ],
    [
      "45岁",
      null,
      null,
      null,
      "2分",
      null,
      null,
      "4"
    ],
    [
      "46岁",
      null,
      null,
      null,
      "1分",
      null,
      null,
      "4"
    ],
    [
      null,
      null,
      null,
      null,
      null,
      null,
      null,
      "4"
    ],
    [
      "工作安排",
      null,
      "Arranged employment in Nova Scotia ",
      null,
      "最高10分",
      "5"
    ],
    [
      "持有工签在NS省工作或拥有LMIA",
      null,
      null,
      null,
      "10",
      null,
      null,
      "5"
    ],
    [
      "适应能力",
      null,
      "Adaptability ",
      null,
      "最高10分",
      "6"
    ],
    [
      "申请人有新省工作安排",
      null,
      null,
      null,
      "5",
      null,
      null,
      "6"
    ],
    [
      "主申最近5年有2年在新省读书（15小时/周）",
      null,
      null,
      null,
      "5",
      null,
      null,
      "6"
    ],
    [
      "配偶最近5年有2年在新省读书（15小时/周）",
      null,
      null,
      null,
      "5",
      null,
      null,
      "6"
    ],
    [
      "主申最近5年有1年在新省工作",
      null,
      null,
      null,
      "10",
      null,
      null,
      "6"
    ],
    [
      "配偶最近5年有1年在新省工作",
      null,
      null,
      null,
      "5",
      null,
      null,
      "6"
    ],
    [
      "主副申在新省有直系亲属",
      null,
      null,
      null,
      "5",
      null,
      null,
      "6"
    ],
    [
      "配偶语言成绩达到CLB4及以上",
      null,
      null,
      null,
      "5",
      null,
      null,
      "6"
    ]
  ],
  "nb": [
    [
      "语言",
      null,
      "LANGUAGE ",
      null,
      "最高28分",
      "1"
    ],
    [
      " 第一语言, 单项",
      null,
      null,
      null,
      "最高24分",
      null,
      "11"
    ],
    [
      "CLB 7",
      null,
      null,
      null,
      "4分/项",
      null,
      null,
      "11"
    ],
    [
      "CLB 8",
      null,
      null,
      null,
      "5分/项",
      null,
      null,
      "11"
    ],
    [
      "CLB 9",
      null,
      null,
      null,
      "6分/项",
      null,
      null,
      "11"
    ],
    [
      " 第二语言, 整体",
      null,
      null,
      null,
      "最高4分",
      null,
      "12"
    ],
    [
      "CLB 5 及以上",
      null,
      null,
      null,
      "4分",
      null,
      null,
      "12"
    ],
    [
      "教育",
      null,
      "EDUCATION ",
      null,
      "最高25分",
      "2"
    ],
    [
      "博士",
      null,
      null,
      null,
      "25分",
      null,
      null,
      "2"
    ],
    [
      "硕士",
      null,
      null,
      null,
      "23分",
      null,
      null,
      "2"
    ],
    [
      "双学历",
      null,
      null,
      null,
      "22分",
      null,
      null,
      "2"
    ],
    [
      "3年文凭",
      null,
      null,
      null,
      "21分",
      null,
      null,
      "2"
    ],
    [
      "2年文凭",
      null,
      null,
      null,
      "19分",
      null,
      null,
      "2"
    ],
    [
      "一年文凭",
      null,
      null,
      null,
      "15分",
      null,
      null,
      "2"
    ],
    [
      "高中",
      null,
      null,
      null,
      "5分",
      null,
      null,
      "2"
    ],
    [
      "工作",
      null,
      "EXPERIENCE",
      null,
      "最高15分",
      "3"
    ],
    [
      "6年+",
      null,
      null,
      null,
      "15分",
      null,
      null,
      "3"
    ],
    [
      "4-5年",
      null,
      null,
      null,
      "13分",
      null,
      null,
      "3"
    ],
    [
      "2-3年",
      null,
      null,
      null,
      "11分",
      null,
      null,
      "3"
    ],
    [
      "1年",
      null,
      null,
      null,
      "9分",
      null,
      null,
      "3"
    ],
    [],
    [
      "年龄",
      null,
      "AGE",
      null,
      "最高12分",
      "4"
    ],
    [
      "22岁以下",
      null,
      null,
      null,
      "0分",
      null,
      null,
      "4"
    ],
    [
      "22-35周岁",
      null,
      null,
      null,
      "12分",
      null,
      null,
      "4"
    ],
    [
      "36周岁",
      null,
      null,
      null,
      "11分",
      null,
      null,
      "4"
    ],
    [
      "37周岁",
      null,
      null,
      null,
      "10分",
      null,
      null,
      "4"
    ],
    [
      "38周岁",
      null,
      null,
      null,
      "9分",
      null,
      null,
      "4"
    ],
    [
      "39周岁",
      null,
      null,
      null,
      "8分",
      null,
      null,
      "4"
    ],
    [
      "40周岁",
      null,
      null,
      null,
      "7分",
      null,
      null,
      "4"
    ],
    [
      "41周岁",
      null,
      null,
      null,
      "6分",
      null,
      null,
      "4"
    ],
    [
      "42周岁",
      null,
      null,
      null,
      "5分",
      null,
      null,
      "4"
    ],
    [
      "43周岁",
      null,
      null,
      null,
      "4分",
      null,
      null,
      "4"
    ],
    [
      "44周岁",
      null,
      null,
      null,
      "3分",
      null,
      null,
      "4"
    ],
    [
      "45周岁",
      null,
      null,
      null,
      "2分",
      null,
      null,
      "4"
    ],
    [
      "46周岁",
      null,
      null,
      null,
      "1分",
      null,
      null,
      "4"
    ],
    [
      "47周岁及以上",
      null,
      null,
      null,
      "0分",
      null,
      null,
      "4"
    ],
    [],
    [
      "工作安排",
      null,
      "ARRANGED OFFER OF EMPLOYMENT",
      null,
      "最高10分",
      "5"
    ],
    [
      "在加拿大工作或有雇主工作安排*",
      null,
      null,
      null,
      "10",
      null,
      null,
      "5"
    ],
    [
      "适应能力",
      null,
      "ADAPTABILITY",
      null,
      "最高10分",
      "6"
    ],
    [
      "申请人有NB省工作安排",
      null,
      null,
      null,
      "5",
      null,
      null,
      "6"
    ],
    [
      "主申曾在NB省读书2年（15小时/周）",
      null,
      null,
      null,
      "5",
      null,
      null,
      "6"
    ],
    [
      "配偶曾在NB省读书2年（15小时/周）",
      null,
      null,
      null,
      "5",
      null,
      null,
      "6"
    ],
    [
      "主申曾在NB省工作至少1年，职业属于NOC 0、A、B类",
      null,
      null,
      null,
      "10",
      null,
      null,
      "6"
    ],
    [
      "配偶曾在NB省工作至少1年",
      null,
      null,
      null,
      "5",
      null,
      null,
      "6"
    ],
    [
      "主申或副申在NB省有直系亲属",
      null,
      null,
      null,
      "5",
      null,
      null,
      "6"
    ],
    [
      "配偶语言成绩达到CLB4及以上",
      null,
      null,
      null,
      "5",
      null,
      null,
      "6"
    ]
  ],
  "sa": [
    [
      "A  学历及培训",
      "EDUCATION AND TRAINING",
      "最高23分",
      "1"
    ],
    [
      "硕士、博士学历",
      null,
      "23",
      null,
      null,
      "1"
    ],
    [
      "三年以上本科学位",
      null,
      "20",
      null,
      null,
      "1"
    ],
    [
      "萨省认证技工证书",
      null,
      "20",
      null,
      null,
      "1"
    ],
    [
      "两年及以上高等学历学位、文凭或者证书",
      null,
      "15",
      null,
      null,
      "1"
    ],
    [
      "一年及以上高等学历学位、文凭或者证书",
      null,
      "12",
      null,
      null,
      "1"
    ],
    [
      "B  工作经验",
      "SKILLED WORK EXPERIENCE",
      "最高15分",
      "2"
    ],
    [
      "最近5年内的工作经验加分",
      null,
      null,
      null,
      "21"
    ],
    [
      "5年",
      null,
      "10",
      null,
      null,
      "21"
    ],
    [
      "4年",
      null,
      "8",
      null,
      null,
      "21"
    ],
    [
      "3年",
      null,
      "6",
      null,
      null,
      "21"
    ],
    [
      "2年",
      null,
      "4",
      null,
      null,
      "21"
    ],
    [
      "1年",
      null,
      "2",
      null,
      null,
      "21"
    ],
    [
      "6-10年（5年外）的工作经验加分",
      null,
      null,
      null,
      "22"
    ],
    [
      "5年",
      null,
      "5",
      null,
      null,
      "22"
    ],
    [
      "4年",
      null,
      "4",
      null,
      null,
      "22"
    ],
    [
      "3年",
      null,
      "3",
      null,
      null,
      "22"
    ],
    [
      "2年",
      null,
      "2",
      null,
      null,
      "22"
    ],
    [
      "1年",
      null,
      "0",
      null,
      null,
      "22"
    ],
    [
      "C  语言能力",
      "LANGUAGE ABILITY",
      "最高20分",
      "3"
    ],
    [
      "CLB 8及以上（雅思听力7.5，其它三个6.5）",
      null,
      "20",
      null,
      null,
      "3"
    ],
    [
      "CLB 7 （雅思四个6）",
      null,
      "18",
      null,
      null,
      "3"
    ],
    [
      "CLB 6 （雅思读5，其它三个5.5）",
      null,
      "16",
      null,
      null,
      "3"
    ],
    [
      "CLB 5 （雅思读4，其它三个5）",
      null,
      "14",
      null,
      null,
      "3"
    ],
    [
      "CLB 4 （雅思听4.5，读3.5，其它两个4）",
      null,
      "12",
      null,
      null,
      "3"
    ],
    [
      "D  年龄",
      "AGE",
      "最高12分",
      "4"
    ],
    [
      "18-21周岁",
      null,
      "8",
      null,
      null,
      "4"
    ],
    [
      "22-34周岁",
      null,
      "12",
      null,
      null,
      "4"
    ],
    [
      "35-45周岁",
      null,
      "10",
      null,
      null,
      "4"
    ],
    [
      "46-50周岁",
      null,
      "8",
      null,
      null,
      "4"
    ],
    [
      "<18周岁或>50周岁",
      null,
      "0",
      null,
      null,
      "4"
    ],
    [
      "E  其他",
      "OTHERS",
      "最高30分",
      "5"
    ],
    [
      "萨省居住一年的近亲属PR或者公民（父母，兄弟姐妹，舅舅叔叔姑姑阿姨，祖父母，表亲堂亲姊妹）",
      null,
      "20",
      null,
      null,
      "5"
    ],
    [
      "最近5年在萨省合法工作满12个月",
      null,
      "5",
      null,
      null,
      "5"
    ],
    [
      "在萨省读书至少一个学年",
      null,
      "5",
      null,
      null,
      "5"
    ]
  ],
  "kui": [
    [
      "1  教育",
      "FORMATION",
      "最高26分",
      "1"
    ],
    [
      "学历水平",
      "Niveau de scolarité",
      "最高14分",
      null,
      "11"
    ],
    [
      "博士",
      "Universitaire 3 ième cycle",
      "14",
      null,
      null,
      "11"
    ],
    [
      " 硕士",
      "Universitaire 2 ième cycle 1 an ou +",
      "12",
      null,
      null,
      "11"
    ],
    [
      "3年学制本科",
      "Universitaire 1 er cycle 3 ans ou+",
      "10",
      null,
      null,
      "11"
    ],
    [
      "2年学制本科",
      "Universitaire 1 er cycle 2 ans",
      "6",
      null,
      null,
      "11"
    ],
    [
      "1年学制本科",
      "Universitaire 1 er cycle 1 an",
      "4",
      null,
      null,
      "11"
    ],
    [
      "3年技术专科",
      "Postsecondaire technique 3 ans",
      "8",
      null,
      null,
      "11"
    ],
    [
      " 1-2年技术专科",
      "Postsecondaire technique 1 an ou 2 ans",
      "6",
      null,
      null,
      "11"
    ],
    [
      " 2年的普通专科",
      "Postsecondaire général 2 ans ",
      "4",
      null,
      null,
      "11"
    ],
    [
      "职业高中",
      "Secondaire professionnel",
      "6",
      null,
      null,
      "11"
    ],
    [
      "普通高中",
      "Secondaire général",
      "2",
      null,
      null,
      "11"
    ],
    [],
    [
      "受训领域",
      "Domaine de formation",
      "最高12分",
      null,
      "12"
    ],
    [
      "按照学历专业加分，参考受训清单列表",
      "Domaine de formation",
      "0，2，6，9 或 12",
      null,
      null,
      "12"
    ],
    [
      "2  工作经验",
      "EXPÉRIENCE",
      "最高8分",
      "2"
    ],
    [
      "不足6个月",
      "Moins de 6 mois",
      "0",
      null,
      null,
      "2"
    ],
    [
      "6-23个月",
      "6 mois à 23 mois",
      "4",
      null,
      null,
      "2"
    ],
    [
      "24-47个月",
      "24 mois à 47 mois",
      "6",
      null,
      null,
      "2"
    ],
    [
      "48个月及以上",
      "48 mois ou +",
      "8",
      null,
      null,
      "2"
    ],
    [],
    [
      "3  年龄",
      "ÂGE",
      "最高16分",
      "3"
    ],
    [
      "18-35岁",
      "18 ans à 35 ans",
      "16",
      null,
      null,
      "3"
    ],
    [
      "36周岁",
      "36 ans",
      "14",
      null,
      null,
      "3"
    ],
    [
      "37周岁",
      "37 ans",
      "12",
      null,
      null,
      "3"
    ],
    [
      "38周岁",
      "38 ans",
      "10",
      null,
      null,
      "3"
    ],
    [
      "39周岁",
      "39 ans",
      "8",
      null,
      null,
      "3"
    ],
    [
      "40周岁",
      "40 ans",
      "6",
      null,
      null,
      "3"
    ],
    [
      "41周岁",
      "41 ans",
      "4",
      null,
      null,
      "3"
    ],
    [
      "42周岁",
      "42 ans",
      "2",
      null,
      null,
      "3"
    ],
    [
      "43周岁及以上",
      "43 ans ou +",
      "0",
      null,
      null,
      "3"
    ],
    [
      "4  语言水平",
      "CONNAISSANCES LINGUISTIQUES",
      "最高22分",
      "4"
    ],
    [
      "法语水平",
      "Français",
      "最高16分",
      null,
      "41"
    ],
    [
      "I.  听力  Compréhension orale",
      null,
      null,
      null,
      null,
      "41"
    ],
    [
      "B2",
      null,
      "5",
      null,
      null,
      "41"
    ],
    [
      "C1",
      null,
      "6",
      null,
      null,
      "41"
    ],
    [
      "C2",
      null,
      "7",
      null,
      null,
      "41"
    ],
    [
      "II.  口语  Production orale",
      null,
      null,
      null,
      null,
      "41"
    ],
    [
      "B2",
      null,
      "5",
      null,
      null,
      "41"
    ],
    [
      "C1",
      null,
      "6",
      null,
      null,
      "41"
    ],
    [
      "C2",
      null,
      "7",
      null,
      null,
      "41"
    ],
    [
      "III.  阅读  Compréhension écrite",
      null,
      null,
      null,
      null,
      "41"
    ],
    [
      "B2 及以上",
      null,
      "1",
      null,
      null,
      "41"
    ],
    [
      "IV.  写作  Production écrite",
      null,
      null,
      null,
      null,
      "41"
    ],
    [
      "B2 及以上",
      null,
      "1",
      null,
      null,
      "41"
    ],
    [],
    [
      "英语水平",
      "Anglais",
      "最高6分",
      null,
      "42"
    ],
    [
      "I.  听力  Compréhension orale",
      null,
      null,
      null,
      null,
      "42"
    ],
    [
      "CLB5 以下",
      null,
      "0",
      null,
      null,
      "42"
    ],
    [
      "CLB5 至 CLB8",
      null,
      "1",
      null,
      null,
      "42"
    ],
    [
      "CLB9 至 CLB10",
      null,
      "2",
      null,
      null,
      "42"
    ],
    [
      "II.  口语  Production orale",
      null,
      null,
      null,
      null,
      "42"
    ],
    [
      "CLB5 以下",
      null,
      "0",
      null,
      null,
      "42"
    ],
    [
      "CLB5 至 CLB8",
      null,
      "1",
      null,
      null,
      "42"
    ],
    [
      "CLB9 至 CLB10",
      null,
      "2",
      null,
      null,
      "42"
    ],
    [
      "III.  阅读  Compréhension écrite",
      null,
      null,
      null,
      null,
      "42"
    ],
    [
      "CLB5 及以上",
      null,
      "1",
      null,
      null,
      "42"
    ],
    [
      "IV.  写作  Production écrite",
      null,
      null,
      null,
      null,
      "42"
    ],
    [
      "CLB5 及以上",
      null,
      "1",
      null,
      null,
      "42"
    ],
    [],
    [
      "5  魁北克停留及亲属",
      "SÉJOUR ET FAMILLE AU QUÉBEC",
      "最高8分",
      "5"
    ],
    [
      "魁北克停留",
      "Séjour au Québec",
      "最高5分",
      null,
      "51"
    ],
    [
      "魁省工作或者学习6个月以上",
      "Travailleur étranger ou étudiant étranger 6 mois ou +\r\n",
      "5",
      null,
      null,
      "51"
    ],
    [
      "魁省工作或者学习3-6个月",
      "Travailleu r étranger ou étudiant étranger 3 mois à moins de 6 mois\r\n",
      "5",
      null,
      null,
      "51"
    ],
    [
      "魁省打工度假停留3个月以上",
      "Participant à un PVT aux fins de travail 3 mois ou +\r\n",
      "5",
      null,
      null,
      "51"
    ],
    [
      "魁省其它停留3个月以上",
      "Autres séjours 3 mois ou + ",
      "2",
      null,
      null,
      "51"
    ],
    [
      "魁省其它停留2周-3个月",
      "Autres séjours 2 semaines à moins de 3 mois ",
      "1",
      null,
      null,
      "51"
    ],
    [
      "魁北克亲属",
      "Famille au Québec",
      "最高3分",
      null,
      "52"
    ],
    [
      "直系亲属：配偶，兄弟姐妹，父母，祖父母",
      "Cjt, pr, mr, fr, sr, fils, fille, gp, gm",
      "3",
      null,
      null,
      "52"
    ],
    [
      "6  配偶加分",
      "CARACTÉRISTIQUES DE L'ÉPOUX OU DU CONJOINT DE FAIT QUI ACCOMPAGNE",
      "最高17分",
      "6"
    ],
    [
      "配偶学历水平",
      "Niveau de scolarité",
      "最高4分",
      null,
      "61"
    ],
    [
      "博士",
      "Universitaire 3 ième cycle",
      "4",
      null,
      null,
      "61"
    ],
    [
      " 硕士",
      "Universitaire 2 ième cycle 1 an ou +",
      "4",
      null,
      null,
      "61"
    ],
    [
      "3年学制本科",
      "Universitaire 1 er cycle 3 ans ou+",
      "3",
      null,
      null,
      "61"
    ],
    [
      "2年学制本科",
      "Universitaire 1 er cycle 2 ans",
      "2",
      null,
      null,
      "61"
    ],
    [
      "1年学制本科",
      "Universitaire 1 er cycle 1 an",
      "1",
      null,
      null,
      "61"
    ],
    [
      "3年技术专科",
      "Postsecondaire technique 3 ans",
      "3",
      null,
      null,
      "61"
    ],
    [
      " 1-2年技术专科",
      "Postsecondaire technique 1 an ou 2 ans",
      "2",
      null,
      null,
      "61"
    ],
    [
      " 2年的普通专科",
      "Postsecondaire général 2 ans ",
      "1",
      null,
      null,
      "61"
    ],
    [
      "职业高中",
      "Secondaire professionnel",
      "2",
      null,
      null,
      "61"
    ],
    [
      "普通高中",
      "Secondaire général",
      "1",
      null,
      null,
      "61"
    ],
    [],
    [
      "配偶受训领域",
      "Domaine de formation",
      "最高4分",
      null,
      "62"
    ],
    [
      "按照学历专业加分，参考受训清单列表",
      "Domaine de formation",
      "0，1，2, 3或4",
      null,
      null,
      "62"
    ],
    [
      "配偶年龄",
      "ÂGE",
      "最高3分",
      null,
      "63"
    ],
    [
      "18-35岁",
      "18 ans à 35 ans",
      "3",
      null,
      null,
      "63"
    ],
    [
      "36周岁",
      "36 ans",
      "2",
      null,
      null,
      "63"
    ],
    [
      "37周岁",
      "37 ans",
      "2",
      null,
      null,
      "63"
    ],
    [
      "38周岁",
      "38 ans",
      "2",
      null,
      null,
      "63"
    ],
    [
      "39周岁",
      "39 ans",
      "2",
      null,
      null,
      "63"
    ],
    [
      "40周岁",
      "40 ans",
      "1",
      null,
      null,
      "63"
    ],
    [
      "41周岁",
      "41 ans",
      "1",
      null,
      null,
      "63"
    ],
    [
      "42周岁",
      "42 ans",
      "1",
      null,
      null,
      "63"
    ],
    [
      "43周岁及以上",
      "43 ans ou +",
      "0",
      null,
      null,
      "63"
    ],
    [
      "配偶法语水平",
      "Français",
      "最高6分",
      null,
      "64"
    ],
    [
      "I.  听力  Compréhension orale",
      null,
      null,
      null,
      null,
      "64"
    ],
    [
      "B2 以下",
      null,
      "0",
      null,
      null,
      "64"
    ],
    [
      "B2",
      null,
      "2",
      null,
      null,
      "64"
    ],
    [
      "C1 及以上",
      null,
      "3",
      null,
      null,
      "64"
    ],
    [
      "II.  口语  Production orale",
      null,
      null,
      null,
      null,
      "64"
    ],
    [
      "B2 以下",
      null,
      "0",
      null,
      null,
      "64"
    ],
    [
      "B2",
      null,
      "2",
      null,
      null,
      "64"
    ],
    [
      "C1 及以上",
      null,
      "3",
      null,
      null,
      "64"
    ],
    [
      "7  魁省有效工作offer",
      "OFFRE D’EMPLOI VALIDÉE",
      "最高10分",
      "7"
    ],
    [
      "蒙特利尔地区offer",
      "Offre d'emploi validée dans la RMM",
      "8",
      null,
      null,
      "7"
    ],
    [
      "蒙特利尔之外地区offer",
      "Offre d'emploi validée à l’extérieur de la RMM",
      "10",
      null,
      null,
      "7"
    ],
    [],
    [
      "8  附加分",
      "SEUIL ÉLIMINATOIRE D’EMPLOYABILITÉ ",
      "最高9分",
      "8"
    ],
    [
      "子女加分",
      "ENFANTS",
      "最高8分",
      null,
      "81"
    ],
    [
      "12岁以下子女（ 每个子女）",
      "12 ans ou -（Par enfant）",
      "4",
      null,
      null,
      "81"
    ],
    [
      "13-21岁子女（ 每个子女）",
      "13 ans à 21 ans（Par enfant）",
      "2",
      null,
      null,
      "81"
    ],
    [],
    [
      "财政自足能力",
      "CAPACITÉ D’AUTONOMIE FINANCIÈRE",
      "最高1分",
      null,
      "82"
    ],
    [
      "签署财政能力表格",
      " SIGNATURE DE L’ENGAGEMENT",
      "1",
      null,
      null,
      "82"
    ]
  ],
  "fsw": [//联邦六项评分标准
    [
      " 语言",
      null,
      "Language Skills",
      null,
      "最高28分",
      "1"
    ],
    [
      " 第一语言, 单项",
      null,
      null,
      null,
      "最高24分",
      null,
      "11"
    ],
    [
      "CLB 7",
      null,
      null,
      null,
      "4分/项",
      null,
      null,
      "11"
    ],
    [
      "CLB 8",
      null,
      null,
      null,
      "5分/项",
      null,
      null,
      "11"
    ],
    [
      "CLB 9及以上",
      null,
      null,
      null,
      "6分/项",
      null,
      null,
      "11"
    ],
    [
      " 第二语言, 单项",
      null,
      null,
      null,
      "最高4分",
      null,
      "12"
    ],
    [
      "CLB 5 及以上",
      null,
      null,
      null,
      "1分/项",
      null,
      null,
      "12"
    ],
    [
      "教育",
      null,
      "Education ",
      null,
      "最高25分",
      "2"
    ],
    [
      "博士",
      null,
      null,
      null,
      "25分",
      null,
      null,
      "2"
    ],
    [
      "硕士",
      null,
      null,
      null,
      "23分",
      null,
      null,
      "2"
    ],
    [
      "双学历",
      null,
      null,
      null,
      "22分",
      null,
      null,
      "2"
    ],
    [
      "3年文凭",
      null,
      null,
      null,
      "21分",
      null,
      null,
      "2"
    ],
    [
      "2年文凭",
      null,
      null,
      null,
      "19分",
      null,
      null,
      "2"
    ],
    [
      "一年文凭",
      null,
      null,
      null,
      "15分",
      null,
      null,
      "2"
    ],
    [
      "高中",
      null,
      null,
      null,
      "5分",
      null,
      null,
      "2"
    ],
    [
      "工作",
      null,
      "Experience ",
      null,
      "最高15分",
      "3"
    ],
    [
      "6年+",
      null,
      null,
      null,
      "15分",
      null,
      null,
      "3"
    ],
    [
      "4-5年",
      null,
      null,
      null,
      "13分",
      null,
      null,
      "3"
    ],
    [
      "2-3年",
      null,
      null,
      null,
      "11分",
      null,
      null,
      "3"
    ],
    [
      "1年",
      null,
      null,
      null,
      "9分",
      null,
      null,
      "3"
    ],
    [
      "年龄",
      null,
      "Age",
      null,
      "最高12分",
      "4"
    ],
    [
      "18-35岁",
      null,
      null,
      null,
      "12分",
      null,
      null,
      "4"
    ],
    [
      "36岁",
      null,
      null,
      null,
      "11分",
      null,
      null,
      "4"
    ],
    [
      "37岁",
      null,
      null,
      null,
      "10分",
      null,
      null,
      "4"
    ],
    [
      "38岁",
      null,
      null,
      null,
      "9分",
      null,
      null,
      "4"
    ],
    [
      "39岁",
      null,
      null,
      null,
      "8分",
      null,
      null,
      "4"
    ],
    [
      "40岁",
      null,
      null,
      null,
      "7分",
      null,
      null,
      "4"
    ],
    [
      "41岁",
      null,
      null,
      null,
      "6分",
      null,
      null,
      "4"
    ],
    [
      "42岁",
      null,
      null,
      null,
      "5分",
      null,
      null,
      "4"
    ],
    [
      "43岁",
      null,
      null,
      null,
      "4分",
      null,
      null,
      "4"
    ],
    [
      "44岁",
      null,
      null,
      null,
      "3分",
      null,
      null,
      "4"
    ],
    [
      "45岁",
      null,
      null,
      null,
      "2分",
      null,
      null,
      "4"
    ],
    [
      "46岁",
      null,
      null,
      null,
      "1分",
      null,
      null,
      "4"
    ],
    [
      "工作安排",
      null,
      "Arranged employment in Canada ",
      null,
      "最高10分",
      "5"
    ],
    [
      "有加拿大工作安排",
      null,
      null,
      null,
      "10",
      null,
      null,
      "5"
    ],
    [
      "适应能力",
      null,
      "Adaptability ",
      null,
      "最高10分",
      "6"
    ],
    [
      "配偶语言成绩达到CLB4及以上",
      null,
      null,
      null,
      "5",
      null,
      null,
      "6"
    ],
    [
      "申请人曾在加拿大全职学习至少2年（15小时/周）",
      null,
      null,
      null,
      "5",
      null,
      null,
      "6"
    ],
    [
      "配偶曾在加拿大全职学习至少2年（15小时/周）",
      null,
      null,
      null,
      "5",
      null,
      null,
      "6"
    ],
    [
      "申请人曾在加拿大全职工作至少1年",
      null,
      null,
      null,
      "10",
      null,
      null,
      "6"
    ],
    [
      "配偶曾在加拿大全职工作至少1年",
      null,
      null,
      null,
      "5",
      null,
      null,
      "6"
    ],
    [
      "申请人有加拿大工作安排",
      null,
      null,
      null,
      "5",
      null,
      null,
      "6"
    ],
    [
      "申请人或配偶在加拿大有亲属",
      null,
      null,
      null,
      "5",
      null,
      null,
      "6"
    ]
  ],
  "an": [//CRS
    [
      "A. 核心评分要素  Core / human capital factors",
      null,
      "有配偶最高 460分",
      "单身最高 500分",
      "1"
    ],
    [
      "年龄  Age ",
      null,
      "有配偶最高100分",
      "单身最高110分",
      null,
      "11"
    ],
    [
      "18周岁",
      null,
      " 90 ",
      " 99 ",
      null,
      null,
      "11"
    ],
    [
      "19周岁",
      null,
      " 95 ",
      " 105 ",
      null,
      null,
      "11"
    ],
    [
      "20 - 29周岁",
      null,
      " 100 ",
      " 110 ",
      null,
      null,
      "11"
    ],
    [
      "30周岁",
      null,
      " 95 ",
      " 105 ",
      null,
      null,
      "11"
    ],
    [
      "31周岁",
      null,
      " 90 ",
      " 99 ",
      null,
      null,
      "11"
    ],
    [
      "32周岁",
      null,
      " 85 ",
      " 94 ",
      null,
      null,
      "11"
    ],
    [
      "33周岁",
      null,
      " 80 ",
      " 88 ",
      null,
      null,
      "11"
    ],
    [
      "34周岁",
      null,
      " 75 ",
      " 83 ",
      null,
      null,
      "11"
    ],
    [
      "35周岁",
      null,
      " 70 ",
      " 77 ",
      null,
      null,
      "11"
    ],
    [
      "36周岁",
      null,
      " 65 ",
      " 72 ",
      null,
      null,
      "11"
    ],
    [
      "37周岁",
      null,
      " 60 ",
      " 66 ",
      null,
      null,
      "11"
    ],
    [
      "38周岁",
      null,
      " 55 ",
      " 61 ",
      null,
      null,
      "11"
    ],
    [
      "39周岁",
      null,
      " 50 ",
      " 55 ",
      null,
      null,
      "11"
    ],
    [
      "40周岁",
      null,
      " 45 ",
      " 50 ",
      null,
      null,
      "11"
    ],
    [
      "41周岁",
      null,
      " 35 ",
      " 39 ",
      null,
      null,
      "11"
    ],
    [
      "42周岁",
      null,
      " 25 ",
      " 28 ",
      null,
      null,
      "11"
    ],
    [
      "43周岁",
      null,
      " 15 ",
      " 17 ",
      null,
      null,
      "11"
    ],
    [
      "44周岁",
      null,
      " 5 ",
      " 6 ",
      null,
      null,
      "11"
    ],
    [
      "45周岁 or more",
      null,
      " -   ",
      " -   ",
      null,
      null,
      "11"
    ],
    [
      "教育  Level of education ",
      null,
      "有配偶最高140分",
      "单身最高150分",
      null,
      "12"
    ],
    [
      "高中",
      null,
      " 28 ",
      " 30 ",
      null,
      null,
      "12"
    ],
    [
      "一年高等教育",
      null,
      " 84 ",
      " 90 ",
      null,
      null,
      "12"
    ],
    [
      "二年高等教育",
      null,
      " 91 ",
      " 98 ",
      null,
      null,
      "12"
    ],
    [
      "三年及以上高等教育",
      null,
      " 112 ",
      " 120 ",
      null,
      null,
      "12"
    ],
    [
      "两个以上高等教育且其中一个为3年制及以上",
      null,
      " 119 ",
      " 128 ",
      null,
      null,
      "12"
    ],
    [
      "硕士",
      null,
      " 126 ",
      " 135 ",
      null,
      null,
      "12"
    ],
    [
      "博士",
      null,
      " 140 ",
      " 150 ",
      null,
      null,
      "12"
    ],
    [
      "第一语言   Official languages proficiency - 1st official language",
      null,
      "有配偶最高128分",
      "单身最高136分",
      null,
      "13"
    ],
    [
      "Less than CLB 4",
      null,
      " 0分/项 ",
      " 0分/项 ",
      null,
      null,
      "13"
    ],
    [
      "CLB 4 or 5",
      null,
      " 6分/项 ",
      " 6分/项 ",
      null,
      null,
      "13"
    ],
    [
      "CLB 6",
      null,
      " 8分/项 ",
      " 9分/项 ",
      null,
      null,
      "13"
    ],
    [
      "CLB 7",
      null,
      " 16分/项 ",
      " 17分/项 ",
      null,
      null,
      "13"
    ],
    [
      "CLB 8",
      null,
      " 22分/项 ",
      " 23分/项 ",
      null,
      null,
      "13"
    ],
    [
      "CLB 9",
      null,
      " 29分/项 ",
      " 31分/项 ",
      null,
      null,
      "13"
    ],
    [
      "CLB 10 or more",
      null,
      " 32分/项 ",
      " 34分/项 ",
      null,
      null,
      "13"
    ],
    [
      "第二语言   Official languages proficiency - 2nd official language",
      null,
      "有配偶最高22分",
      "单身最高24分",
      null,
      "14"
    ],
    [
      "CLB 5 or 6",
      null,
      " 1分/项 ",
      " 1分/项 ",
      null,
      null,
      "14"
    ],
    [
      "CLB 7 or 8",
      null,
      " 3分/项 ",
      " 3分/项 ",
      null,
      null,
      "14"
    ],
    [
      "CLB 9 or more",
      null,
      " 6分/项 ",
      " 6分/项 ",
      null,
      null,
      "14"
    ],
    [
      "加拿大工作经验  Canadian work experience ",
      null,
      "有配偶最高70分",
      "单身最高80分",
      null,
      "15"
    ],
    [
      "1 年",
      null,
      " 35 ",
      " 40 ",
      null,
      null,
      "15"
    ],
    [
      "2 年",
      null,
      " 46 ",
      " 53 ",
      null,
      null,
      "15"
    ],
    [
      "3 年",
      null,
      " 56 ",
      " 64 ",
      null,
      null,
      "15"
    ],
    [
      "4 年",
      null,
      " 63 ",
      " 72 ",
      null,
      null,
      "15"
    ],
    [
      "5 年及以上",
      null,
      " 70 ",
      " 80 ",
      null,
      null,
      "15"
    ],
    [
      "B. 配偶因素  Spouse or common-law partner factors",
      null,
      "有配偶最高  40分",
      null,
      "2"
    ],
    [
      "配偶教育   Spouse's or common-law partner’s level of education",
      null,
      "有配偶最高10分",
      null,
      null,
      "21"
    ],
    [
      "高中",
      null,
      " 2 ",
      null,
      null,
      null,
      "21"
    ],
    [
      "一年高等教育",
      null,
      " 6 ",
      null,
      null,
      null,
      "21"
    ],
    [
      "二年高等教育",
      null,
      " 7 ",
      null,
      null,
      null,
      "21"
    ],
    [
      "三年及以上高等教育",
      null,
      " 8 ",
      null,
      null,
      null,
      "21"
    ],
    [
      "两个以上高等教育且其中一个为3年制及以上",
      null,
      " 9 ",
      null,
      null,
      null,
      "21"
    ],
    [
      "硕士",
      null,
      " 10 ",
      null,
      null,
      null,
      "21"
    ],
    [
      "博士",
      null,
      " 10 ",
      null,
      null,
      null,
      "21"
    ],
    [
      "配偶语言   Spouse's or common-law partner's languages proficiency",
      null,
      "有配偶最高20分",
      null,
      null,
      "22"
    ],
    [
      "CLB 5 or 6",
      null,
      " 1分/项 ",
      null,
      null,
      null,
      "22"
    ],
    [
      "CLB 7 or 8",
      null,
      " 3分/项 ",
      null,
      null,
      null,
      "22"
    ],
    [
      "CLB 9 or more",
      null,
      " 5分/项 ",
      null,
      null,
      null,
      "22"
    ],
    [
      "配偶加拿大工作经验  Spouse's Canadian work experience",
      null,
      "有配偶最高10分",
      null,
      null,
      "23"
    ],
    [
      "1 年",
      null,
      " 5 ",
      null,
      null,
      null,
      "23"
    ],
    [
      "2 年",
      null,
      " 7 ",
      null,
      null,
      null,
      "23"
    ],
    [
      "3 年",
      null,
      " 8 ",
      null,
      null,
      null,
      "23"
    ],
    [
      "4 年",
      null,
      " 9 ",
      null,
      null,
      null,
      "23"
    ],
    [
      "5 年及以上",
      null,
      " 10 ",
      null,
      null,
      null,
      "23"
    ],
    [
      "C. 迁移能力因素   Skill transferability factors ",
      null,
      "有配偶最高 100分",
      "单身最高 100分",
      "3"
    ],
    [
      "教育水平   Education",
      null,
      "有配偶最高50分",
      "单身最高50分",
      null,
      "31"
    ],
    [
      "I.  教育加分基于语言   With good official language proficiency  and a post-secondary degree",
      null,
      null,
      null,
      null,
      null,
      "31"
    ],
    [
      "高中学历",
      null,
      " -   ",
      " -   ",
      null,
      null,
      "31"
    ],
    [
      "一年及以上高等教育，同时第一语言整体达到CLB7",
      null,
      " 13 ",
      " 13 ",
      null,
      null,
      "31"
    ],
    [
      "一年及以上高等教育，同时第一语言整体达到CLB9",
      null,
      " 25 ",
      " 25 ",
      null,
      null,
      "31"
    ],
    [
      "两个以上高等教育且其中一个为3年制及以上，同时第一语言整体达到CLB7",
      null,
      " 25 ",
      " 25 ",
      null,
      null,
      "31"
    ],
    [
      "两个以上高等教育且其中一个为3年制及以上，同时第一语言整体达到CLB9",
      null,
      " 50 ",
      " 50 ",
      null,
      null,
      "31"
    ],
    [
      "II.  教育加分基于加拿大工作经验   With Canadian work experience and a post-secondary degree",
      null,
      null,
      null,
      null,
      null,
      "31"
    ],
    [
      "高中学历",
      null,
      " -   ",
      " -   ",
      null,
      null,
      "31"
    ],
    [
      "一年及以上高等教育，同时第一语言整体达到CLB7",
      null,
      " 13 ",
      " 13 ",
      null,
      null,
      "31"
    ],
    [
      "一年及以上高等教育，同时第一语言整体达到CLB9",
      null,
      " 25 ",
      " 25 ",
      null,
      null,
      "31"
    ],
    [
      "两个以上高等教育且其中一个为3年制及以上，同时第一语言整体达到CLB7",
      null,
      " 25 ",
      " 25 ",
      null,
      null,
      "31"
    ],
    [
      "两个以上高等教育且其中一个为3年制及以上，同时第一语言整体达到CLB9",
      null,
      " 50 ",
      " 50 ",
      null,
      null,
      "31"
    ],
    [
      "工作经验（加拿大境外）  Foreign work experience",
      null,
      "有配偶最高50分",
      "单身最高50分",
      null,
      "32"
    ],
    [
      "I.  工作加分基于语言   With good official language proficiency  and a post-secondary degree",
      null,
      null,
      null,
      null,
      null,
      "32"
    ],
    [
      "无加拿大境外工作经验",
      null,
      " -   ",
      " -   ",
      null,
      null,
      "32"
    ],
    [
      "1-2年加拿大境外工作经验，同时第一语言整体达到CLB9",
      null,
      " 13 ",
      " 13 ",
      null,
      null,
      "32"
    ],
    [
      "1-2年加拿大境外工作经验，同时第一语言整体达到CLB9",
      null,
      " 25 ",
      " 25 ",
      null,
      null,
      "32"
    ],
    [
      "3年及以上加拿大境外工作经验，同时第一语言整体达到CLB7",
      null,
      " 25 ",
      " 25 ",
      null,
      null,
      "32"
    ],
    [
      "3年及以上加拿大境外工作经验，同时第一语言整体达到CLB9",
      null,
      " 50 ",
      " 50 ",
      null,
      null,
      "32"
    ],
    [
      "II.  工作加分基于加拿大工作经验   With Canadian work experience and a post-secondary degree",
      null,
      null,
      null,
      null,
      null,
      "32"
    ],
    [
      "无加拿大境外工作经验",
      null,
      " -   ",
      " -   ",
      null,
      null,
      "32"
    ],
    [
      "1-2年加拿大境外工作经验，同时至少1年加拿大工作经验",
      null,
      " 13 ",
      " 13 ",
      null,
      null,
      "32"
    ],
    [
      "1-2年加拿大境外工作经验，同时至少2年加拿大工作经验",
      null,
      " 25 ",
      " 25 ",
      null,
      null,
      "32"
    ],
    [
      "3年及以上加拿大境外工作经验，同时至少1年加拿大工作经验",
      null,
      " 25 ",
      " 25 ",
      null,
      null,
      "32"
    ],
    [
      "3年及以上加拿大境外工作经验，同时至少2年加拿大工作经验",
      null,
      " 50 ",
      " 50 ",
      null,
      null,
      "32"
    ],
    [
      "加拿大技工职业证书 Certificate of qualification",
      null,
      "有配偶最高50分",
      "单身最高50分",
      null,
      "33"
    ],
    [
      "持有加拿大技工 ，同时第一语言整体达到CLB5，低于CLB7",
      null,
      " 25 ",
      " 25 ",
      null,
      null,
      "33"
    ],
    [
      "持有加拿大技工 ，同时第一语言整体不低于CLB7",
      null,
      " 50 ",
      " 50 ",
      null,
      null,
      "33"
    ],
    [],
    [
      "D. 其他加分 Additional points",
      null,
      "有配偶最高 600分",
      "单身最高 600分",
      "4"
    ],
    [
      "加拿大公民或永居的兄弟姐妹",
      null,
      "15",
      "15",
      null,
      null,
      "4"
    ],
    [
      "法语NCLC7级，同时英语CLB4级及以下",
      null,
      "15",
      "15",
      null,
      null,
      "4"
    ],
    [
      "法语NCLC7级，同时英语CLB5级及以上",
      null,
      "30",
      "30",
      null,
      null,
      "4"
    ],
    [
      "1-2年加拿大高等学历",
      null,
      "15",
      "15",
      null,
      null,
      "4"
    ],
    [
      "3 年及以上加拿大高等教育",
      null,
      "30",
      "30",
      null,
      null,
      "4"
    ],
    [
      "NOC 00 开头高管职业雇佣安排（获得 LMIA 或已经在加拿大工作一年以上）",
      null,
      "200",
      "200",
      null,
      null,
      "4"
    ],
    [
      " 其他 NOC 0，A，B 职业雇佣安排 （获得 LMIA 或已经在加拿大工作一年以上）",
      null,
      "50",
      "50",
      null,
      null,
      "4"
    ],
    [
      "EE 下省提名",
      null,
      "600",
      "600",
      null,
      null,
      "4"
    ]
  ],
  "_189": [],
  "_190": [],
  "au": [
    [
      "A 学历",
      null,
      "最高20分",
      "1"
    ],
    [
      "博士学历",
      null,
      "20",
      null,
      null,
      "1"
    ],
    [
      "本硕学历",
      null,
      "15",
      null,
      null,
      "1"
    ],
    [
      "专科技校",
      null,
      "10",
      null,
      null,
      "1"
    ],
    [
      "职业评估机构认可的其他学历",
      null,
      "10",
      null,
      null,
      "1"
    ],
    [],
    [
      "B 工作经验",
      null,
      "最高35分",
      "2"
    ],
    [
      "澳洲境外工作经验",
      null,
      "最高15分",
      null,
      "21"
    ],
    [
      "8-10年",
      null,
      "15",
      null,
      null,
      "21"
    ],
    [
      "5-7年",
      null,
      "10",
      null,
      null,
      "21"
    ],
    [
      "3-4年",
      null,
      "5",
      null,
      null,
      "21"
    ],
    [
      "低于三年",
      null,
      "0",
      null,
      null,
      "21"
    ],
    [],
    [
      "澳洲境内工作经验",
      null,
      "最高20分",
      null,
      "22"
    ],
    [
      "8-10年",
      null,
      "20",
      null,
      null,
      "22"
    ],
    [
      "5-7年",
      null,
      "15",
      null,
      null,
      "22"
    ],
    [
      "3-4年",
      null,
      "10",
      null,
      null,
      "22"
    ],
    [
      "1-2年",
      null,
      "5",
      null,
      null,
      "22"
    ],
    [
      "低于一年",
      null,
      "0",
      null,
      null,
      "22"
    ],
    [
      "C 语言能力",
      null,
      "最高20分",
      "3"
    ],
    [
      "Superior English（雅思四个8，或者同等水平的托福，PTE，CAE，OET）",
      null,
      "20",
      null,
      null,
      "3"
    ],
    [
      "Proficient English （雅思四个7，或者同等水平的托福，PTE，CAE，OET）",
      null,
      "10",
      null,
      null,
      "3"
    ],
    [
      "Competent English （雅思四个6，或者同等水平的托福，PTE，CAE，OET）",
      null,
      "0",
      null,
      null,
      "3"
    ],
    [
      "D 年龄",
      null,
      "最高30分",
      "4"
    ],
    [
      "18-24",
      null,
      "25",
      null,
      null,
      "4"
    ],
    [
      "25-32",
      null,
      "30",
      null,
      null,
      "4"
    ],
    [
      "33-39",
      null,
      "25",
      null,
      null,
      "4"
    ],
    [
      "40-44",
      null,
      "15",
      null,
      null,
      "4"
    ],
    [],
    [
      "E Australian study requirement",
      null,
      "最高5分",
      "5"
    ],
    [
      "申请人持有澳洲教育机构认可的毕业证、学位证或行业资格证（两年学历）",
      null,
      "5",
      null,
      null,
      "5"
    ],
    [
      "F 澳洲硕博学历",
      null,
      "最高5分",
      "6"
    ],
    [
      "申请人持有澳洲教育机构认可的两年及以上硕博学历",
      null,
      "5",
      null,
      null,
      "6"
    ],
    [
      "G 其他",
      null,
      "最高5分",
      "7"
    ],
    [
      "被认可的社区语言，通过NAATI考试Paraprofessional级别的考试",
      null,
      "5",
      null,
      null,
      "7"
    ],
    [
      "符合澳大利亚学习要求的澳大利亚偏远地区学习或人口增长缓慢的大都市地区学习",
      null,
      "5",
      null,
      null,
      "7"
    ],
    [
      "配偶技能资格",
      null,
      "5",
      null,
      null,
      "7"
    ],
    [
      "澳洲专业年（境内职业学习一年，如职业培训）",
      null,
      "5",
      null,
      null,
      "7"
    ],
    [],
    [
      "H 担保",
      null,
      "最高10分",
      "8"
    ],
    [
      "州或领地政府担保（适用190）",
      null,
      "5",
      null,
      null,
      "8"
    ],
    [
      "符合条件的亲属担保并且需工作和生活在澳大利亚指定地区（适用于州领或亲属担保的489偏远地区移民）",
      null,
      "10",
      null,
      null,
      "8"
    ],
    [
      "州或领地政府担保并且需工作和生活在偏远地区或人口增长低缓的大都市区域",
      null,
      "10",
      null,
      null,
      "8"
    ]
  ]
};
