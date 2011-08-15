vows = require('vows')
assert = require('assert')
detect = require( __dirname + '/../css_browser_selector.min' ).css_browser_selector

vows.describe('Netscape Navigator').addBatch(

  'Netscape Navigator' :
    'Windows' :
      '3.11' :
        '0.6b' : # The new dinosaur string. Netscape 0.6 on WfWG 3.11.
          topic : detect("Mozilla/0.6 Beta (Windows)")
          'should be identifiable' : (selector) ->
            assert.equal( selector, 'gecko win' )
      'NT' :
        '2.02' : # The ex-new dinosaur string. Netscape 0.91, a pre-1.0 beta release from 1994.
          topic : detect("Mozilla/0.91 Beta (Windows)")
          'should be identifiable' : (selector) ->
            assert.equal( selector, 'gecko win' )
      'NT 4.0' :
        '2.02' :
          topic : detect("Mozilla/2.02 [fr] (WinNT; I)")
          'should be identifiable' : (selector) ->
            assert.equal( selector, 'gecko win' )
        '6.2.1' :
          topic : detect("Mozilla/5.0 (Windows; U; WinNT4.0; en-CA; rv:0.9.4) Gecko/20011128 Netscape6/6.2.1")
          'should be identifiable' : (selector) ->
            assert.equal( selector, 'gecko win' )
      '2K' :
        '8.0' : # A real Firefox based Netscape 8 with a security patch (already) on Win 2K
          topic : detect("Mozilla/5.0 (Windows; U; Windows NT 5.0; en-US; rv:1.7.5) Gecko/20050519 Netscape/8.0.1")
          'should be identifiable' : (selector) ->
            assert.equal( selector, 'gecko win' )
      'XP' :
        '7.2' : # Netscape 7.2 and still we're wondering what's the (ax)?
          topic : detect("Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.7.2) Gecko/20040804 Netscape/7.2 (ax)")
          'should be identifiable' : (selector) ->
            assert.equal( selector, 'gecko win xp' )
        '9.0' : # "Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.8pre) Gecko/20071019 Firefox/2.0.0.8 Navigator/9.0.0.1"
          topic : detect("Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.8pre) Gecko/20071019 Firefox/2.0.0.8 Navigator/9.0.0.1")
          'should be identifiable' : (selector) ->
            assert.equal( selector, 'gecko ff2 win xp' )
      'Redhat 9' :
        '4.8' :
          topic : detect("Mozilla/4.8 [en] (X11; U; Linux 2.4.20-8 i686)")
          'should be identifiable' : (selector) ->
            assert.equal( selector, 'gecko linux' )
      'DEC Alpha (NT)' :
        '3.01' :
          topic : detect("Mozilla/3.01 (WinNT; I) [AXP]")
          'should be identifiable' : (selector) ->
            assert.equal( selector, 'gecko win' )

).export(module)
