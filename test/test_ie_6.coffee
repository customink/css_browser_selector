vows = require('vows')
assert = require('assert')
detect = require( __dirname + '/../css_browser_selector.min' ).css_browser_selector

vows.describe('IE 6').addBatch(

  'IE 6' :
    'Windows' :
      'XP' :
        '6' :
          topic : detect("Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; NeosBrowser; .NET CLR 1.1.4322; .NET CLR 2.0.50727)")
          'should be identifiable' : (selector) ->
            assert.equal( selector, 'ie ie6 win' )
        '6 Neos.TV' : # Explanation: MSIE 6.x on XP with a skin from neos.tv who seem to specialize in the hospitality (read hotel) industry. 
          topic : detect("Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; NeosBrowser; .NET CLR 1.1.4322; .NET CLR 2.0.50727)")
          'should be identifiable' : (selector) ->
            assert.equal( selector, 'ie ie6 win' )

).export(module)