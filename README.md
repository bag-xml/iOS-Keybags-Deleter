# iOS Keybags Deleter
A very simple app, relying on NSFileManager to delete integral system files to conveniently brick iOS installs

# Well... What's the catch
...sandboxed apps cannot delete files outside their sandbox
Well this could be fixed by using a helper CLI tool, that the app spawns. then the CLI tool can call setuid(0) to make itself root to and then the helper can delete the file

# other info
i made this in Xcode 5.1.1, edit it in that ver or higher.
