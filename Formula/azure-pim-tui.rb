class AzurePimTui < Formula
  desc "Terminal UI for managing Azure PIM role activations"
  homepage "https://github.com/CosX/azure-pim-tui"
  version "0.0.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CosX/azure-pim-tui/releases/download/v0.0.5/azure-pim-tui-v0.0.5-aarch64-apple-darwin.tar.gz"
      sha256 "29a12dedc1aa08aab82e08c3348ad5f364dd18cc5f70505779e6d4b94f4cd862"
    else
      url "https://github.com/CosX/azure-pim-tui/releases/download/v0.0.5/azure-pim-tui-v0.0.5-x86_64-apple-darwin.tar.gz"
      sha256 "9d5218fdac4ffa3b9fcd7b82a51f0f6c198826b4305ff6c492d3ac04f9f5af17"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/CosX/azure-pim-tui/releases/download/v0.0.5/azure-pim-tui-v0.0.5-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "85b4faa2c2083c0dbf3c3a819c050f88c92785e24361eb08b89160d9ed5032fe"
    else
      url "https://github.com/CosX/azure-pim-tui/releases/download/v0.0.5/azure-pim-tui-v0.0.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a5c7b0dbd350283f343b91574e340c8b6fc4bbb3d086272ca842a042816f6337"
    end
  end

  def install
    bin.install "azure-pim-tui"
  end

  test do
    system "#{bin}/azure-pim-tui", "--version"
  end
end
