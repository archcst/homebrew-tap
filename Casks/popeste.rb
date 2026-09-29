# frozen_string_literal: true

cask "popeste" do
  version "0.3.1"
  sha256 "8f0ad91c7ff973b287f28b2856996d5c6d542ba8174910df57c7ed554f9705ac"

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
