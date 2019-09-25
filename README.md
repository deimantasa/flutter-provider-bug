# flutter-provider-bug
Bug for provider not working in release mode

Run the app in debug mode
`flutter run -d <device_id>`

When page loads, wait until Progress Bar disappears.
Click to second screen.
Progress Bar will disappear after 5 seconds.

Go back to console and run app in `release`
`flutter run -d <device_id> --release`

When page loads, wait until Progress Bar disappears.
Click to second screen.
Progress Bar will *not* disappear after 5 seconds.
