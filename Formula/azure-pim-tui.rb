class AzurePimTui < Formula
  desc "Terminal UI for managing Azure PIM role activations"
  homepage "https://github.com/CosX/azure-pim-tui"
  version "0.0.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CosX/azure-pim-tui/releases/download/v0.0.2/azure-pim-tui-v0.0.2-aarch64-apple-darwin.tar.gz"
      sha256 "8421bde8315087dc817571033e56d0d1a794a74ab9f93253f65d2ba5bb469fd4"
    else
      url "https://github.com/CosX/azure-pim-tui/releases/download/v0.0.2/azure-pim-tui-v0.0.2-x86_64-apple-darwin.tar.gz"
      sha256 "9441265a5895811802dc757842385c46949cec4ccb075680ce042b1427d183b7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/CosX/azure-pim-tui/releases/download/v0.0.2/azure-pim-tui-v0.0.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ec702633826c1697396922639bfb6d41157be52f5b5bc74a1d7fdf0b28e24ccf"
    else
      url "https://github.com/CosX/azure-pim-tui/releases/download/v0.0.2/azure-pim-tui-v0.0.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c86d000f6769d34b0ded7a749bc93c86f707253e6a78276236ac59883e4cb072"
    end
  end

  def install
    bin.install "azure-pim-tui"
  end

  test do
    system "#{bin}/azure-pim-tui", "--version"
  end
end
