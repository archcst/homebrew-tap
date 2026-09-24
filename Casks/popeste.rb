cask "popeste" do
  version "0.1.0"
  sha256 "1b68f44c67d786313dad1591316ce9f045c055d3d5c3ebfbe243a34be328f8c1"

  url "https://github.com/archcst/popeste/releases/download/0.1.0/Popeste-#{version}-arm64.zip"
  name "Popeste"
  desc "Menu bar utility for reusable text snippets"
  homepage "https://github.com/archcst/popeste"

  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  app "Popaste.app"

  caveats <<~EOS
    This test build is ad-hoc signed and has not been notarized by Apple.
    macOS may block the first launch. Review the release notes before installing.
    Accessibility permission is needed to insert phrases into other apps.
  EOS
end
