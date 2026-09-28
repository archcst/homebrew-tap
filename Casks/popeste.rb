# frozen_string_literal: true

cask "popeste" do
  version "0.3.0"
  sha256 "6c1e4cd6686773d051f166a61017162b1a2f9ca9f267ec306406f8de9d46f2ee"

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
