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
	