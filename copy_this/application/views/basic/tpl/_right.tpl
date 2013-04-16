[{if $oView->isDemoShop()}]
  [{ include file="inc/admin_banner.tpl" }]
[{/if}]

<div class="forms">
    [{if $oViewConf->getViewThemeParam('bl_perfShowRightBasket')}]
        [{oxid_include_dynamic file="dyn/mini_basket.tpl" type="basket" extended=true testid="RightBasket"}]
    [{/if}]

	[{oxid_include_widget cl="oxwServiceMenu" _parent=$oView->getClassName() blLoginError=$blLoginError nocookie=$blAnon _navurlparams=$oViewConf->getNavUrlParams() anid=$oViewConf->getActArticleId() oxwtemplate="widget/servicemenu.tpl"}]
	
	[{*
    [{if !$oView->isConnectedWithFb()}]
    <strong class="h2"><a id="test_RightSideAccountHeader" rel="nofollow" href="[{ oxgetseourl ident=$oViewConf->getSelfLink()|cat:"cl=account" }]">[{ oxmultilang ident="INC_RIGHTITEM_MYACCOUNT" }]</a></strong>
    <div class="box">
        [{oxid_include_dynamic file="dyn/cmp_login_right.tpl" type="login" pgnr=$oView->getActPage() tpl=$oViewConf->getActTplName() additional_form_parameters="`$AdditionalFormParameters`"|cat:$oViewConf->getNavFormParams() }]
        [{oxid_include_dynamic file="dyn/cmp_login_links.tpl" type="login_links"}]
    </div>
    [{/if}]

    [{if $oViewConf->getShowFbConnect()}]
        [{if !$oxcmp_user || ($oxcmp_user && $oView->isConnectedWithFb()) }]
        <strong class="h2"><a id="test_RightSideNewsLetterHeader" rel="nofollow" href="[{ oxgetseourl ident=$oViewConf->getSelfLink()|cat:"cl=account"}]">[{ oxmultilang ident="INC_RIGHTITEM_FBCONNECT" }]</a></strong>
        <div class="box" id="loginboxFbConnect">
            [{include file="inc/facebook/fb_enable.tpl" source="dyn/cmp_fbconnect_right.tpl" ident="#loginboxFbConnect" }]
        </div>
        [{/if}]
    [{/if}]
	*}]
    [{if $oViewConf->showTs("WIDGET") && $oViewConf->getTsId() }]
        [{include file="inc/ts_ratings.tpl" }]
    [{/if}]

    [{if $oView->showNewsletter()}]
        <strong class="h2"><a id="test_RightSideNewsLetterHeader" rel="nofollow" href="[{ oxgetseourl ident=$oViewConf->getSelfLink()|cat:"cl=newsletter" }]">[{ oxmultilang ident="INC_RIGHTITEM_NEWSLETTER" }]</a></strong>
        <div class="box">[{include file="inc/cmp_newsletter.tpl" }]</div>
    [{/if}]

</div>
[{assign var='rsslinks' value=$oView->getRssLinks() }]
[{ if $oView->getTop5ArticleList() }]
    <strong class="h2" id="test_RightSideTop5Header">
        [{ oxmultilang ident="INC_RIGHTITEM_TOPOFTHESHOP" }]
        [{if $rsslinks.topArticles}]
            <a class="rss" id="rssTopProducts" href="[{$rsslinks.topArticles.link}]" title="[{$rsslinks.topArticles.title}]"></a>
            [{oxscript add="oxid.blank('rssTopProducts');"}]
        [{/if}]
    </strong>
    <div class="box">
        <div>[{include file="inc/top_items.tpl" }]</div>
    </div>
[{ /if }]

[{if count($oView->getBargainArticleList()) > 0 }]
    <strong class="h2" id="test_RightSideBarGainHeader">
        [{ oxmultilang ident="INC_RIGHTITEM_BARGAIN" }]
        [{if $rsslinks.bargainArticles}]
            <a class="rss" id="rssBargainProducts" href="[{$rsslinks.bargainArticles.link}]" title="[{$rsslinks.bargainArticles.title}]"></a>
            [{oxscript add="oxid.blank('rssBargainProducts');"}]
        [{/if}]
    </strong>
    <div class="box">
        <div>[{include file="inc/bargain_items.tpl"}]</div>
    </div>
[{ /if }]

[{if $oViewConf->getShowListmania()}]
    [{if $oViewConf->getShowListmania() && $oView->getSimilarRecommListIds() }]
            [{oxid_include_widget nocookie=1 cl="oxwRecommendation" aArticleIds=$oView->getSimilarRecommListIds() searchrecomm=$oView->getRecommSearch() oxwtemplate="widget/recommendation.tpl"}]
        [{elseif $oViewConf->getShowListmania() && $oView->getRecommSearch()}]
            [{oxid_include_widget nocookie=1 cl="oxwRecommendation" _parent=$oView->getClassName() searchrecomm=$oView->getRecommSearch() oxwtemplate="widget/recommendation.tpl"}]
        [{/if}]
[{/if}]

[{ if $oView->getAccessoires() }]
    <strong class="h2" id="test_RightSideAccessoiresHeader">[{ oxmultilang ident="INC_RIGHTITEM_ACCESSORIES" }]</strong>
    <div class="box">
        <div>[{include file="inc/rightlist.tpl" list=$oView->getAccessoires() altproduct=$oView->getProduct() test_Type=accessoire}]</div>
    </div>
[{ /if }]


[{ if $oView->getSimilarProducts() }]
    <strong class="h2" id="test_RightSideSimilListHeader">[{ oxmultilang ident="INC_RIGHTITEM_SIMILARPRODUCTS" }]</strong>
    <div class="box">
        <div>[{include file="inc/rightlist.tpl" list=$oView->getSimilarProducts() altproduct=$oView->getProduct() test_Type=similarlist}]</div>
    </div>
[{ /if }]

[{ if $oView->getCrossSelling()}]
    <strong class="h2" id="test_RightSideCrossListHeader">[{ oxmultilang ident="INC_RIGHTITEM_HAVEPOUSEEN" }]</strong>
    <div class="box">
        <div>[{include file="inc/rightlist.tpl" list=$oView->getCrossSelling() altproduct=$oView->getProduct() test_Type=cross}]</div>
    </div>
[{ /if }]

[{ if $oView->getAlsoBoughtTheseProducts() }]
    <strong class="h2" id="test_RightSideCustWhoHeader">[{ oxmultilang ident="INC_RIGHTITEM_CUSTOMERWHO" }]</strong>
    <div class="box">
        <div>[{include file="inc/rightlist.tpl" list=$oView->getAlsoBoughtTheseProducts() altproduct=$oView->getProduct() test_Type=customerwho}]</div>
    </div>
[{ /if }]

[{if $oView->isActive('FbFacepile') }]
	<strong id="test_facebookFacepileHead" strong class="h2">[{ oxmultilang ident="FACEBOOK_FACEPILE" }]</strong>
    <div class="box" id="productFbFacePile">
    	[{include file="inc/facebook/fb_enable.tpl" source="inc/facebook/fb_facepile.tpl" ident="#productFbFacePile"}]
    </div>	
[{/if}]

