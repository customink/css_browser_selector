/*
CSS Browser Selector v0.5.0
Forked from:
  Rafael Lima (http://rafael.adm.br)
  http://rafael.adm.br/css_browser_selector
  https://github.com/rafaelp/css_browser_selector
  License: http://creativecommons.org/licenses/by/2.5/
  Contributors: http://rafael.adm.br/css_browser_selector#contributors
Forked by:
  CustomInk, LLC (Derek Lindahl)
*/

;(function(exports) {

  var detect = function(u) {
    var ua = u.toLowerCase(),
        is = function(t) {
          if( typeof t == 'string') {
            return ua.indexOf(t) > -1
          } else {
            return t.test(ua);
          }
        },
        g = 'gecko',
        w = 'webkit',
        s = 'safari',
        o = 'opera',
        m = 'mobile',
        b = [
          (!(/opera|webtv/i.test(ua)) && /msie\s(\d)/.test(ua)) ?
            ('ie ie' + RegExp.$1)
            :
            is(/firefox\/([^0-1]|\d{2,})/i) ? // Matches Firefox 2+
              g + ' ff' + ua.match(/firefox\/([^0-1]|\d{2,})/i)[1] +
                ( is(/firefox\/3\.[56]/) ? ' ff3_' + ua.match(/firefox\/3\.(\d)/)[1] : '' ) // Special case 3.5 and 3.6
              :
              is('gecko/') ?
                g
                :
                is('opera') ?
                  o + (/version\/(\d+)/.test(ua) ?
                    ' ' + o + RegExp.$1
                    :
                    (/opera(\s|\/)(\d+)/.test(ua) ?
                      ' ' + o + RegExp.$2 : ''))
                      :
                      is('konqueror') ?
                        'konqueror'
                        :
                        is('blackberry') ?
                          m + ' blackberry'
                          :
                          is('android') ?
                            m + ' android'
                            :
                            is('chrome') ?
                              w + ' chrome'
                              :
                              is('iron') ?
                                w + ' iron'
                                :
                                is('applewebkit/') ?
                                  w + ' ' + s + (/version\/(\d+)/.test(ua) ? ' ' + s + RegExp.$1 : '')
                                  :
                                  is('mozilla/') ?
                                    g
                                    :
                                    '',
          is('j2me') ?
            m + ' j2me'
            :
            is('iphone') ?
              m + ' iphone'
              :
              is('ipod') ?
                m + ' ipod'
                :
                is('ipad') ?
                  m + ' ipad'
                  :
                  is('mac') ?
                    'mac'
                    :
                    is('darwin') ?
                      'mac'
                      :
                      is('webtv') ?
                        'webtv'
                        :
                        is('win') ?
                          'win' + (is('windows nt 6.0') ?
                            ' vista'
                            :
                            (is(/windows nt 5\.[1-2]/i)) ?
                              ' xp'
                              :
                              (is('windows nt 6.1')) ?
                                ' win7'
                                :
                                (is('windows nt 6.2')) ? ' win8' : '')
                          :
                          is('freebsd') ?
                            'freebsd'
                            :
                            (is('x11') || is('linux')) ?
                              'linux'
                              :
                              ''
        ];
    return b.join(' ').replace(/^\s\s*/, '').replace(/\s\s*$/, '');
  };

  if( exports ) {
    exports.css_browser_selector = detect;
  } else {
    document.documentElement.className += ' ' + detect(navigator.userAgent);
  }

})( typeof exports !== "undefined" ? exports : null );
