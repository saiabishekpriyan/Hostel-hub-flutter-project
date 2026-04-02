# README.md Content for HostelHub

## Translating Figma to Flutter Responsively

I started by designing HostelHub screens in Figma: Login, Dashboard, Issue Reporting, and Issue List. Each screen was made simple, with big buttons and clear text for students.

When building in Flutter, I mapped each Figma element to a Flutter widget (Text, Column, Row, Card, Button, ListView). I used MediaQuery, Flexible, and LayoutBuilder to make sure the UI adapts to all devices.

For example, on a tablet, the issue list and details show side by side. On a phone, they stack vertically. I avoided fixed pixel sizes so everything stays readable and usable.

**This way, my Flutter UI looks like my Figma design, but also works well on any device.**
