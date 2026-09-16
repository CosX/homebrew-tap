class AzurePimTui < Formula
  desc "Terminal UI for managing Azure PIM role activations"
  homepage "https://github.com/CosX/azure-pim-tui"
  version "0.0.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CosX/azure-pim-tui/releases/download/v0.0.7/azure-pim-tui-v0.0.7-aarch64-apple-darwin.tar.gz"
      sha256 "f02459e070d6c96b7e38a4b72278881940fda290bfbb7f4ebbe55ecc7b7b29a6"
    else
      url "https://github.com/CosX/azure-pim-tui/releases/download/v0.0.7/azure-pim-tui-v0.0.7-x86_64-apple-darwin.tar.gz"
      sha256 "5b25a08f649d24b24857bcd953c706a7ed83dd54bb96c1d80d01e911695d1c05"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/CosX/azure-pim-tui/releases/download/v0.0.7/azure-pim-tui-v0.0.7-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3c4a5adf69fa6b345168f0cecfb21af1b1f30f161f895148a85c802441d64cbe"
    else
      url "https://github.com/CosX/azure-pim-tui/releases/download/v0.0.7/azure-pim-tui-v0.0.7-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "07938955ce184ea0a44033891d5aabbc7031cc5f136a7e735706e6da8e5d4d83"
    end
  end

  def install
    bin.install "azure-pim-tui"
  end

  test do
    system "#{bin}/azure-pim-tui", "--version"
  end
end
