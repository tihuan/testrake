var popupBlockerChecker = {
        check: function(popup_window){
            var _scope = this;
            if (popup_window) {
                if(/chrome/.test(navigator.userAgent.toLowerCase())){
                    console.log("Got into CHROME :)))");
                    // popup_window.document.cookie = "externalAllowed: true";
                    // console.log(popup_window.document.cookie);
                    setTimeout(function () {
                        _scope._is_popup_blocked(_scope, popup_window);
                     },200);
                }else{
                    popup_window.onload = function () {
                        console.log("HELP!!!");
                        _scope._is_popup_blocked(_scope, popup_window);
                    };
                }
            }else{
                console.log("HELP!!!");
                console.log(popup_window.innerHeight);
                popup_window.document.cookie = "externalAllowed: true";
                console.log(popup_window.document.cookie);
                _scope._displayError();
            }
        },
        _is_popup_blocked: function(scope, popup_window){
            if (popup_window.innerHeight <= 0){
                console.log("Inside innerHeight");
                console.log(popup_window);
                scope._displayError();
            }
        },
        _displayError: function(){
            console.log("popup??");
            alert("Popup Blocker is enabled! Please add this site to your exception list.");
        }
    };

var popup = window.open("http://www.google.com");
popup.focus();
popup.sessionStorage.token = "externalAllowed: true";
var matched = popup.sessionStorage.token.match(/externalAllowed/)
// var matched = popup.document.cookie.match(/externalAllowed/)
console.log('Loading result');
console.log(window.sessionStorage.token);
console.log(popup.location.href);
console.log('Anything matched?');
console.log(matched);
console.log("done!")
popupBlockerChecker.check(popup);
// popup.close();

