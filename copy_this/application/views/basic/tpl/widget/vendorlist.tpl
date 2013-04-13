	   [{if $oView->getVendorlist() }]
            <select id="test_searchVendorSelect" class="search_input" name="searchvendor">
                <option value=""> [{ oxmultilang ident="INC_SEARCHLEFTITEM_ALLDISTRIBUTORS" }] </option>
                [{foreach from=$oView->getVendorlist() item=oVendorlistentry}]
                    <option value="[{$oVendorlistentry->oxvendor__oxid->value}]"[{if $oView->getSearchVendor() == $oVendorlistentry->oxvendor__oxid->value}] selected[{/if}]>[{ $oVendorlistentry->oxvendor__oxtitle->value }][{ if $oVendorlistentry->getNrOfArticles() > 0 }] ([{$oVendorlistentry->getNrOfArticles()}])[{/if}]</option>
                [{/foreach}]
            </select>
            [{/if}]