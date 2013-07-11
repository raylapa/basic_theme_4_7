DELETE FROM `oxconfig` WHERE `OXMODULE` = 'theme:basic';
DELETE FROM `oxconfigdisplay` WHERE `OXCFGMODULE` = 'theme:basic';

INSERT INTO `oxconfig` (`OXID`, `OXSHOPID`, `OXMODULE`, `OXVARNAME`, `OXVARTYPE`, `OXVARVALUE`) VALUES
('basic.iTopNaviCatCount', 'oxbaseshop', 'theme:basic', 'iTopNaviCatCount', 'str', ''),
('basic.blTopNaviLayout', 'oxbaseshop', 'theme:basic', 'blTopNaviLayout', 'bool', 0x07),
('basic.aDetailImageSizes', 'oxbaseshop', 'theme:basic', 'aDetailImageSizes', 'aarr', 0x4dba326a73d2cdcb471b9533d7800b4b898873f7ae9dc29edf3ce8fab64f8609e31d318807f46516ea31aa94cb0b4edaaf32e7cb502403b480dd7cb1451f56975c3fd6159579cd2cab97104f17ae6a99af864bc1acb550c7e78b82f4618aeb8ba7fbec5409f277e0a2b84e66c24f96ba3fa76665f6a9294d8bf365bf7d3d0d56faf2355df799bc2892994db56203b0f5967ddbe8d403cead91988dfc82772557950eb1ba0d9468f3d8ca7170cde789d6c1282016056e51005091e7440fa453b1235c40010a71ff46f681c74515b4fda6da204abf3178561e271f8202652eabe106a93f9f4d1ed363f2f33c1e29716b95be88112373c48373148b134f2e0312bcfa2f2ba96f5cb15338dee7265d0efc66fe6526a6047b0e2bc4896143076e8dbc7dd8a7448ba2a5233814dd6abc39cb811a4d295c95cdaffde7cb8a5a3fddfe14f9a580973e9660a622f0d774bdb9),
('basic.sZoomImageSize', 'oxbaseshop', 'theme:basic', 'sZoomImageSize', 'str', 0xfb42b1443b3e38),
('basic.blShowBirthdayFields', 'oxbaseshop', 'theme:basic', 'blShowBirthdayFields', 'bool', 0x07),
('basic.aNrofCatArticles', 'oxbaseshop', 'theme:basic', 'aNrofCatArticles', 'arr', 0x4dbace2972e14bf2cbd3a9a4113b83ad1c8f7b704f710ba39fd1ecd29b438b41809712e316c6f4fdc92741f7876cc6fca127d78994e604dcc99519),
('basic.sThumbnailsize', 'oxbaseshop', 'theme:basic', 'sThumbnailsize', 'str', 0x07c4b144c7b838),
('basic.sCatThumbnailsize', 'oxbaseshop', 'theme:basic', 'sCatThumbnailsize', 'str', 0x5d43334072bf3f),
('basic.bl_perfShowLeftBasket', 'oxbaseshop', 'theme:basic', 'bl_perfShowLeftBasket', 'bool', ''),
('basic.bl_perfShowRightBasket', 'oxbaseshop', 'theme:basic', 'bl_perfShowRightBasket', 'bool', 0x07),
('basic.bl_perfShowTopBasket', 'oxbaseshop', 'theme:basic', 'bl_perfShowTopBasket', 'bool', 0x07),
('basic.blShowFinalStep', 'oxbaseshop', 'theme:basic', 'blShowFinalStep', 'bool', 0x07),
('basic.bl_showWishlist', 'oxbaseshop', 'theme:basic', 'bl_showWishlist', 'bool', 0x07),
('basic.bl_showVouchers', 'oxbaseshop', 'theme:basic', 'bl_showVouchers', 'bool', 0x07),
('basic.bl_showGiftWrapping', 'oxbaseshop', 'theme:basic', 'bl_showGiftWrapping', 'bool', 0x07),
('basic.bl_showCompareList', 'oxbaseshop', 'theme:basic', 'bl_showCompareList', 'bool', 0x07),
('basic.bl_showListmania', 'oxbaseshop', 'theme:basic', 'bl_showListmania', 'bool', 0x07),
('basic.sIconsize', 'oxbaseshop', 'theme:basic', 'sIconsize', 'str', 0x5d09ae6470),
('basic.iNewBasketItemMessage', 'oxbaseshop', 'theme:basic', 'iNewBasketItemMessage', 'select', ''),
('basic.bl_perfLoadCatTree', 'oxbaseshop', 'theme:basic', 'bl_perfLoadCatTree', 'bool', 0x07),
('basic.blLoadFullTree', 'oxbaseshop', 'theme:basic', 'blLoadFullTree', 'bool', ''),
('basic.bl_perfLoadTreeForSearch', 'oxbaseshop', 'theme:basic', 'bl_perfLoadTreeForSearch', 'bool', 0x07);

