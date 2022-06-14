var purecookieTitle="Cookies.",purecookieDesc="Nosotros y nuestros socios almacenamos y/o accedemos a información en un dispositivo (como cookies) y procesamos datos personales (como identificadores únicos y otros datos del dispositivo) para anuncios y contenido personalizado, medición de anuncios y contenido, conocimiento de la audiencia y desarrollo de productos. Con su consentimiento, nosotros y nuestros socios podemos usar datos precisos de geolocalización e identificación a través del escaneo del dispositivo. Puede cambiar su elección en cualquier momento en nuestro centro de privacidad.",
purecookieLink='<a href="politicas.php" target="_blank">Politicas de privacidade</a>',
purecookieButton="Aceptar";
function pureFadeIn(e,o){
var i=document.getElementById(e);
i.style.opacity=0,i.style.display=o||"block",
function e(){var o=parseFloat(i.style.opacity);(o+=.02)>1||(i.style.opacity=o,requestAnimationFrame(e))}()}function pureFadeOut(e){
var o=document.getElementById(e);o.style.opacity=1,function e(){
(o.style.opacity-=.02)<0?o.style.display="none":requestAnimationFrame(e)}()
}function setCookie(e,o,i){var t="";if(i){
var n=new Date;n.setTime(n.getTime()+24*i*60*60*1e3),t="; expires="+n.toUTCString()}
document.cookie=e+"="+(o||"")+t+"; path=/"}
function getCookie(e){for(var o=e+"=",i=document.cookie.split(";"),t=0;t<i.length;t++){
for(var n=i[t];" "==n.charAt(0);)n=n.substring(1,n.length);if(0==n.indexOf(o))return n.substring(o.length,n.length)}
return null}function eraseCookie(e){document.cookie=e+"=; Max-Age=-99999999;"}
function cookieConsent(){
getCookie("purecookieDismiss")||(document.body.innerHTML+='<div class="cookieConsentContainer" id="cookieConsentContainer"><div class="cookieTitle"><a>'+purecookieTitle+'</a></div><div class="cookieDesc"><p>'+purecookieDesc+" "+purecookieLink+'</p></div><div class="cookieButton"><a onClick="purecookieDismiss();">'+purecookieButton+"</a></div></div>",pureFadeIn("cookieConsentContainer"))}
function purecookieDismiss(){setCookie("purecookieDismiss","1",7),pureFadeOut("cookieConsentContainer")}
window.onload=function(){cookieConsent()};
