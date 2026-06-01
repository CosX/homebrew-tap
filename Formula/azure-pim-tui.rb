class AzurePimTui < Formula
  desc "Terminal UI for managing Azure PIM role activations"
  homepage "https://github.com/CosX/azure-pim-tui"
  version "0.0.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CosX/azure-pim-tui/releases/download/v0.0.4/azure-pim-tui-v0.0.4-aarch64-apple-darwin.tar.gz"
      sha256 "ec60758f3c4672de0974d8a599bce21428fd381908eb0b75663e85b6046c1e84"
    else
      url "https://github.com/CosX/azure-pim-tui/releases/download/v0.0.4/azure-pim-tui-v0.0.4-x86_64-apple-darwin.tar.gz"
      sha256 "f99d3f7fd9982f2bf553e27227c05b881606ba18accad9d4d85317a8b29f0e90"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/CosX/azure-pim-tui/releases/download/v0.0.4/azure-pim-tui-v0.0.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "60b73bd0feab045f29b312b19b089590953a90e961c02b8706ed3d3c93fbe908"
    else
      url "https://github.com/CosX/azure-pim-tui/releases/download/v0.0.4/azure-pim-tui-v0.0.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bfe3498d14f4e421896e2021ed74c1e4ca33237c4278bd87af96b15c5d9fa069"
    end
  end

  def install
    bin.install "azure-pim-tui"
  end

  test do
    system "#{bin}/azure-pim-tui", "--version"
  end
end
