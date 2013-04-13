[{assign var="template_title" value="TAGS"|oxmultilangassign }]
[{include file="_header.tpl" title=$template_title location=$template_title titlepagesuffix=$oView->getTitlePageSuffix()}]

[{oxid_include_widget nocookie=1 cl="oxwTagCloud" blShowBox="1" noscript=1 oxwtemplate="inc/tags.tpl"}]

[{insert name="oxid_tracker" title=$template_title }]
[{include file="_footer.tpl" }]