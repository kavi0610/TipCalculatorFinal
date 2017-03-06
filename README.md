# TipCalculatorFinal
# Pre-work - Tip calculator

"To tip or not to tip is the ?" is a tip calculator application for iOS.

Submitted by: Kavitha Muralisekar

Time spent: 9 hours spent in total

## User Stories

The following **required** functionality is complete:

* [x] User can enter a bill amount, choose a tip percentage, and see the tip and total values.
* [x] Settings page to change the default tip percentage.

The following **optional** features are implemented:
* [ ] UI animations
* [ ] Remembering the bill amount across app restarts (if <10mins)
* [ ] Using locale-specific currency and currency thousands separators.
* [x] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

The following **additional** features are implemented:

* [x] Added a split by functionality, using a slider which has a maximum of 25. Along with Tip per person and total amount per person
* [x] Background color of the app changes with the change in percentage of tip from the settings page
* [x] Added a background image on the settings page to get rid of the extra white space

## Video Walkthrough 

Here's a walkthrough of implemented user stories:

<img src='http://i.imgur.com/h54xUUb.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Notes

- Working on remembering the bill amount across app restarts.
- Had some difficulty with implementing another text box for the split by option and instead settled with the slider as decding the first responder became easier with just one text box
- The settings page does not save the chosen default settings, instead resets everytime the app is open. Spent sometime trying to save the value chosen.

## License

Copyright Kavitha Muralisekar

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
