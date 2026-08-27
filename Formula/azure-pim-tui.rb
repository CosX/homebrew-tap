class AzurePimTui < Formula
  desc "Terminal UI for managing Azure PIM role activations"
  homepage "https://github.com/CosX/azure-pim-tui"
  version "0.0.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CosX/azure-pim-tui/releases/download/v0.0.6/azure-pim-tui-v0.0.6-aarch64-apple-darwin.tar.gz"
      sha256 "1381da4f4f5f7688b09d20cd512c495d845cefe0ecaef24ec1f1ef54f126abf5"
    else
      url "https://github.com/CosX/azure-pim-tui/releases/download/v0.0.6/azure-pim-tui-v0.0.6-x86_64-apple-darwin.tar.gz"
      sha256 "5874f21cab8c2388c12782875f8ab4e5d4aab85d8e5cb176a1094114dc58f614"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/CosX/azure-pim-tui/releases/download/v0.0.6/azure-pim-tui-v0.0.6-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3e932241acf1cad3a3ec7dc6c6536caf01dc95eef13f1fdaed942ed4d04e7b3b"
    else
      url "https://github.com/CosX/azure-pim-tui/releases/download/v0.0.6/azure-pim-tui-v0.0.6-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "87f5565b95ba039c95254ad2b5386cd1bd1fe4d6d49fdedaee4c0cd57111d801"
    end
  end

  def install
    bin.install "azure-pim-tui"
  end

  test do
    system "#{bin}/azure-pim-tui", "--version"
  end
end
