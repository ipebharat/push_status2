IOS Push notifications availability status plugin
======

> This plugin helps you to check if push notifications is disabled in phone settings

PhoneGap Build
--------------
To include the PushStatus plugin in your PhoneGap Build application, add this to your config.xml:

    <gap:plugin name="push_status" source="npm" version="<here plugin version>" />
 
Methods
-------

- navigator.push_status.isPushNotificationsAvailable

Supported Platforms
-------------------

- iOS 7, 8, 9

Quick Example
-------------

    navigator.push_status.isPushNotificationsAvailable(function(result) {
            result = (result.toLowerCase() === 'true');
            if (!result) {
				//notifications disabled
            } else {
				//notifications enabled
            }
        }, function(err) {
			alert(err);
        });
		
		
##<a name="license"></a> LICENSE

	The MIT License

	Copyright (c) 2015 Azati
	portions Copyright (c) 2015 Azati

	Permission is hereby granted, free of charge, to any person obtaining a copy
	of this software and associated documentation files (the "Software"), to deal
	in the Software without restriction, including without limitation the rights
	to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
	copies of the Software, and to permit persons to whom the Software is
	furnished to do so, subject to the following conditions:

	The above copyright notice and this permission notice shall be included in
	all copies or substantial portions of the Software.

	THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
	IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
	FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
	AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
	LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
	OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
	THE SOFTWARE.


    