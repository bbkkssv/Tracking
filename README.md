# Tracking

This is a simple iPadOS task tracking app built with SwiftUI. The main screen uses a sidebar/detail layout with `NavigationSplitView`, so task groups stay on the left and the selected group opens on the right.

For the iPadOS part, the app supports the larger iPad layout and can rotate between portrait and landscape. It also keeps the normal iPad multitasking behavior, so it can work with Split View and Slide Over.

I added a basic localization setup even though we have not really covered localization in class yet. The visible text now uses localized strings, and the English values are stored in `Tracking/en.lproj/Localizable.strings`. This may need to be changed later when we go over the official class approach, but for now it shows the basic idea: UI text is pulled from a localization file instead of only being hard-coded in the views.
