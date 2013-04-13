[{if $oView->showSearch() }]
    <strong class="h2 search">[{ oxmultilang ident="INC_LEFTITEM_PRODUCTSEARCH" }]</strong>
    <form action="[{ $oViewConf->getSelfActionLink() }]" method="get" name="search" class="search" id="f.search">
        <p>
            [{ $oViewConf->getHiddenSid() }]
            <input type="hidden" name="cl" value="search">
            <input type="text" name="searchparam" value="[{$oView->getSearchParamForHtml()}]" size="21" id="f.search.param" class="txt">

            [{if $oView->getSearchCatTree() }]
            <select id="test_searchCategorySelect" class="search_input" name="searchcnid" [{if $oViewConf->getViewThemeParam('blAutoSearchOnCat') }]onchange="oxid.search('f.search','f.search.param');"[{/if}]>
                <option value=""> [{ oxmultilang ident="INC_SEARCHLEFTITEM_ALLCATEGORIES" }] </option>
                [{include file="inc/category_options.tpl" tree=$oView->getSearchCatTree() sSpacer=""}]
            </select>
            [{/if}]

			[{oxid_include_widget cl="oxwVendorList" _parent=$oView->getClassName() noscript=1 nocookie=1 oxwtemplate="widget/vendorlist.tpl"}]

            [{if $oView->getManufacturerlist() }]
            <select id="test_searchManufacturerSelect" class="search_input" name="searchmanufacturer">
                <option value=""> [{ oxmultilang ident="INC_SEARCHLEFTITEM_ALLMANUFACTURERS" }] </option>
                [{foreach from=$oView->getManufacturerlist() item=oManufacturerlistentry}]
                    <option value="[{$oManufacturerlistentry->oxmanufacturers__oxid->value}]"[{if $oView->getSearchManufacturer() == $oManufacturerlistentry->oxmanufacturers__oxid->value}] selected[{/if}]>[{ $oManufacturerlistentry->oxmanufacturers__oxtitle->value }][{ if $oManufacturerlistentry->getNrOfArticles() > 0 }] ([{$oManufacturerlistentry->getNrOfArticles()}])[{/if}]</option>
                [{/foreach}]
            </select>
            [{/if}]

            <span class="btn"><input id="test_searchGo" type="submit" class="btn" value="GO!"></span>
        </p>
    </form>
[{/if}]
[{if $oxcmp_categories }]
  [{if $oViewConf->getViewThemeParam('blTopNaviLayout')}]
    [{include file="inc/category_tree.tpl" tree=$oxcmp_categories->getClickRoot() act=$oxcmp_categories->getClickCat() class="tree"}]
  [{else}]
    [{include file="inc/category_tree.tpl" tree=$oxcmp_categories act=$oxcmp_categories->getClickCat() class="tree"}]
  [{/if}]
[{/if}]

[{if $oViewConf->getViewThemeParam('bl_perfLoadVendorTree') && $oView->getVendorlist()}]
    [{include file="inc/vendor_tree.tpl" tree=$oView->getVendorlist() class="tree"}]
[{/if}]

[{if $oViewConf->getViewThemeParam('bl_perfLoadManufacturerTree') && $oView->getManufacturerlist()}]
    [{include file="inc/manufacturer_tree.tpl" tree=$oView->getManufacturerlist() class="tree"}]
[{/if}]

[{if $oViewConf->getViewThemeParam('bl_perfShowLeftBasket')}]
    [{oxid_include_dynamic file="dyn/mini_basket.tpl" type="basket" testid="LeftBasket"}]
[{/if}]

[{include file="inc/infobox.tpl"}]

[{if $oxcmp_news && count($oxcmp_news) > 0}]
    [{include file="inc/cmp_news.tpl"}]
[{/if}]

<strong class="h2" id="test_LeftSidePartnersHeader">[{ oxmultilang ident="INC_LEFTITEM_PARTNERANDSEAL" }]</strong>
<div class="partners">
    <div class="logo">
      [{include file="inc/trustedshops_item.tpl"}]
    </div>
    <div class="logo">
        <a href="http://www.zend.com" id="link.zendSite"><img src="[{$oViewConf->getImageUrl()}]zend_logo.gif" alt=""></a>
        [{oxscript add="oxid.blank('link.zendSite');"}]
    </div>
</div>


