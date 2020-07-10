#!/bin/sh
gpg --quiet --batch --yes --decrypt --passphrase="$SECRET_FILES_PASSWORD" --output ./secrets/build.keystore ./secrets/build.keystore.gpg

gpg --quiet --batch --yes --decrypt --passphrase="$SECRET_FILES_PASSWORD" --output ./secrets/cert.p12 ./secrets/cert.p12.gpg

gpg --quiet --batch --yes --decrypt --passphrase="$SECRET_FILES_PASSWORD" --output ./secrets/profile.mobileprovision ./secrets/profile.mobileprovision.gpg
