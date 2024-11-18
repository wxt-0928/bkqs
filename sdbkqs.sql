/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306_1
 Source Server Type    : MySQL
 Source Server Version : 80040 (8.0.40)
 Source Host           : localhost:3306
 Source Schema         : sdbkqs

 Target Server Type    : MySQL
 Target Server Version : 80040 (8.0.40)
 File Encoding         : 65001

 Date: 18/11/2024 07:59:40
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '密码',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '姓名',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '头像',
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '角色标识',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '电话',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '管理员' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'admin', 'admin', '管理员', 'http://localhost:9090/files/1697438073596-avatar.png', 'ADMIN', '13677889922', 'admin@xm.com');

-- ----------------------------
-- Table structure for blog
-- ----------------------------
DROP TABLE IF EXISTS `blog`;
CREATE TABLE `blog`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '标题',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '内容',
  `descr` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '简介',
  `cover` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '封面',
  `tags` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '标签',
  `user_id` int NULL DEFAULT NULL COMMENT '发布人ID',
  `date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '发布日期',
  `read_count` int NULL DEFAULT 0 COMMENT '浏览量',
  `category_id` int NULL DEFAULT NULL COMMENT '分类ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '博客信息' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of blog
-- ----------------------------
INSERT INTO `blog` VALUES (1, '关于做好2024年本科生国家奖助学金评审工作的通知', '<p><span><span>各院（部）：</span></span></p><p><span><span><span><span>根据河南省教育厅关于国家奖助学金评审发放工作</span></span><span><span>通知</span></span><span><span>，结合我校实际情况，现就认真做好</span></span></span></span><span>202</span><span><span>4</span></span><span><span>年本科生国家奖助学金评审有关工作通知如下：</span></span></p><p><span><span><span><strong><span>一</span></strong></span></span><span><strong><span>、资助项目和范围</span></strong></span></span></p><p><span><span>1. </span></span><span><span><span><span>国家奖学金</span></span><span><span>：</span></span><span><span>每生每年</span></span></span></span><span><span>8000</span><span><span>元</span></span><span><span>。</span></span><span><span>我校二年级及以上特别优秀的全日制本科在校生。</span></span></span></p><p><span><span>2. </span></span><span><span><span><span>国家励志奖学金</span></span><span><span>：</span></span><span><span>每生每年</span></span></span></span><span><span>5000</span><span><span>元</span></span><span><span>。</span></span><span><span>具有我校学籍且品学兼优、通过当年家庭经济困难认定的，二年级及以上全日制本科在校生。</span></span></span></p><p><span><span>3. </span></span><span><span><span><span>国家助学金</span></span><span><span>：</span></span><span><span>分三个档次</span></span><span><span>，</span></span><span><span>一等国家助学金</span></span></span></span><span><span>4000</span><span><span>元，二等国家助学金</span></span></span><span><span>3300</span><span><span>元，三等国家助学金</span></span></span><span><span>2600</span><span><span>元。具有我校学籍且通过当年家庭经济困难认定的全日制本科（含预科、不含退役士兵学生）在校生。</span></span></span></p><p><span><span>同一学年内，学生不可同时获得国家奖学金和国家励志奖学金，但可同时获得国家奖学金和国家助学金或国家励志奖</span></span><span><span>学金和国家助学金。</span></span></p><p><span><span><span><strong><span>二、</span></strong></span></span><span><strong><span>名额分配情况</span></strong></span></span><span><strong><span>（</span></strong></span><span><strong><span>见附件</span></strong></span><strong><span>1</span></strong><span><strong><span>）</span></strong></span></p><p><span><span><span><strong><span>三、</span></strong></span></span><span><strong><span>评审程序</span></strong></span></span><span><strong><span>（</span></strong></span><span><strong><span>见附件</span></strong></span><span><strong><span>2</span></strong></span><span><strong><span>）</span></strong></span></p><p><span><strong><span>四、日程安排</span></strong></span></p><p><span><span>1. </span></span><span><span>9</span><span><span>月</span></span></span><span><span>10</span></span><span><span>日—</span></span><span>1</span><span><span>8</span></span><span><span><span><span>日，各院（部</span></span><span><span>）</span></span><span><span>认真组织宣讲国家奖助学金评审文件精神和本通知要求，做到每位学生均知悉国家奖助学金资助政策。</span></span></span></span></p><p><span><span>2. </span></span><span><span>9</span><span><span>月</span></span></span><span>1</span><span><span>8</span></span><span><span>日—</span></span><span><span>9</span><span><span>月</span></span></span><span>2</span><span><span>2</span></span><span><span><span><span>日，符合奖助学金评选条件的学生自愿提出申请，</span></span><span><span>各院（部）</span></span><span><span>经各层次工作小组评议确定最终拟获奖助名单，并于</span></span></span></span><span><span>9</span><span><span>月</span></span></span><span>2</span><span><span>3</span></span><span>—2</span><span><span>7</span></span><span><span><span><span>日将奖助结果在显要位置进行公示。</span></span><span><strong><span>公示时间不得少于五个工作日。</span></strong></span></span></span></p><p><span><span>3. </span></span><span><span>9</span><span><span>月</span></span></span><span>2</span><span><span>7</span></span><span><span>日</span></span><span>1</span><span><span><span>8</span></span><span><span>：</span></span></span><span><span>00</span><span><span>前，通过评审的学生通过扫描河南师范大学资助在线二维码（见附件</span></span></span><span><span>3</span></span><span><span><span><span>）进入河南省高校学生资助业务系统，</span></span><span><strong><span>先完善个人</span></strong></span></span><span><strong><span>基本</span></strong></span></span><span><strong><span>信息，再进行</span></strong></span><span><strong><span>相关项目的</span></strong></span><span><strong><span>申请</span></strong></span><span><span>。</span></span></p><p><span><span>4. </span></span><span><span>9</span><span><span>月</span></span></span><span><span>28</span></span><span><span>日组织各院（部）资助工作专员在致远楼</span></span><span><span>424</span><span><span>进行奖助学金填报系统的相关培训。（具体时间另行在资助群通知）</span></span></span></p><p><span><span>5. </span></span><span><span>9</span><span><span>月</span></span></span><span><span>29</span></span><span><span>—10</span><span><span>月</span></span></span><span><span>7</span></span><span><span><span><span>日，</span></span><span><span>各院（部）数据自审</span></span><span><span>、</span></span><span><span>调整阶段。</span></span></span></span></p><p><span><span>6. </span></span><span><span>10</span><span><span>月</span></span></span><span><span>8</span><span><span>日，学校学生资助中心对国家奖助学金获得者进行复审并提出拟获得国家奖助学金名单，报学校国家奖助学金领导小组审批，并于</span></span></span><span><span>10</span><span><span>月</span></span></span><span><span>9</span><span><span>日—</span></span></span><span>1</span><span><span>4</span></span><span><span>日进行校内公示。</span></span></p>', NULL, 'http://localhost:9090/files/1731285263373-u=3512882654,2980194618&fm=253&fmt=auto&app=120&f=JPEG.webp', '[\"我爱师大\",\"新生求助\",\"每日一问\"]', 4, '2024-11-11', 15, 2);
INSERT INTO `blog` VALUES (2, '关于2024年国家助学金评审通知', '<p>&nbsp; &nbsp; &nbsp; &nbsp;国家助学金由中央与地方政府共同出资设立，用于资助高校家庭经济困难的本科生在校的生活费用开支。我校本科生获得国家助学金的比例约为在校学生总数的30%，资助标准为平均每人每年3300元。同一学年内，申请并获得国家助学金的学生，可同时申请并获得国家奖学金或国家励志奖学金；家庭经济困难筹集不齐学费和住宿费的学生，可同时申请国家助学贷款。原建档立卡家庭学生执行上级最新政策规定。</p><p><!--[if-->1.&nbsp;<!--[endif]-->申请条件：</p><p><!--[if-->（1）<!--[endif]-->我校全日制（四年）本科生。</p><p><!--[if-->（2）<!--[endif]-->热爱祖国，拥护中国共产党的领导，思想进步，品德优良；</p><p><!--[if-->（3）<!--[endif]-->自觉遵守国家的法律法规，遵守大学生守则和学校规章制度，助人为乐、生活俭朴，无任何违法违纪现象和其他劣迹行为；</p><p><!--[if-->（4）<!--[endif]-->自强不息，奋发向上，刻苦学习；</p><p><!--[if-->（5）<!--[endif]-->家庭经济特别困难的学生，难以支付最基本的学习生活费用。</p><p><!--[if-->（6）<!--[endif]-->原则上，已获得助学金/新长城助学金的同学不再参加申报。</p><p><!--[if-->2.&nbsp;<!--[endif]-->申报材料：</p><p><!--[if-->（1）<!--[endif]-->受资助学生需提交《河南师范大学助学金申请书》，内容包括家庭情况、学习情况及思想状况，其中家庭情况需详细介绍。用河南师范大学稿纸手写（红色方格），封面右下方包括学院、学号、姓名、联系方式，并加盖学院行政公章。</p><p><!--[if-->（2）<!--[endif]-->.如实填写《河南师范大学助学金审批表》，用A4纸打印，一式三份，其中“编号”不填。</p><p><!--[if-->（3）<!--[endif]-->申请学生需提交乡镇或者街道出具的家庭贫困证明及《河南师范大学家庭经济困难学生认定申请表》，申请表用A4纸打印，并加盖学院行政公章。</p><p><!--[if-->（4）<!--[endif]-->温馨提醒：助学金评选对于学生成绩有要求，要求成绩良好，在校四年资助期内不能有挂科情况。</p><p><!--[if-->3.&nbsp;<!--[endif]-->材料送到各学院办公室。</p><p><!--[if-->4.&nbsp;<!--[endif]-->助学金须知：</p><p><!--[if-->（1）<!--[endif]-->只有通过贫困认定的学生才能申请助学金。原则上，被认定为家庭经济特别困难的学生可申请一等国家助学金，给予最高等次资助，被认定为家庭经济比较困难的学生可申请二等国家助学金，被认定为家庭经济一般困难的学生可申请三等国家助学金。</p><p><!--[if-->（2）<!--[endif]-->申请助学金的同学要从家庭经济状况、在校综合表现等方面写出申请理由，字数不少于300字，要求手写，并填写河南师范大学国家助学金申请表&nbsp;</p><p><!--[if-->5.&nbsp;<!--[endif]-->具体金额：</p><p><img src=\"http://localhost:9090/files/1731490848787-image.png\" style=\"max-width:100%;\" contenteditable=\"false\"/></p><p>补充：</p><p>其他助学金：社会团体助学金：</p><p>新长城助学基金：“中国体育彩票·新长城助学基金”由河南省体育彩票管理中心指助，旨在帮助优秀困难学生减轻家庭负担，顺利完成学业，同时帮助学生树立坚强刚毅、自信达观的人生态度。资助新生120名，资助金额为每人每年2500元，连续资助2年。</p><p>应善良助学金：由“应善良福利基金会”创办人沈炳麟先生设立，用来帮助家境贫寒，难以求学的学生完成学业，资助新生30名，资助金额为每人每年3500元，连续资助4年。</p>', '什么是国家助学金？相关信息？', 'http://localhost:9090/files/1731490952401-add0cdc3b84746c0a84cd07642a77fdb.jpeg.crdownload', '[\"新生求助\",\"每日一问\"]', 5, '2024-11-13', 33, 2);
INSERT INTO `blog` VALUES (3, '关于2024年国家奖学金评审通知', '<p>&nbsp; &nbsp; &nbsp; &nbsp;国家奖学金是由中央政府出资设立的奖学金，资助对象为品学兼优的在校二年级以上全日制本科学生。获奖比例约为3%，资助标准为每人每年8000元。颁发国家统一印制的奖励证书。同一学年内，获得国家奖学金的家庭经济困难学生可以同时申请并获得国家助学金，但不能同时获得国家励志奖学金。</p><p>1. 国家奖学金申请条件：要求上一学年学习成绩排名与综合考评成绩排名均位于本年级本专业前10%，（学习成绩排名或综合考评成绩在前10%至前30%之间者，必须在道德风尚、学术研究、学科竞赛、创新发明、社会实践、社会工作、体育竞赛、文艺比赛等某一方面表现特别优秀，也可申请国家奖学金，但需提交证明材料)。</p><p>（1）在社会主义精神文明建设中表现突出，具有见义勇为、助人为乐、奉献爱心、服务社会、自立自强的实际行动，在本校、本地区产生重大影响，在全国产生较大影响，有助于树立良好的社会风尚。</p><p>（2）在学术研究上取得显著成绩，以第一作者发表的论文被SCI、EI、ISTP、SSCI全文收录，以第一、二作者出版学术专著（须通过专家鉴定）。</p><p>（3）在学科竞赛方面取得显著成绩，在国际和全国性专业学科竞赛、课外学术科技竞赛等竞赛中获一等奖（或金奖）及以上奖励。</p><p>（4）在创新发明方面取得显著成绩，科研成果获省、部级以上奖励或获得国家专利(须通过专家鉴定)。</p><p>（5）在体育竞赛中取得显著成绩，为国家争得荣誉。非体育专业学生参加省级以上体育比赛获得个人项目前三名，集体项目前二名；高水平运动员（特招生）参加国际和全国性体育比赛获得个人项目前三名、集体项目前二名。集体项目应为主力队员。</p><p>（6）在重要文艺比赛中取得显著成绩，参加国际和全国性比赛获得前三名，参加省级比赛获得第一名，为国家赢得荣誉。集体项目应为主要演员。</p><p>（7）获全国三好学生、全国优秀学生干部、全国社会实践先进个人、全国十大杰出青年、中国青年五四奖章等全国性荣誉称号。</p><p>2.国家励志奖学金申请条件：国家励志奖学金的申请需是完成困难认定的同学，上一学年学习成绩排名与综合考评成绩排名均在本年级本专业前25%以内。</p><p>3. 注意事项：国家奖学金和国家励志奖学金申请者本学年综测、绩点应均在本专业10%以内；体测成绩在66.7以上。</p><p>4. 具体金额：国家奖学金：每生每年8000元。我校二年级及以上特别优秀的全日制本科在校生。国家励志奖学金：每生每年5000元。具有我校学籍且品学兼优、通过当年家庭经济困难认定的，二年级及以上全日制本科在校生。</p><p>5. 须知：国奖和国励不能同时获得，但可以同时申报。</p><p>6. 审批步骤：</p><p>（1）各院（部）&nbsp;认真组织宣讲国家奖助学金评审文件精神和本通知要求，做到每位学生均知恶国家奖助学金资助政策。</p><p>（2）符合奖助学金评选条件的学生自愿提出申请，各院（部）经各层次工作小组评议确定最终拟获奖助名单，并将奖助结果在显要位置进行公示。公示时间不得少于五个工作日。</p><p>（3）组织各院（部）资助工作专员进行奖助学金填报系统的相关培训。</p><p>（4）各院&nbsp;（部） 数据自审、调整阶段。</p><p>（5）学校学生资助中对国家奖助学金获得者进行复审并提出拟获得国家奖助学金名单，报学校国家奖助学金领导小组审批，并进行校内公示。</p><p>补充：</p><p>其他奖学金：社会团体奖学金：</p><p>忠信德育奖学金：该奖项由台湾著名教育家、台湾忠信高级工商职业学校创办人、董事长高震东先生设立。旨在鼓励我校学生进一步弘扬中华民族传统道德，塑造学生良好品行。资助学生50名，资助金额为每人每年800元。</p><p>叶圣陶奖学金：由苏州市人民政府2014年向中国教师发展基金会捐资设立，奖励全国师范大学全日制师范专业本科优秀在校生。资助对象为在校二年级以上的本科师范生，资助金额为每人每年3000元。</p><p>梦根奖学金：由爱u人士张文静女士设立，旨在激励我校学生刻苦学习、发奋进取。资助学生10名，资助金额为每人3000元。</p>', '什么是奖学金？评审要求？', 'http://localhost:9090/files/1731490866199-164489857958271119.jpg', '[\"新生求助\",\"每日一问\"]', 3, '2024-11-13', 42, 1);
INSERT INTO `blog` VALUES (4, '有关助学贷款的通知', '<p>1. 申请条件：本校全日制本科生和研究生。<br/>2. 贷款额度和期限：各学院要根据学生本人实际情况，对提出贷款申请的家庭经济困难学生做到“应贷尽贷”，不设贷款人数或规模上限。本科生每生每年贷款最多不超过12000元，研究生每生每年贷款最多不超过16000元，贷款额度根据学费和住宿费标准确定，每笔贷款最低不得低于1000元,金额是100的整数倍。每笔贷款合同期限统一为16年。<br/>脱贫享受政策户和风险未消除监测学生、农村低保家庭学生、农村特困救助供养学生、孤残学生、烈士子女以及家庭遭遇自然灾害或突发事件等特殊情况的学生作为重点资助对象，贷款金额可以按最高标准执行，保证其顺利就学。<br/>3. 申请与批准：<br/>	A．首次贷款学生：<br/>	（1）注册个人信息：贷款学生进入“国家开发银行学生在线服务系统”（<a href=\"https://www.csls.cdb.com.cn\" target=\"_blank\">https://www.csls.cdb.com.cn/</a>）点击“高校助学贷款”，点击“立即注册”——按要求填写完善个人基本信息，注册成功后，可登录学生在线服务系统申请贷款。<br/>（2）提出贷款申请：贷款学生登录“学生在线服务系统”——点击“高校助学贷款”——输入正确的登录名与密码——点击左侧的“贷款申请” 标签——点击“+”——填写贷款申请信息——贷款在线申请成功。<br/>B：非首次贷款学生：登录进入“学生在线服务系统”后直接进行贷款申请。<br/>注意：（1）贷款学生首次注册时，登录名为本人身份证号码；密码长度8～20位，数字字母组合区分大小写。<br/>（2）贷款学生初始密码可由学院经办人进入“国家助学贷款工作系统”按以下步骤查询： “学生管理”——“基本信息管理”——点击学生的姓名，在弹出页面中的“学生在线信息”即可看到学生初始密码。<br/>若学生忘记密码，可由学院经办人在“学生管理”——“基本信息管理”——“重置密码”代为重置。<br/>（3）学生在系统中申请时，贷款年限统一选择16年。<br/>（4）各学院组织有续贷需求的学生登录学生在线服务系统，认真填写续贷声明，字数须在100～200字之间，认真总结陈述一年来的思想、学习进步情况。学院贷款经办人要对学生续贷申请严格审查，确保续贷声明内容客观真实、积极向上。<br/>4. 提醒：<br/>（1）根据河南省学生资助管理中心统一要求，全日制本科学生在同一学年内根据自身情况自由选择“校园地国家助学贷款”和“生源地信用助学贷款”，一年内只能办理其中一种助学贷款；全日制研究生原则上须申请办理“校园地国家助学贷款”。<br/>（2）校园地国家助学贷款是由政府主导、财政贴息，银行、教育行政部门与高校共同操作，帮助高校家庭经济困难学生支付在校学习期间学费、住宿费的信用贷款。<br/>学生通过学校组织向国家开发银行申请办理，由各学院统一讲解，集中办理，流程方便快捷。校园地国家助学贷款与“网贷”、“校园贷”等网络贷款有着本质区别。国家及我省为切实保障家庭经济困难学生公平地享有受教育权，高度重视，先后出台了各项新政策，资助政策相当完备。<br/>（3）同学们在遇到困难时，应首先通过正规渠道及时寻求学校资助部门的帮助。坚决抵制社会网贷平台及小额贷款公司高利贷款，拒绝不良网贷。提高明辨是非的能力，理性消费，抵制诱惑。<br/></p>', '助学贷款是什么？评审条件？', 'http://localhost:9090/files/1731491057299-315.jpg!seo.v1', '[\"新生求助\",\"每日一问\"]', 6, '2024-11-13', 58, 10);
INSERT INTO `blog` VALUES (5, '关于双学位的通知', '<p>&nbsp; &nbsp; “双学士学位”（以下简称“双学位”）是指我校全日制在校本科生，在保证完成主修专业学业任务的同时，根据学校的有关规定，经自愿申请、学校审核同意，跨学科门类修读第二个专业学位课程，达到河南师范大学授予学位标准，获得另一个学科门类的学士学位。在攻读主修专业的同时，如果申请修读另一专业，且该专业与主修专业属同一学科门类，视为申请攻读“辅修专业”。</p><p><b>河南师范大学相关内容</b><b></b></p><p>第九条&nbsp;修读资格</p><p>1.河南师范大学普通全日制本科在校学生，政治素质好，遵纪守法，诚实守信，遵守学校规章制度；身体健康，学有余力，主修专业必修和限选课程平均学分绩点在2.5及以上，没有不及格记录，同时无学籍处理和纪律处分记录，经本人申请，学院同意，教务处批准后可参加双学位和辅修专业学习。</p><p>2.按时缴纳主修专业和双学位或辅修专业学费。</p><p>3.学生只能修读一个双学位或辅修专业。</p><p>4.符合各专业规定的其他要求。</p><p>第十条&nbsp;选拔程序</p><p>1.大学一年级第二学期教务处向全校学生公布当年计划开设的双学位专业（含辅修专业）。</p><p>2.申请修读双学位专业（含辅修专业）的学生，应在规定时间内在教务管理系统办理报名登记手续。同时填写《河南师范大学本科生修读双学位和辅修专业申请表》，交至主修专业所在学院，学院对学生学习资格进行审核、签字后，将申请表及学院汇总表交教务处。</p><p>3.教务处复查，择优确定获得双学位和辅修专业学习资格的学生名单并予以公布。</p><p>4.学生凭财务处出具的交费收据到开设双学位和辅修专业的学院办理登记注册，学校从第三学期起按教学计划安排课程学习。逾期不缴纳学费者作放弃资格处理。&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br/></p>', '双学位是什么？怎样修双学位？', 'http://localhost:9090/files/1731510521007-t010bc4adcefa23dd1d.jpg', '[\"新生求助\",\"每日一问\",\"学习方法\",\"分享心得\"]', 3, '2024-11-13', 125, 4);
INSERT INTO `blog` VALUES (6, '想勤工俭学的看过来！', '<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;我校的勤工助学工作实行学生资助服务中心和学院两级管理。学生资助服务中心下设勤工助学指导科，负责全校范围内的勤工助学的组织协调和管理服务工作。各学院应设立由学生工作负责人任组长的勤工助学工作领导小组，在学生资助服务中心的指导和监督下开展本学院的勤工助学相关工作。</p><p><b>河南师范大学相关内容</b><b></b></p><p><b></b></p><p>第四章&nbsp;岗位申请及聘用</p><p>第十四条申请勤工助学的学生必须具备以下基本条件:</p><p>(一)诚实守信，遵纪守法，道德品行良好:</p><p>(二)学习努力,态度端正:</p><p>(三)生活简朴，无不良嗜好，工作责任心强:</p><p>(四)身体健康，能任工作;</p><p>(五)除部分技术型岗位有特殊需求外，被认定为家庭经济困难的学生优先申请。</p><p>第十五条每学期开学第二周，勤工助学指导科面向全校学生发布学生资助勤工助学岗位招聘信息，学生择岗申请，并填写《河南师范大学勤工助学岗位申请表》。通过自主招聘和学院推荐两种形式报勤工助学指导科，对申请学生进行审核，筛选符合基本条件的学生，审批公示后录用。</p><p>第十六条每学期开学第三周，各学院勤工助学工作小组面向本学院学生发布本学院勤工助学岗位招聘信息，学生择岗申请，并填写《河南师范大学勤工助学岗位申请表》，各学院筛选符合条件的学生，经公示后录用。</p>', '勤工俭学是什么？怎样可以参加勤工俭学呢？', 'http://localhost:9090/files/1731510661233-16pic_2890350_b.jpg', '[\"我爱师大\",\"每日一问\"]', 4, '2024-11-13', 159, 9);
INSERT INTO `blog` VALUES (7, '想考研或者考公的看过来！', '<p>1.尽早根据自己的情况确立目标学校，有目标才有动力。前期可以选两到三所学校，后边根据实际情况以及研究生招生名额等选定一所。</p><p>2.分析自己考研的目的，如果是为了获得研究生学历，那可以考虑以上岸为前提，在能上岸的基础上尽可能追好的学校。如果是为了以后继续读博或者想去好的城市进入教师体制，那就要考虑学校自己专业排名档次。</p><p>3.要通过微博、小红书等尽量取得所想报学校的学长学姐，询问一些建议和招生信息。</p><p>4.合理地规划自己的复习时间，划分大的时间段，再细分小的时间段。比如暑假结束开学前，要把数分高代一轮结束，这是大的阶段目标；那么在暑假期间每周要复习哪一章节或者哪两章节，每个章节用几天，等等。</p><p>5.对于专业课的复习，如果时间充裕，可以进行三轮，第一轮：细致的过课本，定义、定理及证明、例题、课后题。第二轮：系统复习，将各章节联系起来，更加着重于比较薄弱的章节。第三轮：做真题，根据自己所报的院校学校的此类型的真题风格进行专项练习（级数求和、证明连续性可微性、求积分等等；另外也要看看其他学校的此类型的真题）</p><p>6.在复习期间，尽可能的抛掉手机。</p>', '考研考公怎样准备？', 'http://localhost:9090/files/1731510961136-164489857958271119.jpg', '[\"毕业季\",\"每日一问\",\"学习方法\",\"分享心得\"]', 5, '2024-11-13', 135, 8);
INSERT INTO `blog` VALUES (8, '有关评优评先的政策介绍', '<p><b>河南师范大学相关内容</b><b></b></p><p><b></b></p><p>第一节先进班集体的评选及奖励</p><p>第六条评选条件：</p><p>l、班委、团支部组织健全，有健全有效的班级制度；学生干部能以身作则，团结协</p><p>作，积极主动完成和开展各项工作，成绩突出。</p><p>2、具有良好的班风，全班同学模范遵守《高等学校学生行为准则》和学校有关规章</p><p>制度。全班同学在评选学年内未发现受纪律处分和违法违纪现象。</p><p>3、班级学习风气浓厚，多数同学学习成绩优良或学习上有较大进步，不及格率低，</p><p>无考试违纪和作弊现象。</p><p>4、积极开展健康有益的课外活动，积极参加校、学院组织的各种集体活动和文体比</p><p>赛并取得较好成绩；全班绝大多数同学能自觉锻炼身体，体育达标率较高，身心健康。</p><p>第七条评选方法：</p><p>1、先进班集体的评选采取定量测评和民主评议相结合，以学院为单位进行；</p><p>2、各学院在评选先进班集体时，应当按照条件，依据可测可比项目，如出勤、学习、</p><p>体育活动、执行规章制度等方面的成绩是否居本学院领先地位，并参考校、学院学生会日</p><p>常各项检查评比情况。</p><p>3、对于评选出的先进班集体，由学院负责整理书面材料报学生处审批。</p><p>第八条评选名额及奖励：</p><p>1、先进班集体名额原则上每学院1个；</p><p>2、先进班集体发给奖牌和1000元奖学金，奖学金作为班级活动经费。</p><p>3、获得先进班集体者，追加2个模范学生干部名额。</p><p>第二节 学生工作先进学院的评选及奖励</p><p>第九条评选条件：</p><p>1、学院学生工作总体情况：学院领导重视学生工作，能及时完成学工部（处）布置的</p><p>工作，学生就业率、考研率、英语四六级通过率较高或者有较大提高，学生违纪率较低或</p><p>者有明显下降，学生稳定工作较好；</p><p>2、学生教育工作：能开展行之有效的思想政治教育和党团员发展、社会实践、心理健</p><p>康教育等工作。</p><p>3、学生管理工作：学生管理制度健全，学生评先评优工作公开、公平、公正，学生工</p><p>作经费使用规范，勤工助学和国家助学贷款工作开展情况较好；</p><p>4、特色性工作和临时性工作：能根据上级有关部门要求结合本学院实际开展富有特色</p><p>和富有创造性的工作，临时性工作完成质量较高。</p><p>第十条评选方法：按照《河南师范大学学院学生工作综合考评指标体系》采用量化</p><p>方法进行评定，根据综合考评分数排列名次。</p><p>第十一条评选名额及奖励：</p><p>1、学生工作先进学院名额为6个；</p><p>2、学生工作先进学院第1-3名奖励3000元，第4-6名奖励2000元。</p><p>第三节 三好学生的评选及奖励</p><p>第十二条评选条件及名额：</p><p>1、思想道德素质、专业素质、体美劳等素质测评分数分别在各项分值总额的60%以上，</p><p>综合测评成绩排名前20%以内者，可以参加三好学生评选。其中综合测评成绩排名在前5%</p><p>以内者，可以参加三好学生标兵评选。</p><p>2、三好学生标兵和三好学生名额分别不超过本年级本专业学生总数的5%、15%。</p><p>第十三条被评为三好学生标兵和三好学生者，学校颁发荣誉证书和奖品。</p><p>第四节模范学生干部的评选及奖励</p><p>第十四条评选条件：</p><p>l、坚持四项基本原则，认真学习马克思列宁主义、毛泽东思想、邓小平理论和“三</p><p>个代表”重要思想，确立在中国共产党领导下走社会主义道路，实现中华民族伟大复兴的</p><p>共同理想和坚定信念；</p><p>2、能严格遵守国家法规和学校的各项规章制度，自觉维护社会秩序，遵守社会公德，</p><p>敢于同不良倾向和行为作斗争；</p><p>3、在自己所担负的工作中，坚持原则，积极主动，勇于开拓，具有创新精神；作风</p><p>正派，办事公道，团结同学；有一定的分析和解决问题的能力；很好地完成本职工作，工</p><p>作成绩突出；</p><p>4、学习勤奋刻苦，成绩优良，综合测评成绩排名在前50％以内。</p><p>第十五条评选范围及评选办法：</p><p>1、凡在评选学年内担任班级以上职务的学生干部，均可参加评选；</p><p>2、校级学生干部单列评选；学院学生干部以学院为单位评选；班级学生干部以班级</p><p>为单位评选。</p><p>第十六条评选名额及奖励办法：</p><p>l、学院模范学生干部（含班级模范学生干部）指标为本学院学生总数的5％；校级模</p><p>范学生干部指标为学生干部总数的50％。</p><p>2、被评为模范学生干部者，学校颁发荣誉证书和奖品。</p><p>第五节优秀毕业生的评定及奖励</p><p>第十七条本科生在校期间表现良好，且符合下列条件之一者，评为优秀毕业生。</p><p>l、在校期间累计获得二次三好学生标兵或三次三好学生者：</p><p>2、在校期间累计获得三次模范学生干部者；</p><p>3、在校期间连续三年获得下列荣誉称号之一者：三好学生标兵、三好学生、模范学</p><p>生干部、优秀党员、优秀团员（干）。</p><p>第十八条两年制专科生在校期间表现良好，获得三好学生标兵、三好学生、模范学生干部、优秀党员、优秀团员（干）两项荣誉称号者，评为优秀毕业生。</p><p>第十九条对于表现特别突出的学生，学校可直接授予优秀毕业生称号。</p><p>第二十条被评为优秀毕业生者，学校颁发荣誉证书和奖品。</p><p>第二十一条优秀毕业生毕业离校前考核成绩不及格或发生违反校纪行为者，取消所获得的优秀毕业生称号。</p>', '评优评先的条件是什么？', 'http://localhost:9090/files/1731510906151-t0103d0b491cca68dff.jpg', '[\"每日一问\",\"新生求助\"]', 7, '2024-11-13', 50, 6);
INSERT INTO `blog` VALUES (9, '考公人快进来！', '<p>1.尽早根据自己的情况确立目标学校，有目标才有动力。前期可以选两到三所学校，后边根据实际情况以及研究生招生名额等选定一所。</p><p>2.分析自己考研的目的，如果是为了获得研究生学历，那可以考虑以上岸为前提，在能上岸的基础上尽可能追好的学校。如果是为了以后继续读博或者想去好的城市进入教师体制，那就要考虑学校自己专业排名档次。</p><p>3.要通过微博、小红书等尽量取得所想报学校的学长学姐，询问一些建议和招生信息。</p><p>4.合理地规划自己的复习时间，划分大的时间段，再细分小的时间段。比如暑假结束开学前，要把数分高代一轮结束，这是大的阶段目标；那么在暑假期间每周要复习哪一章节或者哪两章节，每个章节用几天，等等。</p><p>5.对于专业课的复习，如果时间充裕，可以进行三轮，第一轮：细致的过课本，定义、定理及证明、例题、课后题。第二轮：系统复习，将各章节联系起来，更加着重于比较薄弱的章节。第三轮：做真题，根据自己所报的院校学校的此类型的真题风格进行专项练习（级数求和、证明连续性可微性、求积分等等；另外也要看看其他学校的此类型的真题）</p><p>6.在复习期间，尽可能的抛掉手机。</p>', '想考公的进来了解相关信息。', 'http://localhost:9090/files/1731577399437-164489857958271119.jpg', '[\"毕业季\",\"学习方法\",\"分享心得\"]', 3, '2024-11-14', 58, 7);
INSERT INTO `blog` VALUES (10, '各类助学金、奖学金相关信息。', '<p>忠信德育奖学金：该奖项由台湾著名教育家、台湾忠信高级工商职业学校创办人、董事长高震东先生设立。旨在鼓励我校学生进一步弘扬中华民族传统道德，塑造学生良好品行。资助学生50名，资助金额为每人每年800元。</p><p>叶圣陶奖学金：由苏州市人民政府2014年向中国教师发展基金会捐资设立，奖励全国师范大学全日制师范专业本科优秀在校生。资助对象为在校二年级以上的本科师范生，资助金额为每人每年3000元。</p><p>梦根奖学金：由爱u人士张文静女士设立，旨在激励我校学生刻苦学习、发奋进取。资助学生10名，资助金额为每人3000元。</p>', '除了国奖和国励，还有哪些奖学金？', 'http://localhost:9090/files/1731577498127-164489857958271119.jpg', '[\"新生求助\",\"每日一问\"]', 7, '2024-11-14', 99, 1);
INSERT INTO `blog` VALUES (11, '想了解其他助学金的进来！', '<p>新长城助学基金：“中国体育彩票·新长城助学基金”由河南省体育彩票管理中心指助，旨在帮助优秀困难学生减轻家庭负担，顺利完成学业，同时帮助学生树立坚强刚毅、自信达观的人生态度。资助新生120名，资助金额为每人每年2500元，连续资助2年。</p><p>应善良助学金：由“应善良福利基金会”创办人沈炳麟先生设立，用来帮助家境贫寒，难以求学的学生完成学业，资助新生30名，资助金额为每人每年3500元，连续资助4年。</p>', '除了国家助学金，还有哪些助学金？', 'http://localhost:9090/files/1731577567327-t010bc4adcefa23dd1d.jpg', '[\"每日一问\",\"新生求助\"]', 5, '2024-11-14', 89, 2);
INSERT INTO `blog` VALUES (12, '奖学金', '<p>奖学金</p>', '想了解奖学金的进来', 'http://localhost:9090/files/1731675325393-164489857958271119.jpg', '[\"新生求助\",\"每日一问\"]', NULL, '2024-11-15', 0, 1);

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '分类名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '博客分类' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (1, '奖学金');
INSERT INTO `category` VALUES (2, '助学金');
INSERT INTO `category` VALUES (4, '双学位');
INSERT INTO `category` VALUES (5, '转专业');
INSERT INTO `category` VALUES (6, '评优评先');
INSERT INTO `category` VALUES (7, '考公经验');
INSERT INTO `category` VALUES (8, '考研经验');
INSERT INTO `category` VALUES (9, '勤工俭学');
INSERT INTO `category` VALUES (10, '助学贷款');

-- ----------------------------
-- Table structure for collect
-- ----------------------------
DROP TABLE IF EXISTS `collect`;
CREATE TABLE `collect`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `fid` int NULL DEFAULT NULL COMMENT '关联ID',
  `user_id` int NULL DEFAULT NULL COMMENT '点赞人ID',
  `module` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '模块',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '收藏' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of collect
-- ----------------------------
INSERT INTO `collect` VALUES (1, NULL, NULL, '');
INSERT INTO `collect` VALUES (5, 11, 4, '博客');
INSERT INTO `collect` VALUES (7, 1, 4, '博客');

-- ----------------------------
-- Table structure for likes
-- ----------------------------
DROP TABLE IF EXISTS `likes`;
CREATE TABLE `likes`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `fid` int NULL DEFAULT NULL COMMENT '关联ID',
  `user_id` int NULL DEFAULT NULL COMMENT '点赞人ID',
  `module` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '模块',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '点赞' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of likes
-- ----------------------------
INSERT INTO `likes` VALUES (1, 3, 2, '博客');
INSERT INTO `likes` VALUES (2, 3, 4, '博客');
INSERT INTO `likes` VALUES (3, 5, 4, '博客');
INSERT INTO `likes` VALUES (4, 5, 1, '博客');
INSERT INTO `likes` VALUES (5, 6, 3, '博客');
INSERT INTO `likes` VALUES (16, 10, 4, '博客');
INSERT INTO `likes` VALUES (18, 11, 4, '博客');
INSERT INTO `likes` VALUES (20, 1, 4, '博客');

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '标题',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '内容',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '创建时间',
  `user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '创建人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '公告信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES (1, '今天系统正式上线，开始内测', '今天系统正式上线，开始内测', '2023-09-05', 'admin');
