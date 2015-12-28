# Prework - Tip Calculator

Tip Calculator is a tip calculator application for iOS.

Submitted by: Joel Annenberg

Time spent: 10-15 hours spent in total

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

- [x] General UI Improvements
- [x] Added a light and dark theme

## Video Walkthrough 

Here's a walkthrough of implemented user stories:

<img src='http://i.imgur.com/wKqjTut.gif?1' title='Video Walkthrough' width='' alt='Video Walkthrough' />

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Notes

Difficulties:

Getting the default tip percentage in the Settings View to update the CALCULATED tip and bill. Changing the default tip would just change the selector on the Settings View, but would not update the calculations on ViewController.

Creating, saving, and accessing the colors for the color themes, and the color schemes themselves.

## License

    Copyright 2015 Joel Annenberg

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
