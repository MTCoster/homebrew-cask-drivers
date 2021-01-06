cask "philips-hue-sync" do
  version "1.5.3.3"

  url "https://firmware.meethue.com/storage/huesyncmac/3/753de441-6193-4860-b529-c9866994c3cc/HueSyncInstaller_1.5.3.3.pkg"
  name "Philips Hue Sync"
  homepage "https://www.philips-hue.com/en-hk/entertainment/hue-sync"

  uninstall quit:    [
    "com.lighting.huesync",
    "com.lighting.huesync.watchdog",
  ],
            pkgutil: "com.lighting.huesync"

  zap trash: [
    "~/Library/Application Support/com.lighting.huesync",
    "~/Library/Caches/Hue Sync",
    "~/Library/Preferences/com.lighting.huesync.Hue Sync.plist",
  ]
end
