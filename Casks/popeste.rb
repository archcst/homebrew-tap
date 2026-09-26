cask "popeste" do
  version "0.2.1"
  sha256 "44e4efb7edab7ad735e5ac1003718fadee12cb75470775d8b42e6136ebacc1ca"

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
