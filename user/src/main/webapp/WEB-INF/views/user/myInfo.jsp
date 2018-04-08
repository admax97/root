<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<!--[if IE 9]>         <html class="no-js lt-ie10"> <![endif]-->
<!--[if gt IE 9]><!-->
<html style="" class=" js no-touch"><!--<![endif]--><head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<title>我的页面</title>
<meta name="author" content="MMM">
<meta name="robots" content="noindex, nofollow">
<meta name="format-detection" content="telephone=no">

<!-- Icons -->
<!--<link rel="shortcut icon" href="https://mmmoffice.ch/static/Public_Img/favicon.ico">
<link rel="apple-touch-icon" href="https://mmmoffice.ch/static/Public_Img/iOs_57_57.png" sizes="57x57">
<link rel="apple-touch-icon" href="https://mmmoffice.ch/static/Public_Img/iOs_72_72.png" sizes="72x72">
<link rel="apple-touch-icon" href="https://mmmoffice.ch/static/Public_Img/iOs_114_114.png" sizes="114x114">
-->

<!-- Stylesheets -->
<link rel="stylesheet" href="${ctx}/static/css/bootstrap.css">
<link rel="stylesheet" href="${ctx}/static/css/font-ico.css">
<link rel="stylesheet" href="${ctx}/static/css/plugins.css">
<link rel="stylesheet" href="${ctx}/static/css/main.css">
<!-- The themes stylesheet of this template (for using specific theme color in individual elements - must included last) -->
<link rel="stylesheet" href="${ctx}/static/css/themes.css">
<link rel="stylesheet" href="${ctx}/static/css/mmm.css">
<link rel="stylesheet" href="${ctx}/static/css/icon.css">
<!-- END Stylesheets -->
<link rel="stylesheet" href="${ctx}/static/css/datetimepicker.css" type="text/css">
<!-- CSS to style the file input field as button and adjust the Bootstrap progress bars -->

<!-- Modernizr (browser feature detection library) -->
<script src="${ctx}/static/js/modernizr-2.js"></script>
<script src="${ctx}/static/js/jquery-2.js"></script>
<script src="${ctx}/static/js/bootstrap.js"></script>
<script src="${ctx}/static/js/jquery_002.js"></script>
<script src="${ctx}/static/js/bootstrap-datetimepicker.js"></script>
<script src="${ctx}/static/js/ajaxfileupload.js"></script>
<script src="${ctx}/static/js/RSystem.Js"></script>
<script src="${ctx}/static/js/plugins.js"></script>
<script src="${ctx}/static/js/app.js"></script>
<script src="${ctx}/static/js/index.js"></script>
<script src="${ctx}/static/js/jquery.md5.js"></script>

