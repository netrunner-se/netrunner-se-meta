#!/bin/bash
# Execute this script in chroot to remove and tweak netrunner to netrunner-se

# Remove unnecessary packages
apt-get purge konversation skype skype-bin kde-telepathy kde-config-telepathy-accounts kde-telepathy-approver kde-telepathy-auth-handler kde-telepathy-contact-list kde-telepathy-data kde-telepathy-desktop-applets kde-telepathy-filetransfer-handler kde-telepathy-integration-module kde-telepathy-minimal kde-telepathy-send-file kde-telepathy-text-ui libtelepathy-glib0:i386 libtelepathy-logger-qt4-1:i386 libtelepathy-logger3:i386 libtelepathy-qt4-2:i386 telepathy-gabble telepathy-haze telepathy-logger telepathy-mission-control-5 telepathy-salut kfilebox netrunner-artwork-firefox netrunner-desktop

# Remove unnecessary desktop icons
rm /etc/skel/Desktop/steam.desktop /etc/skel/Desktop/webaccounts.desktop
# Patch url for Netrunner SE Welcome page
sed -i 's+Exec=firefox -no-remote -P "prism"  http://www.netrunner-os.com/readme-1306+Exec=firefox -no-remote -P \"prism\"  http://www.netrunner-os.com/readme-1306-se+g' /etc/skel/Desktop/welcome.desktop