# expo-standalone-with-github-actions
Sample expo project, built with turtle-cli and Github Actions

## Required secrets:
To configure these secrets, you have to go to `Settings` -> `Secrets` -> `New secret` in your repository menu.

### Android:
- ANDROID_KEYSTORE_ALIAS - Keystore alias
- EXPO_ANDROID_KEYSTORE_PASSWORD - Keystore password
- EXPO_ANDROID_KEY_PASSWORD - Key password

### iOS:
- P12_PASSWORD - Password for .p12 file
- APPLE_TEAM_ID - Your Apple Team ID

### Common:
- ASSETS_FTP_HOST - Host for assets FTP
- ASSETS_FTP_PASSWORD - Credentials for assets FTP
- ASSETS_FTP_USER - Credentials for assets FTP
- ASSETS_FTP_REMOTE_DIR - Remote directory on assets FTP
- ASSETS_URL - Public URL to assets (required SSL)
- EXPO_CLI_PASSWORD - Expo.io credentials
- EXPO_CLI_USERNAME - Expo.io credentials
- SECRET_FILES_PASSWORD - Password to decrypt GPG files

## Required files:
To build an application, you have to send to your repository encrypted (by GPG) files. To encrypt each of them, you can use this command:

`$ gpg --symmetric --cipher-algo AES256 {target_file}`

Remember to use `SECRET_FILES_PASSWORD` to secure these files.

### Android:
- `./secrets/build.keystore.gpg` - encrypted your .keystore file - you can generate it by command:

`$ keytool -genkeypair -v -keystore {filename}.keystore -alias {keystore-alias} -keyalg RSA -keysize 2048 -validity 10000`

### iOS:
- `./secrets/cert.p12.gpg` - encrypted .p12 certification file - generated in AppStore Connect panel
- `./secrets/profile.mobileprovision.gpg` - encrypted Provisioning Profile file - generated in AppStore Connect panel

## TODO:
- [ ] PUSH notifications config (google-services.json file)
- [ ] Google Analytics config (GoogleService-Info.plist file)
