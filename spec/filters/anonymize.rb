require "test_utils"
require "logstash/filters/anonymize"

describe LogStash::Filters::Anonymize do
  extend LogStash::RSpec

  describe "anonymize string with SHA alogrithm" do
    # The logstash config goes here.
    # At this time, only filters are supported.
    config <<-CONFIG
      filter {
        anonymize {
          fields => ["clientip"]
          key => "longencryptionkey"
          algorithm => 'SHA'
        }
      }
    CONFIG

    sample "@fields" => {"clientip" => "123.123.123.123"} do
      insist { subject["clientip"] } == "0d01b2191194d261fa1a2e7c18a38d44953ab4e2"
    end
  end
 
   describe "anonymize string with SHA1 alogrithm" do
    # The logstash config goes here.
    # At this time, only filters are supported.
    config <<-CONFIG
      filter {
        anonymize {
          fields => ["clientip"]
          key => "longencryptionkey"
          algorithm => 'SHA1'
        }
      }
    CONFIG

    sample "@fields" => {"clientip" => "123.123.123.123"} do
      insist { subject["clientip"] } == "fdc60acc4773dc5ac569ffb78fcb93c9630797f4"
    end
  end

  describe "anonymize string with SHA224 alogrithm" do
    # The logstash config goes here.
    # At this time, only filters are supported.
    config <<-CONFIG
      filter {
        anonymize {
          fields => ["clientip"]
          key => "longencryptionkey"
          algorithm => 'SHA224'
        }
      }
    CONFIG

    sample "@fields" => {"clientip" => "123.123.123.123"} do
      insist { subject["clientip"] } == "5744bbcc4f64acb6a805b7fee3013a8958cc8782d3fb0fb318cec915"
    end
  end

  describe "anonymize string with SHA256 alogrithm" do
    # The logstash config goes here.
    # At this time, only filters are supported.
    config <<-CONFIG
      filter {
        anonymize {
          fields => ["clientip"]
          key => "longencryptionkey"
          algorithm => 'SHA256'
        }
      }
    CONFIG

    sample "@fields" => {"clientip" => "123.123.123.123"} do
      insist { subject["clientip"] } == "345bec3eff242d53b568916c2610b3e393d885d6b96d643f38494fd74bf4a9ca"
    end
  end

  describe "anonymize string with SHA384 alogrithm" do
    # The logstash config goes here.
    # At this time, only filters are supported.
    config <<-CONFIG
      filter {
        anonymize {
          fields => ["clientip"]
          key => "longencryptionkey"
          algorithm => 'SHA384'
        }
      }
    CONFIG

    sample "@fields" => {"clientip" => "123.123.123.123"} do
      insist { subject["clientip"] } == "22d4c0e8c4fbcdc4887d2038fca7650f0e2e0e2457ff41c06eb2a980dded6749561c814fe182aff93e2538d18593947a"
    end
  end

  describe "anonymize string with SHA512 alogrithm" do
    # The logstash config goes here.
    # At this time, only filters are supported.
    config <<-CONFIG
      filter {
        anonymize {
          fields => ["clientip"]
          key => "longencryptionkey"
          algorithm => 'SHA512'
        }
      }
    CONFIG

    sample "@fields" => {"clientip" => "123.123.123.123"} do
      insist { subject["clientip"] } == "11c19b326936c08d6c50a3c847d883e5a1362e6a64dd55201a25f2c1ac1b673f7d8bf15b8f112a4978276d573275e3b14166e17246f670c2a539401c5bfdace8"
    end
  end

  describe "anonymize string with MD4 alogrithm" do
    # The logstash config goes here.
    # At this time, only filters are supported.
    config <<-CONFIG
      filter {
        anonymize {
          fields => ["clientip"]
          key => "longencryptionkey"
          algorithm => 'MD4'
        }
      }
    CONFIG

    sample "@fields" => {"clientip" => "123.123.123.123"} do
      insist { subject["clientip"] } == "0845cb571ab3646e51a07bcabf05e33d"
    end
  end

  describe "anonymize string with MD5 alogrithm" do
    # The logstash config goes here.
    # At this time, only filters are supported.
    config <<-CONFIG
      filter {
        anonymize {
          fields => ["clientip"]
          key => "longencryptionkey"
          algorithm => 'MD5'
        }
      }
    CONFIG

    sample "@fields" => {"clientip" => "123.123.123.123"} do
      insist { subject["clientip"] } == "9336c879e305c9604a3843fc3e75948f"
    end
  end

end
