vows = require('vows')
assert = require('assert')
detect = require( __dirname + '/../css_browser_selector.min' ).css_browser_selector

vows.describe('Konqueror').addBatch(
  'Konqueror' :
    'Windows' :
      '4.0' :
        topic : detect("Mozilla/5.0 (compatible; Konqueror/4.0; Microsoft Windows) KHTML/4.0.80 (like Gecko)")
        'should be identifiable' : (selector) ->
          assert.equal( selector, 'konqueror win' )
      '3.92' :
        topic : detect("Mozilla/5.0 (compatible; Konqueror/3.92; Microsoft Windows) KHTML/3.92.0 (like Gecko)")
        'should be identifiable' : (selector) ->
          assert.equal( selector, 'konqueror win' )

    'OS X' :
      '3.5.6' :
        topic : detect("Mozilla/5.0 (compatible; Konqueror/3.5; Darwin) KHTML/3.5.6 (like Gecko)")
        'should be identifiable' : (selector) ->
          assert.equal( selector, 'konqueror mac' )
      'Darwin' :
        topic : detect("Mozilla/5.0 (compatible; Konqueror/3.5; Darwin 8.10.0; X11; Power Macintosh; en_US)KHTML/3.5.6 (like Gecko)")
        'should be identifiable' : (selector) ->
          assert.equal( selector, 'konqueror mac' )

    'Cygwin' :
      topic : detect("Mozilla/5.0 (compatible; Konqueror/3.4; CYGWIN_NT-5.1) KHTML/3.4.89 (like Gecko)")
      'should be identifiable' : (selector) ->
        assert.equal( selector, 'konqueror win' )

    'FreeBSD' :
      '3.2' : # Konqueror/KDE Version 3.2 on FreeBSD
        topic : detect("Mozilla/5.0 (compatible; Konqueror/3.2; FreeBSD) (KHTML, like Gecko)")
        'should be identifiable' : (selector) ->
          assert.equal( selector, 'konqueror freebsd' )
      '3.4.3' :
        topic : detect("Mozilla/5.0 (compatible; Konqueror/3.4; FreeBSD) KHTML/3.4.3 (like Gecko)")
        'should be identifiable' : (selector) ->
          assert.equal( selector, 'konqueror freebsd' )

    'Linux' :
      'SUSE' :
        topic : detect("Mozilla/5.0 (compatible; Konqueror/3.5; Linux; X11; i686; en_US) KHTML/3.5.3 (like Gecko)")
        'should be identifiable' : (selector) ->
          assert.equal( selector, 'konqueror linux' )
      'Ubuntu' :
        topic : detect("Mozilla/5.0 (compatible; Konqueror/3.4; Linux) KHTML/3.4.3 (like Gecko) (Kubuntu package 4:3.4.3-0ubuntu1)")
        'should be identifiable' : (selector) ->
          assert.equal( selector, 'konqueror linux' )
      'Mandriva' :
        topic : detect("Mozilla/5.0 (compatible; Konqueror/3.4; Linux 2.6.8; X11; i686; en_US) KHTML/3.4.0 (like Gecko)")
        'should be identifiable' : (selector) ->
          assert.equal( selector, 'konqueror linux' )
      'Slackware' :
        topic : detect("Mozilla/5.0 (compatible; Konqueror/3.4; Linux 2.6.8; X11; i686; en_US) KHTML/3.4.0 (like Gecko)")
        'should be identifiable' : (selector) ->
          assert.equal( selector, 'konqueror linux' )
      'Mandrake' :
        topic : detect("Mozilla/5.0 (compatible; Konqueror/3.3; Linux 2.6.8.1-24mdk; X11; i686; en_GB, en_US) (KHTML, like Gecko)")
        'should be identifiable' : (selector) ->
          assert.equal( selector, 'konqueror linux' )
      'Mandrake XWindows' :
        '8.0' :
          topic : detect("Mozilla/5.0 (compatible; Konqueror/2.1.1; X11)")
          'should be identifiable' : (selector) ->
            assert.equal( selector, 'konqueror linux' )
        '9.0' :
          topic : detect("Mozilla/5.0 (compatible; Konqueror/3.1; Linux 2.4.19-32mdkenterprise; X11; i686; ar, en_US)")
          'should be identifiable' : (selector) ->
            assert.equal( selector, 'konqueror linux' )

).export(module)

###
User Agent string not ported over because they appear to be redundant

["Mozilla/5.0 (compatible; Konqueror/3.5; Linux; X11; x86_64) KHTML/3.5.6 (like Gecko) (Kubuntu)"                           , "konqueror linux"], // konqueror linux
["Mozilla/5.0 (compatible; Konqueror/3.5; Linux 2.6.14-kanotix-6; X11) KHTML/3.5.3 (like Gecko) (Debian package 4:3.5.3-1)" , "konqueror linux"], // konqueror linux
["Mozilla/5.0 (compatible; Konqueror/3.4; Linux) KHTML/3.4.1 (like Gecko)"                                                  , "konqueror linux"], // konqueror mandriva
["Mozilla/5.0 (compatible; Konqueror/3.3; Linux) (KHTML, like Gecko)"                                                       , "konqueror linux"], // Konqueror/KDE Version 3.3 on Linux Mandrake 10.1
["Mozilla/5.0 (compatible; Konqueror/3.2; Linux 2.6.7-3ajp; X11; i686) (KHTML, like Gecko)"                                 , "konqueror linux"], // Konqueror/KDE Version 3.2 on Linux Mandrake 10.0

["Mozilla/5.0 (compatible; Konqueror/3.1; Linux 2.4.20)"                                                                    , "konqueror linux"], // Konqueror/KDE Version 3.1 on Linux
["Mozilla/5.0 (compatible; Konqueror/3.1; Linux; X11; i686)"                                                                , "konqueror linux"], // Konqueror Linux Mandrake 9.0 under X windows

###