<script src="${ctx}/static/js/jquery.js"></script>
<style type="text/css">.jqstooltip { width: auto !important; height: auto !important; position: absolute;left: 0px;top: 0px;visibility: hidden;background: #000000;color: white;font-size: 11px;text-align: left;white-space: nowrap;padding: 5px;z-index: 10000;}.jqsfield { color: white;font: 10px arial, san serif;text-align: left;}</style><style class="firebugResetStyles" type="text/css" charset="utf-8">/* See license.txt for terms of usage */
/** reset styling **/
.firebugResetStyles {
    z-index: 2147483646 !important;
    top: 0 !important;
    left: 0 !important;
    display: block !important;
    border: 0 none !important;
    margin: 0 !important;
    padding: 0 !important;
    outline: 0 !important;
    min-width: 0 !important;
    max-width: none !important;
    min-height: 0 !important;
    max-height: none !important;
    position: fixed !important;
    transform: rotate(0deg) !important;
    transform-origin: 50% 50% !important;
    border-radius: 0 !important;
    box-shadow: none !important;
    background: transparent none !important;
    pointer-events: none !important;
    white-space: normal !important;
}
style.firebugResetStyles {
    display: none !important;
}

.firebugBlockBackgroundColor {
    background-color: transparent !important;
}

.firebugResetStyles:before, .firebugResetStyles:after {
    content: "" !important;
}
/**actual styling to be modified by firebug theme**/
.firebugCanvas {
    display: none !important;
}

/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */
.firebugLayoutBox {
    width: auto !important;
    position: static !important;
}

.firebugLayoutBoxOffset {
    opacity: 0.8 !important;
    position: fixed !important;
}

.firebugLayoutLine {
    opacity: 0.4 !important;
    background-color: #000000 !important;
}

.firebugLayoutLineLeft, .firebugLayoutLineRight {
    width: 1px !important;
    height: 100% !important;
}

.firebugLayoutLineTop, .firebugLayoutLineBottom {
    width: 100% !important;
    height: 1px !important;
}

.firebugLayoutLineTop {
    margin-top: -1px !important;
    border-top: 1px solid #999999 !important;
}

.firebugLayoutLineRight {
    border-right: 1px solid #999999 !important;
}

.firebugLayoutLineBottom {
    border-bottom: 1px solid #999999 !important;
}

.firebugLayoutLineLeft {
    margin-left: -1px !important;
    border-left: 1px solid #999999 !important;
}

/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */
.firebugLayoutBoxParent {
    border-top: 0 none !important;
    border-right: 1px dashed #E00 !important;
    border-bottom: 1px dashed #E00 !important;
    border-left: 0 none !important;
    position: fixed !important;
    width: auto !important;
}

.firebugRuler{
    position: absolute !important;
}

.firebugRulerH {
    top: -15px !important;
    left: 0 !important;
    width: 100% !important;
    height: 14px !important;
    background: url("data:image/png,%89PNG%0D%0A%1A%0A%00%00%00%0DIHDR%00%00%13%88%00%00%00%0E%08%02%00%00%00L%25a%0A%00%00%00%04gAMA%00%00%D6%D8%D4OX2%00%00%00%19tEXtSoftware%00Adobe%20ImageReadyq%C9e%3C%00%00%04%F8IDATx%DA%EC%DD%D1n%E2%3A%00E%D1%80%F8%FF%EF%E2%AF2%95%D0D4%0E%C1%14%B0%8Fa-%E9%3E%CC%9C%87n%B9%81%A6W0%1C%A6i%9A%E7y%0As8%1CT%A9R%A5J%95*U%AAT%A9R%A5J%95*U%AAT%A9R%A5J%95*U%AAT%A9R%A5J%95*U%AAT%A9R%A5J%95*U%AAT%A9R%A5J%95*U%AAT%A9R%A5J%95*U%AATE9%FE%FCw%3E%9F%AF%2B%2F%BA%97%FDT%1D~K(%5C%9D%D5%EA%1B%5C%86%B5%A9%BDU%B5y%80%ED%AB*%03%FAV9%AB%E1%CEj%E7%82%EF%FB%18%BC%AEJ8%AB%FA'%D2%BEU9%D7U%ECc0%E1%A2r%5DynwVi%CFW%7F%BB%17%7Dy%EACU%CD%0E%F0%FA%3BX%FEbV%FEM%9B%2B%AD%BE%AA%E5%95v%AB%AA%E3E5%DCu%15rV9%07%B5%7F%B5w%FCm%BA%BE%AA%FBY%3D%14%F0%EE%C7%60%0EU%AAT%A9R%A5J%95*U%AAT%A9R%A5J%95*U%AAT%A9R%A5J%95*U%AAT%A9R%A5J%95*U%AAT%A9R%A5JU%88%D3%F5%1F%AE%DF%3B%1B%F2%3E%DAUCNa%F92%D02%AC%7Dm%F9%3A%D4%F2%8B6%AE*%BF%5C%C2Ym~9g5%D0Y%95%17%7C%C8c%B0%7C%18%26%9CU%CD%13i%F7%AA%90%B3Z%7D%95%B4%C7%60%E6E%B5%BC%05%B4%FBY%95U%9E%DB%FD%1C%FC%E0%9F%83%7F%BE%17%7DkjMU%E3%03%AC%7CWj%DF%83%9An%BCG%AE%F1%95%96yQ%0Dq%5Dy%00%3Et%B5'%FC6%5DS%95pV%95%01%81%FF'%07%00%00%00%00%00%00%00%00%00%F8x%C7%F0%BE%9COp%5D%C9%7C%AD%E7%E6%EBV%FB%1E%E0(%07%E5%AC%C6%3A%ABi%9C%8F%C6%0E9%AB%C0'%D2%8E%9F%F99%D0E%B5%99%14%F5%0D%CD%7F%24%C6%DEH%B8%E9rV%DFs%DB%D0%F7%00k%FE%1D%84%84%83J%B8%E3%BA%FB%EF%20%84%1C%D7%AD%B0%8E%D7U%C8Y%05%1E%D4t%EF%AD%95Q%BF8w%BF%E9%0A%BF%EB%03%00%00%00%00%00%00%00%00%00%B8vJ%8E%BB%F5%B1u%8Cx%80%E1o%5E%CA9%AB%CB%CB%8E%03%DF%1D%B7T%25%9C%D5(%EFJM8%AB%CC'%D2%B2*%A4s%E7c6%FB%3E%FA%A2%1E%80~%0E%3E%DA%10x%5D%95Uig%15u%15%ED%7C%14%B6%87%A1%3B%FCo8%A8%D8o%D3%ADO%01%EDx%83%1A~%1B%9FpP%A3%DC%C6'%9C%95gK%00%00%00%00%00%00%00%00%00%20%D9%C9%11%D0%C0%40%AF%3F%EE%EE%92%94%D6%16X%B5%BCMH%15%2F%BF%D4%A7%C87%F1%8E%F2%81%AE%AAvzr%DA2%ABV%17%7C%E63%83%E7I%DC%C6%0Bs%1B%EF6%1E%00%00%00%00%00%00%00%00%00%80cr%9CW%FF%7F%C6%01%0E%F1%CE%A5%84%B3%CA%BC%E0%CB%AA%84%CE%F9%BF)%EC%13%08WU%AE%AB%B1%AE%2BO%EC%8E%CBYe%FE%8CN%ABr%5Dy%60~%CFA%0D%F4%AE%D4%BE%C75%CA%EDVB%EA(%B7%F1%09g%E5%D9%12%00%00%00%00%00%00%00%00%00H%F6%EB%13S%E7y%5E%5E%FB%98%F0%22%D1%B2'%A7%F0%92%B1%BC%24z3%AC%7Dm%60%D5%92%B4%7CEUO%5E%F0%AA*%3BU%B9%AE%3E%A0j%94%07%A0%C7%A0%AB%FD%B5%3F%A0%F7%03T%3Dy%D7%F7%D6%D4%C0%AAU%D2%E6%DFt%3F%A8%CC%AA%F2%86%B9%D7%F5%1F%18%E6%01%F8%CC%D5%9E%F0%F3z%88%AA%90%EF%20%00%00%00%00%00%00%00%00%00%C0%A6%D3%EA%CFi%AFb%2C%7BB%0A%2B%C3%1A%D7%06V%D5%07%A8r%5D%3D%D9%A6%CAu%F5%25%CF%A2%99%97zNX%60%95%AB%5DUZ%D5%FBR%03%AB%1C%D4k%9F%3F%BB%5C%FF%81a%AE%AB'%7F%F3%EA%FE%F3z%94%AA%D8%DF%5B%01%00%00%00%00%00%00%00%00%00%8E%FB%F3%F2%B1%1B%8DWU%AAT%A9R%A5J%95*U%AAT%A9R%A5J%95*U%AAT%A9R%A5J%95*U%AAT%A9R%A5J%95*U%AAT%A9R%A5J%95*U%AAT%A9R%A5J%95*U%AAT%A9R%A5J%95*UiU%C7%BBe%E7%F3%B9%CB%AAJ%95*U%AAT%A9R%A5J%95*U%AAT%A9R%A5J%95*U%AAT%A9R%A5J%95*U%AAT%A9R%A5J%95*U%AAT%A9R%A5J%95*U%AAT%A9R%A5J%95*U%AAT%A9R%A5*%AAj%FD%C6%D4%5Eo%90%B5Z%ADV%AB%D5j%B5Z%ADV%AB%D5j%B5Z%ADV%AB%D5j%B5Z%ADV%AB%D5j%B5Z%ADV%AB%D5j%B5Z%ADV%AB%D5j%B5Z%ADV%AB%D5j%B5%86%AF%1B%9F%98%DA%EBm%BBV%AB%D5j%B5Z%ADV%AB%D5j%B5Z%ADV%AB%D5j%B5Z%ADV%AB%D5j%B5Z%ADV%AB%D5j%B5Z%ADV%AB%D5j%B5Z%ADV%AB%D5j%B5Z%AD%D6%E4%F58%01%00%00%00%00%00%00%00%00%00%00%00%00%00%40%85%7F%02%0C%008%C2%D0H%16j%8FX%00%00%00%00IEND%AEB%60%82") repeat-x !important;
    border-top: 1px solid #BBBBBB !important;
    border-right: 1px dashed #BBBBBB !important;
    border-bottom: 1px solid #000000 !important;
}

.firebugRulerV {
    top: 0 !important;
    left: -15px !important;
    width: 14px !important;
    height: 100% !important;
    background: url("data:image/png,%89PNG%0D%0A%1A%0A%00%00%00%0DIHDR%00%00%00%0E%00%00%13%88%08%02%00%00%00%0E%F5%CB%10%00%00%00%04gAMA%00%00%D6%D8%D4OX2%00%00%00%19tEXtSoftware%00Adobe%20ImageReadyq%C9e%3C%00%00%06~IDATx%DA%EC%DD%D1v%A20%14%40Qt%F1%FF%FF%E4%97%D9%07%3BT%19%92%DC%40(%90%EEy%9A5%CB%B6%E8%F6%9Ac%A4%CC0%84%FF%DC%9E%CF%E7%E3%F1%88%DE4%F8%5D%C7%9F%2F%BA%DD%5E%7FI%7D%F18%DDn%BA%C5%FB%DF%97%BFk%F2%10%FF%FD%B4%F2M%A7%FB%FD%FD%B3%22%07p%8F%3F%AE%E3%F4S%8A%8F%40%EEq%9D%BE8D%F0%0EY%A1Uq%B7%EA%1F%81%88V%E8X%3F%B4%CEy%B7h%D1%A2E%EBohU%FC%D9%AF2fO%8BBeD%BE%F7X%0C%97%A4%D6b7%2Ck%A5%12%E3%9B%60v%B7r%C7%1AI%8C%BD%2B%23r%00c0%B2v%9B%AD%CA%26%0C%1Ek%05A%FD%93%D0%2B%A1u%8B%16-%95q%5Ce%DCSO%8E%E4M%23%8B%F7%C2%FE%40%BB%BD%8C%FC%8A%B5V%EBu%40%F9%3B%A72%FA%AE%8C%D4%01%CC%B5%DA%13%9CB%AB%E2I%18%24%B0n%A9%0CZ*Ce%9C%A22%8E%D8NJ%1E%EB%FF%8F%AE%CAP%19*%C3%BAEKe%AC%D1%AAX%8C*%DEH%8F%C5W%A1e%AD%D4%B7%5C%5B%19%C5%DB%0D%EF%9F%19%1D%7B%5E%86%BD%0C%95%A12%AC%5B*%83%96%CAP%19%F62T%86%CAP%19*%83%96%CA%B8Xe%BC%FE)T%19%A1%17xg%7F%DA%CBP%19*%C3%BA%A52T%86%CAP%19%F62T%86%CA%B0n%A9%0CZ%1DV%C6%3D%F3%FCH%DE%B4%B8~%7F%5CZc%F1%D6%1F%AF%84%F9%0F6%E6%EBVt9%0E~%BEr%AF%23%B0%97%A12T%86%CAP%19%B4T%86%CA%B8Re%D8%CBP%19*%C3%BA%A52huX%19%AE%CA%E5%BC%0C%7B%19*CeX%B7h%A9%0C%95%E1%BC%0C%7B%19*CeX%B7T%06%AD%CB%5E%95%2B%BF.%8F%C5%97%D5%E4%7B%EE%82%D6%FB%CF-%9C%FD%B9%CF%3By%7B%19%F62T%86%CA%B0n%D1R%19*%A3%D3%CA%B0%97%A12T%86uKe%D0%EA%B02*%3F1%99%5DB%2B%A4%B5%F8%3A%7C%BA%2B%8Co%7D%5C%EDe%A8%0C%95a%DDR%19%B4T%C66%82fA%B2%ED%DA%9FC%FC%17GZ%06%C9%E1%B3%E5%2C%1A%9FoiB%EB%96%CA%A0%D5qe4%7B%7D%FD%85%F7%5B%ED_%E0s%07%F0k%951%ECr%0D%B5C%D7-g%D1%A8%0C%EB%96%CA%A0%A52T%C6)*%C3%5E%86%CAP%19%D6-%95A%EB*%95q%F8%BB%E3%F9%AB%F6%E21%ACZ%B7%22%B7%9B%3F%02%85%CB%A2%5B%B7%BA%5E%B7%9C%97%E1%BC%0C%EB%16-%95%A12z%AC%0C%BFc%A22T%86uKe%D0%EA%B02V%DD%AD%8A%2B%8CWhe%5E%AF%CF%F5%3B%26%CE%CBh%5C%19%CE%CB%B0%F3%A4%095%A1%CAP%19*Ce%A8%0C%3BO*Ce%A8%0C%95%A12%3A%AD%8C%0A%82%7B%F0v%1F%2FD%A9%5B%9F%EE%EA%26%AF%03%CA%DF9%7B%19*Ce%A8%0C%95%A12T%86%CA%B8Ze%D8%CBP%19*Ce%A8%0C%95%D1ae%EC%F7%89I%E1%B4%D7M%D7P%8BjU%5C%BB%3E%F2%20%D8%CBP%19*Ce%A8%0C%95%A12T%C6%D5*%C3%5E%86%CAP%19*Ce%B4O%07%7B%F0W%7Bw%1C%7C%1A%8C%B3%3B%D1%EE%AA%5C%D6-%EBV%83%80%5E%D0%CA%10%5CU%2BD%E07YU%86%CAP%19*%E3%9A%95%91%D9%A0%C8%AD%5B%EDv%9E%82%FFKOee%E4%8FUe%A8%0C%95%A12T%C6%1F%A9%8C%C8%3D%5B%A5%15%FD%14%22r%E7B%9F%17l%F8%BF%ED%EAf%2B%7F%CF%ECe%D8%CBP%19*Ce%A8%0C%95%E1%93~%7B%19%F62T%86%CAP%19*Ce%A8%0C%E7%13%DA%CBP%19*Ce%A8%0CZf%8B%16-Z%B4h%D1R%19f%8B%16-Z%B4h%D1R%19%B4%CC%16-Z%B4h%D1R%19%B4%CC%16-Z%B4h%D1%A2%A52%CC%16-Z%B4h%D1%A2%A52h%99-Z%B4h%D1%A2%A52h%99-Z%B4h%D1%A2EKe%98-Z%B4h%D1%A2EKe%D02%5B%B4h%D1%A2EKe%D02%5B%B4h%D1%A2E%8B%96%CA0%5B%B4h%D1%A2E%8B%96%CA%A0e%B6h%D1%A2E%8B%96%CA%A0e%B6h%D1%A2E%8B%16-%95a%B6h%D1%A2E%8B%16-%95A%CBl%D1%A2E%8B%16-%95A%CBl%D1%A2E%8B%16-Z*%C3l%D1%A2E%8B%16-Z*%83%96%D9%A2E%8B%16-Z*%83%96%D9%A2E%8B%16-Z%B4T%86%D9%A2E%8B%16-Z%B4T%06-%B3E%8B%16-Z%B4T%06-%B3E%8B%16-Z%B4h%A9%0C%B3E%8B%16-Z%B4h%A9%0CZf%8B%16-Z%B4h%A9%0CZf%8B%16-Z%B4h%D1R%19f%8B%16-Z%B4h%D1R%19%B4%CC%16-Z%B4h%D1R%19%B4%CC%16-Z%B4h%D1%A2%A52%CC%16-Z%B4h%D1%A2%A52h%99-Z%B4h%D1%A2%A52h%99-Z%B4h%D1%A2EKe%98-Z%B4h%D1%A2EKe%D02%5B%B4h%D1%A2EKe%D02%5B%B4h%D1%A2E%8B%96%CA0%5B%B4h%D1%A2E%8B%96%CA%A0e%B6h%D1%A2E%8B%96%CA%A0e%B6h%D1%A2E%8B%16-%95a%B6h%D1%A2E%8B%16-%95A%CBl%D1%A2E%8B%16-%95A%CBl%D1%A2E%8B%16-Z*%C3l%D1%A2E%8B%16-Z*%83%96%D9%A2E%8B%16-Z*%83%96%D9%A2E%8B%16-Z%B4T%86%D9%A2E%8B%16-Z%B4T%06-%B3E%8B%16-Z%B4T%06-%B3E%8B%16-Z%B4h%A9%0C%B3E%8B%16-Z%B4h%A9%0CZf%8B%16-Z%B4h%A9%0CZf%8B%16-Z%B4h%D1R%19f%8B%16-Z%B4h%D1R%19%B4%CC%16-Z%B4h%D1R%19%B4%CC%16-Z%B4h%D1%A2%A52%CC%16-Z%B4h%D1%A2%A52h%99-Z%B4h%D1%A2%A52h%99-Z%B4h%D1%A2EKe%98-Z%B4h%D1%A2EKe%D02%5B%B4h%D1%A2EKe%D02%5B%B4h%D1%A2E%8B%96%CA0%5B%B4h%D1%A2E%8B%96%CA%A0e%B6h%D1%A2E%8B%96%CA%A0e%B6h%D1%A2E%8B%16-%95a%B6h%D1%A2E%8B%16-%95A%CBl%D1%A2E%8B%16-%95A%CBl%D1%A2E%8B%16-Z*%C3l%D1%A2E%8B%16-Z*%83%96%D9%A2E%8B%16-Z*%83%96%D9%A2E%8B%16-Z%B4T%86%D9%A2E%8B%16-Z%B4T%06-%B3E%8B%16-Z%B4%AE%A4%F5%25%C0%00%DE%BF%5C'%0F%DA%B8q%00%00%00%00IEND%AEB%60%82") repeat-y !important;
    border-left: 1px solid #BBBBBB !important;
    border-right: 1px solid #000000 !important;
    border-bottom: 1px dashed #BBBBBB !important;
}

.overflowRulerX > .firebugRulerV {
    left: 0 !important;
}

.overflowRulerY > .firebugRulerH {
    top: 0 !important;
}

/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */
.fbProxyElement {
    position: fixed !important;
    pointer-events: auto !important;
}
</style></head>
<body>
<div id="page-wrapper" class=""> 
	<!-- 页面加载部分开始 -->
	<div class="preloader">
		<div class="inner"> 
			<div class="preloader-spinner themed-background hidden-lt-ie10"></div>
			<!-- Text for IE9 -->
			<h3 class="text-primary visible-lt-ie10"><strong><i class="fa fa-rsystem"></i> Loading..</strong></h3>
		</div>
	</div>
	<!-- 页面加载部分结束 -->
	
	<!-- 页面主体框架开始 -->
	<div id="page-container" class="header-fixed-top"> 
		<!-- 页面右侧整体开始 -->
		<div id="main-container">
			<!-- 页面右侧头部开始 -->
			<jsp:include page="/WEB-INF/views/layout/header.jsp"></jsp:include>
			<!-- 页面右侧头部结束 -->
			
			<!-- 页面右侧内容开始 -->
			<div style="min-height: 749px;" id="page-content"> 
				<!-- 页面主体内容开始 -->
				<div class="row" id="Main-Box">    <div class="col-lg-12">
        <div class="block">
			<div class="block-title">我的页面</div>
            <div class="form-bordered">
				<div style="min-height: 617px;" class="table-responsive form-group" id="JS-Set-H">
					<div class="dataTables_wrapper form-inline no-footer">
						<table class="table table-hover table-bordered table-vcenter dataTable no-footer">
							<thead>
								<tr>
									<th colspan="2">基本资料</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td width="30%">姓名</td>
									<td><span style="margin-right:30px;">${myInfo.name}</span> <a href="javascript:;" class="btn btn-xs btn-primary" onclick="updateName('${myInfo.name}');">修改</a></td>
								</tr>
								<tr>
									<td>状态</td>
									<td id="U_Status">
										<c:if test="${myInfo.status=='0'}"><span class="label label-success" style="font-size: 14px;">活跃</span></c:if>
										<c:if test="${myInfo.status=='1'}"><span class="label label-warning" style="font-size: 14px;">冻结</span></c:if>
										<c:if test="${myInfo.status=='-1'}"><span class="label label-danger" style="font-size: 14px;">警告</span></c:if>

									</td>
								</tr>
								<tr>
									<td>邮箱</td>
									<td><span id="U_Mail" style="margin-right:30px;">${myInfo.email}</span> <a href="javascript:;" class="btn btn-xs btn-primary" onclick="updateEmail('${myInfo.email}');">修改</a></td>
								</tr>
								<tr>
									<td>手机号</td>
									<td>${myInfo.mobile}</td>
								</tr>
								<%--<tr>
									<td>国家</td>
									<td>${myInfo.country}</td>
								</tr>--%>
								<tr>
									<td>注册日期</td>
									<td>${myInfo.regDate}</td>
								</tr>
								<tr>
									<td>微信</td>
									<td><span id="U_We" style="margin-right:30px;">${myInfo.weiXin}</span> <a href="javascript:;" class="btn btn-xs btn-primary" onclick="updateWeiXin('${myInfo.weiXin}');">修改</a></td>
								</tr>
							</tbody>
                		</table>
						<table class="table table-hover table-bordered table-vcenter dataTable no-footer">
							<thead>
								<tr>
									<th colspan="2">你的领导人</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td width="30%">姓名</td>
									<td>
										<span id="R_Name" style="margin-right:30px;">${myInfo.leaderName}</span>
										<a style="display: none;" href="javascript:;" class="btn btn-xs btn-primary" id="R_Change_Btn" onclick="$('#Edit_Box').modal();">申请变更领导人</a>
									</td>
								</tr>
								<tr>
									<td>邮箱</td>
									<td id="R_Mail">${myInfo.leaderEmail}</td>
								</tr>
								<tr>
									<td>手机号</td>
									<td id="R_Phone">${myInfo.leaderMobile}</td>
								</tr>
								<tr>
									<td>微信</td>
									<td id="R_We">${myInfo.leaderWeiXin}</td>
								</tr>
							</tbody>
                		</table>
					</div>
				</div>
				<div class="form-group form-actions" style="padding:5px !important;">
					<button type="button" class="btn btn-danger" style="float:right;" onclick="Show_Pass();"><i class="fa fa-user"></i> 修改密码</button>
					<button type="button" class="btn btn-primary" onclick="window.refresh();"><i class="fa fa-refresh"></i> 刷新数据</button>
				</div>
            </div>
        </div>
    </div>
    
    <div class="modal fade in" id="Edit_Box" tabindex="-1" role="dialog" aria-hidden="false">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    <h4 class="modal-title">申请领导人</h4>
                </div>
                <div class="modal-body" style="z-index:1060;">
                    <div class="form-horizontal">
                        <div class="form-group">
                            <label class="col-lg-3 control-label">新领导人邮件或电话</label>
                            <div class="col-lg-9"><input class="form-control" data-t="list_val" data-vt="0" data-id="r_id" type="text"></div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-3 control-label">申请变更的理由</label>
                            <div class="col-lg-9"><input class="form-control" data-t="list_val" data-vt="0" data-id="reason" type="text"></div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
					<button data-dismiss="modal" class="btn btn-danger pull-left" type="button"><i class="fa fa-times-circle"></i> 取消</button>
                    <button data-dismiss="modal" class="btn btn-success" type="button" onclick="List_Save();"><i class="fa fa-floppy-o"></i> 确定申请</button>
                </div>
            </div>
        </div>
    </div>
	
	<div class="modal fade in" id="Edit_Pass" tabindex="-1" role="dialog" aria-hidden="false">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    <h4 class="modal-title">修改密码</h4>
                </div>
                <div class="modal-body" style="z-index:1060;">
                    <div class="form-horizontal">
                        <div class="form-group">
							<label class="col-sm-3 control-label">当前密码</label>
							<div class="col-sm-9"><input class="form-control" id="Pass_1" type="password"></div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label">新的密码</label>
							<div class="col-sm-9"><input class="form-control" id="Pass_2" type="password"></div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label">确认密码</label>
							<div class="col-sm-9"><input class="form-control" id="Pass_3" type="password"></div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label">验证码</label>
							<div class="col-sm-5"><input class="form-control" id="Captcha" type="text"></div>
							<div class="col-sm-4"><img src=""  class="form-control" id="Captcha_Img" style="width:146px; padding:2px; float:left; cursor:pointer;" onclick="Refresh_Captcha()"></div>
						</div>
                    </div>
                </div>
                <div class="modal-footer">
					<button data-dismiss="modal" class="btn btn-danger pull-left" type="button"><i class="fa fa-times-circle"></i> 取消</button>
                    <button data-dismiss="modal" class="btn btn-success" type="button" onclick="POST_Data(5);"><i class="fa fa-floppy-o"></i> 修改密码</button>
                </div>
            </div>
        </div>
    </div>

	<script type="text/javascript">
		var Set_Data = '';
		var Set_We = '';
		var Set_Name = '';
		//Get_Status_Str();
		var U_Status = ${sessionScope.pjtUser.status};
			//var Status_Abnormal_1 ="您的账户已经被警告!";
		var Status_Abnormal_1 ="您的账户已经被冻结,您只能使用反馈功能进行解冻!";
		if (U_Status == '1') {
			alert(Status_Abnormal_1);
		} 
		//
		var Allow_R_Change = '0';
		//
		
		//if(Allow_R_Change!='1'){$('#R_Change_Btn').hide();}
		
		function Empty_Val(){
			$('#Pass_1').val('');
			$('#Pass_2').val('');
			$('#Pass_3').val('');
			$('#Captcha').val('');
		}
		
		function Refresh_Captcha(){
			$("#Captcha_Img").attr("src","${ctx}/randomImage/number/?n="+Get_Random(9));
			$('#Captcha').val('');
		}
		
		//POST_Data(2);
		
		function Get_Status_Str(){
//			if($('#U_Status').html()=='0'){
//				$('#U_Status').html('<span class="label label-success" style="font-size: 14px;">活跃</span>');
//			}else if($('#U_Status').html()=='1'){
//				$('#U_Status').html('<span class="label label-warning" style="font-size: 14px;">警告</span>');
//			}else if($('#U_Status').html()=='-1'){
//				$('#U_Status').html('<span class="label label-danger" style="font-size: 14px;">冻结</span>');
//			}
		}
		
		function Show_Pass(){
			if(U_Status =='1'){alert(Status_Abnormal_1);return;} 
			$('#Edit_Pass').modal();
			Refresh_Captcha();
		}
		
		function Edit_We(){
			Set_We = prompt("请输入您的微信号码","");
			if(Set_We){
				POST_Data(1);
			}
		}
		function Edit_Name(){

		}
		function updateName(str){
			if(U_Status =='1'){alert(Status_Abnormal_1);return false;} 
			Set_Name = prompt("请输入您的新名称",str);
			if(Set_Name){
				$.ajax({
					type : "POST",
					url : "${ctx}/user/update",
					data : {
						key : "name",
						value : Set_Name,
					},
					async : false,
					dataType : "json",
					success : function(result) {
						alert(result.message);
						window.location.href='${ctx}/user/myinfo';
					},
					error: function(jqXHR, textStatus, errorThrown){
						var info=jqXHR.responseText.trim().split("#");
						if(info[0]=="AJAXSESSIONERROR"){
							alert("登录超时，请重新修改！");
						}
					}
				});
			}
		}
		function updateEmail(str){
			if(U_Status =='1'){alert(Status_Abnormal_1);return;} 
			Set_Name = prompt("请输入您的新邮箱",str);
			if(Set_Name){
				$.ajax({
					type : "POST",
					url : "${ctx}/user/update",
					data : {
						key : "email",
						value : Set_Name,
					},
					async : false,
					dataType : "json",
					success : function(result) {
						alert(result.message);
						window.location.href='${ctx}/user/myinfo';
					},
					error: function(jqXHR, textStatus, errorThrown){
						var info=jqXHR.responseText.trim().split("#");
						if(info[0]=="AJAXSESSIONERROR"){
							alert("登录超时，请重新修改！");
						}
					}
				});
			}
		}
		function updateWeiXin(str){
			if(U_Status =='1'){alert(Status_Abnormal_1);return;} 
			Set_Name = prompt("请输入您的微信号",str);
			if(Set_Name){
				$.ajax({
					type : "POST",
					url : "${ctx}/user/update",
					data : {
						key : "weixin",
						value : Set_Name,
					},
					async : false,
					dataType : "json",
					success : function(result) {
						alert(result.message);
						window.location.href='${ctx}/user/myinfo';
					},
					error: function(jqXHR, textStatus, errorThrown){
						var info=jqXHR.responseText.trim().split("#");
						if(info[0]=="AJAXSESSIONERROR"){
							alert("登录超时，请重新修改！");
						}
					}
				});
			}
		}

		function Edit_Mail(){
			Set_Name = prompt("请输入您的新邮箱","baoluliuyuhang@163.com");
			if(Set_Name){
				POST_Data(6);
			}
		}
		
		function List_Save(){
			if(Auto_Test_Val('list_val')==true){
				Set_Data = Auto_Get_Val('list_val');
				POST_Data(3);
			}
		}
		
		function POST_Data(Type){
			
			/* if(Type==1)
			{Ajax_POST('https://mmmoffice.ch/?m=ajax&ajax_header=user&ajax_class=my_data&ajax_type=edit_we','we='+Set_We,'xml',Post_Success,Post_Error);}
			if(Type==2)
			{Ajax_POST('https://mmmoffice.ch/?m=ajax&ajax_header=user&ajax_class=my_data&ajax_type=r_data','','xml',Post_Success,Post_Error);}
			if(Type==3)
			{Ajax_POST('https://mmmoffice.ch/?m=ajax&ajax_header=user&ajax_class=my_data&ajax_type=r_change',Set_Data,'xml',Post_Success,Post_Error);}
			if(Type==4)
			{Ajax_POST('https://mmmoffice.ch/?m=ajax&ajax_header=user&ajax_class=my_data&ajax_type=edit_name','name='+Set_Name,'xml',Post_Success,Post_Error);} */
			if(Type==5){
				if($('#Pass_1').val()==''){alert('当前密码不能为空,请您正确输入!');return;}
				else if($('#Pass_1').val()==$('#Pass_2').val()){alert('新密码不能与当前密码一样,请您重新输入!');return;}
				else if($('#Pass_2').val()!=$('#Pass_3').val()){alert('您两次输入的新密码不一致,请您重新输入!');return;}
				else if($('#Pass_2').val()==''){alert('新密码不能为空,请您正确输入!');return false;}
				else if($('#Captcha').val()=='' || $('#Captcha').val().length != 5){alert('请输入正确的验证码!');return;
				}else{
					var Data = '&pass='+$.md5($('#Pass_1').val())+'&new_pass='+$.md5($('#Pass_2').val())+'&captcha='+$('#Captcha').val();
					Ajax_POST('${ctx}/user/changePass/?m=ajax&ajax_header=user&ajax_class=basis&ajax_type=edit_password',Data,'xml',Post_Success,Post_Error);
				}
			}
			//if(Type==6){Ajax_POST('https://mmmoffice.ch/?m=ajax&ajax_header=user&ajax_class=my_data&ajax_type=edit_mail','mail='+Set_Name,'xml',Post_Success,Post_Error);}
		}
		function Post_Success(Xml){
			if($(Xml).find("ajax_status").text()<0){
				if($(Xml).find("ajax_type").text()=='r_data'){
					$('#R_Name').html('MMM-GLOBAL-NEW-CHINA Admin');
					$('#R_Mail').html('MMM-GLOBAL-CHINA@mmmpost.com');
					$('#R_Phone').html('MMM-GLOBAL-CHINA@mmmpost.com');
					$('#R_We').html('MMM-GLOBAL-NEW-CHINA');
				}else{
					Show_Prompt_Box(3,$(Xml).find("ajax_notice").text());
					Refresh_Captcha();
				}
			}else if($(Xml).find("ajax_header").text()=='user' && $(Xml).find("ajax_class").text()=='my_data'){
				if($(Xml).find("ajax_type").text()=='edit_name'){
					$('#U_Name').html(Set_Name);
				}else if($(Xml).find("ajax_type").text()=='edit_we'){
					$('#U_We').html(Set_We);
				}else if($(Xml).find("ajax_type").text()=='edit_mail'){
					$('#U_Mail').html(Set_Name);
				}else if($(Xml).find("ajax_type").text()=='r_data'){
					$('#R_Name').html($(Xml).find("name").text());
					$('#R_Mail').html($(Xml).find("mail").text());
					$('#R_Phone').html($(Xml).find("phone").text());
					$('#R_We').html($(Xml).find("we").text());
				}else if($(Xml).find("ajax_type").text()=='r_change'){
					Show_Prompt_Box(1,$(Xml).find("ajax_notice").text());
				}
			}else if($(Xml).find("ajax_header").text()=='user' && $(Xml).find("ajax_class").text()=='basis'){
				if($(Xml).find("ajax_type").text()=='edit_password'){
					Show_Prompt_Box(1,$(Xml).find("ajax_notice").text());
					Empty_Val();
					Refresh_Captcha();
				}
			}
		}
    </script><!--Write_Html : False [user/my]-->
</div>
				<!-- 页面主体内容结束 -->
			</div>
			<!-- 页面右侧内容结束 -->
		</div>
		<!-- 页面右侧整体结束 -->
	</div>
</div>

<div class="modal fade" id="Prompt_Box" tabindex="-1" role="dialog" aria-hidden="true" style="z-index:999999;">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title" id="Prompt_Box_Title">提示标题</h4>
            </div>
            <div class="modal-body" id="Prompt_Box_Content">提示内容</div>
            <div class="modal-footer">
                <button data-dismiss="modal" class="btn btn-primary" type="button" id="Prompt_Box_Button">确定</button>
            </div>
        </div>
    </div>
</div>

<!-- <div class="modal fade" id="One_Photo_Box" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title">上传文件</h4>
            </div>
            <div class="modal-body">
				<div style="display:none;" id="One_Photo_Text">正在为您保存文件,请不要进行任何操作.</div>
				<div class="form-horizontal">
					<div class="form-group">
						<label class="col-lg-2 control-label">本地文件</label>
						<div class="col-lg-10">
							<div class="input-group">
								<input class="form-control" id="One_Photo_Up_Val" name="One_Photo_Up_Val" accept="image/jpg,image/jpeg,image/png,image/pjpeg,image/gif,image/bmp,image/x-png" type="file">
								<span class="input-group-btn">
									<button style="overflow: hidden; position: relative;" class="btn btn-effect-ripple btn-primary" type="button" onclick="Up_One_Photo();"><i class="fa fa-cloud-upload"></i> 上传文件</button>
								</span>
							</div>
						</div>
					</div>
				</div>
			</div>
            <div class="modal-footer">
                <button data-dismiss="modal" class="btn btn-danger" type="button"><i class="fa fa-times-circle"></i> 取消</button>
            </div>
        </div>
    </div>
</div> -->
<!-- <div class="modal fade" id="Set_Page_Max_Box" tabindex="-1" role="dialog" aria-hidden="true" style="z-index:999999;">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title">请选择每页最大显示数量</h4>
            </div>
            <div class="modal-body form-horizontal form-bordered">
				<div class="form-group">
					<label class="col-md-3 control-label">每页显示</label>
					<div class="col-md-6">
						<select class="form-control" id="Set_Page_Max_Select" onchange="Set_Page_Tag();">
							<option value="5" onclick="Set_Page_Max(5);">每页  5条</option>
							<option selected="selected" value="10" onclick="Set_Page_Max(10);">每页  10条</option>
							<option value="15" onclick="Set_Page_Max(15);">每页  15条</option>
							<option value="20" onclick="Set_Page_Max(20);">每页  20条</option>
							<option value="30" onclick="Set_Page_Max(30);">每页  30条</option>
							<option value="40" onclick="Set_Page_Max(40);">每页  40条</option>
							<option value="50" onclick="Set_Page_Max(50);">每页  50条</option>
							<option value="60" onclick="Set_Page_Max(60);">每页  60条</option>
							<option value="70" onclick="Set_Page_Max(70);">每页  70条</option>
							<option value="80" onclick="Set_Page_Max(80);">每页  80条</option>
							<option value="90" onclick="Set_Page_Max(90);">每页  90条</option>
							<option value="100" onclick="Set_Page_Max(100);">每页 100条</option>
						</select>
					</div>
				</div>
			</div>
            <div class="modal-footer">
                <button data-dismiss="modal" class="btn btn-primary" type="button">确定</button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="Go_Page_Box" tabindex="-1" role="dialog" aria-hidden="true" style="z-index:999999;">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title">请选择需要查看的页数</h4>
            </div>
            <div class="modal-body form-horizontal form-bordered">
				<div class="form-group">
					<label class="col-md-3 control-label">选择页数</label>
					<div class="col-md-6">
						<select class="form-control" id="Go_Page_Select" onchange="Go_Page_Tag();"><option selected="selected" value="1" onclick="List_Page_Right(1);$('#Go_Page_Box').modal('hide');">第 1 页 / 共 1 页</option></select>
					</div>
				</div>
			</div>
            <div class="modal-footer">
                <button data-dismiss="modal" class="btn btn-warning" type="button"><i class="fa fa-times-circle"></i> 取消</button>
            </div>
        </div>
    </div>
</div> -->



<script>
	//var Web_Titie = 'MMMOffice.CH - mmmoffice.ch';
	//var Web_Name = 'MMMOffice.CH';
	//var Web_Host = 'https://mmmoffice.ch/';
	var User = new Array();
	var Page = 1;
	var Select_Photo_Page = 1;
	var Edit_ID = '';
	var Search_ST = 0;
	var Search_ET = 0;
	var Current_Frame;
	var APP_Init = 1;
	
	/* var Status_Abnormal_1 = "您的账户已经被警告!";
	var Status_Abnormal_2 = "您的账户已经被冻结,您只能使用反馈功能进行解冻!";
	
	if(U_Status=='1'){
		Show_Prompt_Box(3,Status_Abnormal_1);
	}else if(U_Status=='-1'){
		Show_Prompt_Box(3,Status_Abnormal_2);
	} */
	
	//Ajax_POST('https://mmmoffice.ch/?m=ajax&ajax_header=public&ajax_class=window&ajax_type=data','id=1','xml',Post_Tickets_Success,Post_Error);
	//Ajax_POST('https://mmmoffice.ch/?m=ajax&ajax_header=user&ajax_class=users_message&ajax_type=get_look','','xml',Post_Tickets_Success,Post_Error);
	
	/* function Post_Tickets_Success(Xml){
		if($(Xml).find("ajax_status").text()<0){
			
		}else if($(Xml).find("ajax_header").text()=='user' && $(Xml).find("ajax_class").text()=='users_message'){
			if($(Xml).find("ajax_type").text()=='get_look'){
				$('#Tickets_Num').html($(Xml).find("num").text());
			}
		}else if($(Xml).find("ajax_header").text()=='public' && $(Xml).find("ajax_class").text()=='window'){
			if($(Xml).find("ajax_type").text()=='data'){
				if($(Xml).find("window").text()=='1'){
					Show_Prompt_Box('焦点资讯',$(Xml).find("content").text());
				}
			}
		}
	} */
	
	/* function Set_Page_Tag(){
		Set_Page_Max($('#Set_Page_Max_Select').val());
	}
	
	function Go_Page_Tag(){
		List_Page($('#Go_Page_Select').val());
		$('#Go_Page_Box').modal('hide');
	} */
	
	//if(Is_Digit(parseInt($.cookie('Page_Max')))==false || parseInt($.cookie('Page_Max'))>100){$.cookie('Page_Max','10',{expires:365});}
	
	//var Page_Max = parseInt($.cookie('Page_Max'));
	
	/* if(U_Status!='-1'){
		window.document.title = '新闻';
		//Ajax_POST(Web_Host+'?t=user/news','features_page=Read','text',Read_Success,Post_Error);
	}else{
		window.document.title = '反馈';
		//Ajax_POST(Web_Host+'?t=user/tickets','features_page=Read','text',Read_Success,Post_Error);
	} */
	
	/* $(document).on('click', '[data-atype="load_frame"]', function(){
		if(U_Status=='-1' && $(this).data('frame')!='user/tickets'){
			Show_Prompt_Box(3,Status_Abnormal_2);
			return;
		}
		window.document.title = $(this).data('name');
		Ajax_POST(Web_Host+'?t='+$(this).data('frame'),'features_page=Read','text',Read_Success,Post_Error);
	}) */
	
	$(window).resize(function(){
	   Set_Size();
	});
	
	function Set_Size(){
		$('#JS-Set-H').css('min-height',$(window).height()-132);
		$('[data-auto="JS-Set-H"]').css('height',$(window).height()-135);
	}
	
</script>
<div id="xunlei_com_thunder_helper_plugin_d462f475-c18e-46be-bd10-327458d045bd"></div></body></html>
<!--Write_Html : False [user/index]-->