INSERT INTO `notice` VALUES (2, '所有功能都已完成，可以正常使用', '所有功能都已完成，可以正常使用', '2023-09-05', 'admin');
INSERT INTO `notice` VALUES (3, '今天天气很不错，可以出去一起玩了', '今天天气很不错，可以出去一起玩了', '2023-09-05', 'admin');
INSERT INTO `notice` VALUES (4, '开服了', '耶耶耶', '2024-11-12', 'admin');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '密码',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '姓名',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '头像',
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '角色标识',
  `sex` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '性别',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '电话',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '邮箱',
  `info` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '简介',
  `birth` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '生日',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '用户信息' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (2, 'wxt', '123', 'wxt', 'http://localhost:9090/files/1731599131654-微信图片_20241114234132.jpg', 'USER', NULL, NULL, NULL, '我是wxt', NULL);
INSERT INTO `user` VALUES (3, 'hd', '123', 'hd', 'http://localhost:9090/files/1731599141161-微信图片_20241114234119.jpg', 'USER', NULL, NULL, NULL, '我是hd', NULL);
INSERT INTO `user` VALUES (4, 'syy', '123', 'syy', 'http://localhost:9090/files/1731599120587-微信图片_20241114234128.jpg', 'USER', NULL, NULL, NULL, '我是syy', NULL);
INSERT INTO `user` VALUES (5, 'jyp', '123', 'jyp', 'http://localhost:9090/files/1731599110942-微信图片_20241114234137.jpg', 'USER', NULL, NULL, NULL, '我是jyp', NULL);
INSERT INTO `user` VALUES (6, 'yyy', '123', 'yyy', 'http://localhost:9090/files/1731599100724-微信图片_20241114234141.jpg', 'USER', NULL, NULL, NULL, '我是yyy', NULL);
INSERT INTO `user` VALUES (7, 'ssh', '123', 'ssh', 'http://localhost:9090/files/1731598916426-微信图片_20241114234146.jpg', 'USER', NULL, NULL, NULL, '我是ssh', NULL);

SET FOREIGN_KEY_CHECKS = 1;
