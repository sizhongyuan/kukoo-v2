<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/pages/base/head.jsp"%>

<link rel="stylesheet" type="text/css" href="<%=basePath %>css/timeaxis/default.css" />
<link rel="stylesheet" type="text/css" href="<%=basePath %>css/timeaxis/component.css" />
<script src="<%=basePath %>javascript/timeaxis/modernizr.custom.js"></script>

<html>
<script type="text/javascript">
	$("document").ready(function() {
		/* 判断session用户是否登录 start*/
		if("${userId}" !== ""){
			$('#userCenter',parent.document).removeClass("hidden");
			$("#signUp",parent.document).addClass("hidden");
			$("#signIn",parent.document).addClass("hidden");
		}
		/* 判断session用户是否登录 end*/
	});
</script>
<body>
	<div class="container">
		<div class="main">
			<ul class="cbp_tmtimeline">
				<li>
					<time class="cbp_tmtime" datetime="2014-10-30 18:30">
						<span>4/10/13</span>
						<span>18:30</span>
					</time>
					<div class="cbp_tmicon cbp_tmicon-phone"></div>
					<div class="cbp_tmlabel">
						<h2>中国最大老外住家服务平台</h2>
						<p>住家语伴是Homestay长期践行的交流活动，旨在邀请外国人融入最地道的中国生活，让中国家庭感知他们的故事，彼此付出热情与关爱，彼此结下一份珍贵的友谊。住家语伴，让外国人感受、体验和创造前所未有的他国岁月，让中国家庭体会、学习和领悟不同凡响的他国文化。</p>
					</div>
				</li>
				<li>
					<time class="cbp_tmtime" datetime="2014-11-01T12:04">
						<span>4/11/13</span>
						<span>12:04</span>
					</time>
					<div class="cbp_tmicon cbp_tmicon-screen"></div>
					<div class="cbp_tmlabel">
						<h2>互建信任</h2>
						<p>放下惴惴不安的心，奔向最地道的家。我们想通过平台的建设，构建沟通的桥梁，让外国人放心地走向陌生的家，让中国家庭放心地接纳陌生的老外。我们希望通过住家语伴建立长效的信任机制，让陌生不再恐惧，让交流不再隔阂，这就是homestay的初衷，多一份信任，让世界更懂你。</p>
					</div>
				</li>
				<li>
					<time class="cbp_tmtime" datetime="2014-11-02 05:36">
						<span>4/13/13</span>
						<span>05:36</span>
					</time>
					<div class="cbp_tmicon cbp_tmicon-mail"></div>
					<div class="cbp_tmlabel">
						<h2>传递价值</h2>
						<p>一次接待，一份邂逅；一段相处，一个世界。Homestay愿为外国友人提供最地道的家，并利用语伴服务减免房租，创造现实价值。Homestay愿为接待家庭提供免费的外语语伴服务，并通过交往结交一份国际友谊，为日后的异国生活创造便利。这就是Homestay的双向价值，让邂逅变得更加美好。</p>
					</div>
				</li>
				<li>
					<time class="cbp_tmtime" datetime="2014-11-03 13:15">
						<span>4/15/13</span>
						<span>13:15</span>
					</time>
					<div class="cbp_tmicon cbp_tmicon-phone"></div>
					<div class="cbp_tmlabel">
						<h2>分享世界</h2>
						<p>最好的交往，不是双方有意识地吸附与粘合，而是彼此间无意识地渗透与融入。我们愿为追寻世界的人们，在未知的旅途中找到家的归属；我们愿为敞开世界的家庭，在熟悉的生活中感知世界的魅力；我们愿为相距千里的你我，在真正的交流中分享暖暖的世界。</p>
					</div>
				</li>
				<li>
					<time class="cbp_tmtime" datetime="2014-11-05 21:30">
						<span>4/16/13</span>
						<span>21:30</span>
					</time>
					<div class="cbp_tmicon cbp_tmicon-earth"></div>
					<div class="cbp_tmlabel">
						<h2>Courgette daikon</h2>
						<p>Parsley amaranth tigernut silver beet maize fennel spinach.
							Ricebean black-eyed pea maize scallion green bean spinach cabbage
							jícama bell pepper carrot onion corn plantain garbanzo. Sierra
							leone bologi komatsuna celery peanut swiss chard silver beet
							squash dandelion maize chicory burdock tatsoi dulse radish wakame
							beetroot.</p>
					</div>
				</li>
				<li>
					<time class="cbp_tmtime" datetime="2014-11-06 12:11">
						<span>4/17/13</span>
						<span>12:11</span>
					</time>
					<div class="cbp_tmicon cbp_tmicon-screen"></div>
					<div class="cbp_tmlabel">
						<h2>Greens radish arugula</h2>
						<p>Caulie dandelion maize lentil collard greens radish arugula
							sweet pepper water spinach kombu courgette lettuce. Celery
							coriander bitterleaf epazote radicchio shallot winter purslane
							collard greens spring onion squash lentil. Artichoke salad bamboo
							shoot black-eyed pea brussels sprout garlic kohlrabi.</p>
					</div>
				</li>
				<li>
					<time class="cbp_tmtime" datetime="2014-11-06 09:56">
						<span>4/18/13</span>
						<span>09:56</span>
					</time>
					<div class="cbp_tmicon cbp_tmicon-phone"></div>
					<div class="cbp_tmlabel">
						<h2>Sprout garlic kohlrabi</h2>
						<p>Parsnip lotus root celery yarrow seakale tomato collard
							greens tigernut epazote ricebean melon tomatillo soybean chicory
							broccoli beet greens peanut salad. Lotus root burdock bell pepper
							chickweed shallot groundnut pea sprouts welsh onion wattle seed
							pea salsify turnip scallion peanut arugula bamboo shoot onion
							swiss chard. Avocado tomato peanut soko amaranth grape fennel
							chickweed mung bean soybean endive squash beet greens carrot
							chicory green bean. Tigernut dandelion sea lettuce garlic daikon
							courgette celery maize parsley komatsuna black-eyed pea bell
							pepper aubergine cauliflower zucchini. Quandong pea chickweed
							tomatillo quandong cauliflower spinach water spinach.</p>
					</div>
				</li>
			</ul>
		</div>
	</div>
</body>
</html>