cask "popeste" do
  version "0.2.0"
  sha256 "4a8c3fe8a61b7ebda87b4d6b50a58fb69a9f88241ceb8b53a0d4081298fe964e"

  url "https://github.com/archcst/popeste/releases/download/#{version}/Popeste-#{version}-arm64.zip"
  name "Popeste"
  desc "Menu bar utility for reusable text snippets"
  homepage "https://github.com/archcst/popeste"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Popaste.app"

  caveats <<~EOS
    This test build is ad-hoc signed and has not been notarized by Apple.
    macOS may block the first launch. Review the release notes before installing.
    Accessibility permission is needed to insert phrases into other apps.
  EOS
end
