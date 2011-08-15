vows = require('vows')
assert = require('assert')
detect = require( __dirname + '/../css_browser_selector.min' ).css_browser_selector

vows.describe('IE 7').addBatch(

  'IE 7' :
    'Windows' :
      'XP' :
        '7' :
          topic : detect("Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; .NET CLR 1.1.4322; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 3.0.04506.30; Dealio Deskball 3.0)")
          'should be identifiable' : (selector) ->
            assert.equal( selector, 'ie ie7 win' )
      'Vista' :
        '7' :
          topic : detect("Mozilla/4.0 (compatible; MSIE 7.0b; Windows NT 6.0")
          'should be identifiable' : (selector) ->
            assert.equal( selector, 'ie ie7 win vista' )
        '7 with Add-ons' :
          topic : detect("Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; WOW64; SLCC1; .NET CLR 2.0.50727; .NET CLR 3.0.04506; Media Center PC 5.0; .NET CLR 1.1.4322; Windows-Media-Player/10.00.00.3990; InfoPath.2") # Vista 64-bit
          'should be identifiable' : (selector) ->
            assert.equal( selector, 'ie ie7 win vista' )

      '7' :
        '8 WOW64' :
          topic : detect("Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; SLCC2; .NET CLR 2.0.50727; InfoPath.2)")
          'should be identifiable' : (selector) ->
            assert.equal( selector, 'ie ie8 win' )
        '8 64-bit' :
          topic : detect("Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0)")
          'should be identifiable' : (selector) ->
            assert.equal( selector, 'ie ie8 win' )

).export(module)