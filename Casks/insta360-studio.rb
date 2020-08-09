cask "insta360-studio" do
  version "3.5.0,2020_20200806_222513:20200807.eea8769d2706b6acdcb86c3c26a161e5"
  sha256 "64c1f462c7074dfc873aa0fbc16705fbae3901b35927e7d8889aef62326162e3"

  url "https://res.insta360.com/static/assets/storage/#{version.after_colon.major}/#{version.after_colon.minor}/Insta360_Studio_#{version.after_comma.before_colon}_signed.pkg.zip"
  name "Insta360 Studio"
  homepage "https://www.insta360.com/"

  container type: :zip

  pkg "Insta360 Studio #{version.after_comma.before_colon}_signed.pkg"

  uninstall quit:    "com.insta360.studio",
            pkgutil: [
              "com.insta360.PremierePlugin",
              "com.insta360.ThumbnailPlugin",
              "com.insta360.insta360Studio",
            ]

  zap trash: [
    "~/Library/Application Support/Insta360",
    "~/Library/Caches/Insta360",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.insta360.studio",
    "~/Library/Saved Application State/com.insta360.studio.savedState",
  ]
end