INSERT INTO `oxconfigdisplay` (`OXID`, `OXCFGMODULE`, `OXCFGVARNAME`, `OXGROUPING`, `OXVARCONSTRAINT`, `OXPOS`) VALUES
('basic.aDetailImageSizes.1', 'theme:basic', 'aDetailImageSizes', 'images', '', 150),
('basic.aNrofCatArticles.1', 'theme:basic', 'aNrofCatArticles', 'display', '', 380),
('basic.blLoadFullTree.1', 'theme:basic', 'blLoadFullTree', 'navigation', '', 440),
('basic.blShowBirthdayFields.1', 'theme:basic', 'blShowBirthdayFields', 'display', '', 340),
('basic.blShowFinalStep.1', 'theme:basic', 'blShowFinalStep', 'display', '', 360),
('basic.blTopNaviLayout.1', 'theme:basic', 'blTopNaviLayout', 'navigation', '', 430),
('basic.bl_perfLoadCatTree.1', 'theme:basic', 'bl_perfLoadCatTree', 'navigation', '', 410),
('basic.bl_perfLoadTreeForSearch.1', 'theme:basic', 'bl_perfLoadTreeForSearch', 'navigation', '', 420),
('basic.bl_perfShowLeftBasket.1', 'theme:basic', 'bl_perfShowLeftBasket', 'display', '', 310),
('basic.bl_perfShowRightBasket.1', 'theme:basic', 'bl_perfShowRightBasket', 'display', '', 320),
('basic.bl_perfShowTopBasket.1', 'theme:basic', 'bl_perfShowTopBasket', 'display', '', 330),
('basic.bl_showCompareList.1', 'theme:basic', 'bl_showCompareList', 'features', '', 210),
('basic.bl_showGiftWrapping.1', 'theme:basic', 'bl_showGiftWrapping', 'features', '', 250),
('basic.bl_showListmania.1', 'theme:basic', 'bl_showListmania', 'features', '', 220),
('basic.bl_showVouchers.1', 'theme:basic', 'bl_showVouchers', 'features', '', 240),
('basic.bl_showWishlist.1', 'theme:basic', 'bl_showWishlist', 'features', '', 230),
('basic.iNewBasketItemMessage.1', 'theme:basic', 'iNewBasketItemMessage', 'display', '0|1|2|3', 370),
('basic.iTopNaviCatCount.1', 'theme:basic', 'iTopNaviCatCount', 'display', '', 350),
('basic.sCatThumbnailsize.1', 'theme:basic', 'sCatThumbnailsize', 'images', '', 130),
('basic.sIconsize.1', 'theme:basic', 'sIconsize', 'images', '', 110),
('basic.sThumbnailsize.1', 'theme:basic', 'sThumbnailsize', 'images', '', 120),
('basic.sZoomImageSize.1', 'theme:basic', 'sZoomImageSize', 'images', '', 140);
