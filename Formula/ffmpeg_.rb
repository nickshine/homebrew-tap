class Ffmpeg_ < Formula
  desc "Helper ffmpeg scripts for use with NVR recordings of IP Cameras"
  homepage "https://github.com/nickshine/ffmpeg_"
  license "MIT"
  head "https://github.com/nickshine/ffmpeg_.git", :branch => "main"

  bottle :unneeded
  depends_on "ffmpeg"

  def install
    bin.install "ffmpeg_concat.sh" => "ffmpeg_concat", "ffmpeg_timelapse.sh" => "ffmpeg_timelapse", "ffmpeg_trim.sh" => "ffmpeg_trim"
  end

  test do
    system "#{bin}/ffmpeg_concat"
  end
end
