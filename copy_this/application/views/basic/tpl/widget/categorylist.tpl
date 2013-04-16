[{if $oViewConf->getViewThemeParam('blTopNaviLayout')}]
        <div class="bar categories">
            <a id="test_HeaderHome" href="[{ $oViewConf->getHomeLink() }]" class="fixed">[{ oxmultilang ident="INC_HEADER_HOME" }]</a>
            <ul class="menue horizontal" id="mn.categories">

            [{assign var="iCatCnt" value="1"}]
            [{foreach from=$oxcmp_categories item=ocat key=catkey name=root}]
              [{if $ocat->getIsVisible() }]

                [{if $ocat->getContentCats()}]
                    [{foreach from=$ocat->getContentCats() item=ocont key=contkey name=cont}]
                        [{if $iCatCnt <= $oView->getTopNavigationCatCnt()}]
                            <li><a id="root[{$iCatCnt}]" href="[{$ocont->getLink()}]" [{if $ocont->expanded}]class="exp"[{/if}]>[{$ocont->oxcontents__oxtitle->value}] </a></li>
                        [{/if}]
                        [{assign var="iCatCnt" value=$iCatCnt+1 }]
                    [{/foreach}]
                [{/if}]

                [{if $iCatCnt <= $oView->getTopNavigationCatCnt()}]
                <li>
                    <a id="root[{$iCatCnt}]" href="[{$ocat->getLink()}]" [{if $ocat->expanded}]class="exp"[{/if}]>[{$ocat->oxcategories__oxtitle->value}] [{if $oView->showCategoryArticlesCount() && $ocat->getNrOfArticles() > 0}] ([{$ocat->getNrOfArticles()}])[{/if}] </a>
                    [{if $ocat->getSubCats()}]
                    [{strip}]
                    <ul class="menue vertical dropdown">
                    [{foreach from=$ocat->getSubCats() item=osubcat key=subcatkey name=SubCat}]
                        [{if $osubcat->getContentCats()}]
                            [{foreach from=$osubcat->getContentCats() item=osubcont key=subcontkey name=subcont}]
                            <li><a id="test_Top_root[{ $iCatCnt }]_Cms_[{$smarty.foreach.SubCat.iteration}]_[{$smarty.foreach.subcont.iteration}]" href="[{$osubcont->getLink()}]">[{$osubcont->oxcontents__oxtitle->value}] </a></li>
                            [{/foreach}]
                        [{/if}]
                        [{if $osubcat->getIsVisible() }]
                            <li><a id="test_Top_root[{ $iCatCnt }]_SubCat_[{$smarty.foreach.SubCat.iteration}]" href="[{$osubcat->getLink()}]">[{$osubcat->oxcategories__oxtitle->value}] [{if $oView->showCategoryArticlesCount() && $osubcat->getNrOfArticles() > 0}] ([{$osubcat->getNrOfArticles()}])[{/if}] </a></li>
                        [{/if}]
                    [{/foreach}]
                    </ul>
                    [{/strip}]
                    [{/if}]
                </li>
                [{/if}]
                [{assign var="iCatCnt" value=$iCatCnt+1 }]

              [{/if}]
            [{/foreach}]
            
            [{if $iCatCnt > $oView->getTopNavigationCatCnt()}]
                <li>
                    [{assign var="_navcatmore" value=$oView->getCatMoreUrl()}]
                    <a id="root[{$oView->getTopNavigationCatCnt()+1}]" href="[{ oxgetseourl ident="`$_navcatmore->closelink`&amp;cl=alist" }]" class="more[{if $_navcatmore->expanded}] exp[{/if}]">[{ oxmultilang ident="INC_HEADER_URLMORE" }] </a>
                    [{strip}]
                    <ul class="menue vertical dropdown ebne1">
                    [{foreach from=$oxcmp_categories item=omorecat key=morecatkey name=more}]
                      [{if $omorecat->getIsVisible() }]
                        [{if $omorecat->getContentCats()}]
                            [{foreach from=$omorecat->getContentCats() item=omorecont key=morecontkey name=morecont}]
                            <li><a href="[{$omorecont->getLink()}]">[{$omorecont->oxcontents__oxtitle->value}] </a></li>
                            [{/foreach}]
                        [{/if}]
                        <li><a id="test_Top_RootMore_MoreCat_[{$smarty.foreach.more.iteration}]" href="[{$omorecat->getLink()}]">[{$omorecat->oxcategories__oxtitle->value}] [{ if $omorecat->getNrOfArticles() > 0}] ([{$omorecat->getNrOfArticles()}])[{/if}] </a></li>
                      [{/if}]
                    [{/foreach}]
                    </ul>
                    [{/strip}]
                </li>
            [{/if}]

            [{*if $iCatCnt > $oView->getTopNavigationCatCnt()}]
                <li>
                    [{assign var="_navcatmore" value=$oView->getCatMore()}]
                    <a id="root[{$oView->getTopNavigationCatCnt()+1}]" href="[{ oxgetseourl ident="`$_navcatmore->closelink`&amp;cl=alist" }]" class="more[{if $_navcatmore->expanded}] exp[{/if}]">[{ oxmultilang ident="INC_HEADER_URLMORE" }] </a>
                    [{strip}]
                    <ul class="menue vertical dropdown">
                    [{foreach from=$oxcmp_categories item=omorecat key=morecatkey name=more}]
                      [{if $omorecat->getIsVisible() }]
                        [{if $omorecat->getContentCats()}]
                            [{foreach from=$omorecat->getContentCats() item=omorecont key=morecontkey name=morecont}]
                            <li><a href="[{$omorecont->getLink()}]">[{$omorecont->oxcontents__oxtitle->value}] </a></li>
                            [{/foreach}]
                        [{/if}]
                        <li><a id="test_Top_RootMore_MoreCat_[{$smarty.foreach.more.iteration}]" href="[{$omorecat->getLink()}]">[{$omorecat->oxcategories__oxtitle->value}] [{if $oView->showCategoryArticlesCount() && $omorecat->getNrOfArticles() > 0}] ([{$omorecat->getNrOfArticles()}])[{/if}] </a></li>
                      [{/if}]
                    [{/foreach}]
                    </ul>
                    [{/strip}]
                </li>
            [{/if*}]

            </ul>
            <div class="clear"></div>
        </div>
        [{oxscript add="oxid.catnav('mn.categories');" }]
        [{/if}]