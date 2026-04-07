class AzurePimTui < Formula
  desc "Terminal UI for managing Azure PIM role activations"
  homepage "https://github.com/CosX/azure-pim-tui"
  version "0.0.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CosX/azure-pim-tui/releases/download/v0.0.3/azure-pim-tui-v0.0.3-aarch64-apple-darwin.tar.gz"
      sha256 "8f72ede0dac65f0875cd4ee4a05c02c1e4782868d6afed5d94cd16a48786af95"
    else
      url "https://github.com/CosX/azure-pim-tui/releases/download/v0.0.3/azure-pim-tui-v0.0.3-x86_64-apple-darwin.tar.gz"
      sha256 "0fd15293057f6bb90ef5aba147e18f3b20e3c96303cd59cd129683e8d63e5772"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/CosX/azure-pim-tui/releases/download/v0.0.3/azure-pim-tui-v0.0.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "38dd36198924036e9b0cf1d099ff56fd712ce8ffeac443d5dc03e514e3b07e83"
    else
      url "https://github.com/CosX/azure-pim-tui/releases/download/v0.0.3/azure-pim-tui-v0.0.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "74d4f407d9f7d8d23d9ec4480e213cf100a99beb00cc81648d9a49051df9d5af"
    end
  end

  def install
    bin.install "azure-pim-tui"
  end

  test do
    system "#{bin}/azure-pim-tui", "--version"
  end
end
