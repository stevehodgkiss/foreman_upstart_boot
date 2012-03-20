require 'foreman'
require 'foreman/export/upstart'

class Foreman::Export::UpstartBoot < Foreman::Export::Upstart
  def export
    super
    app = self.app || File.basename(engine.directory)
    master_config = "#{location}/#{app}.conf"
    master_config_lines = File.readlines(master_config)
    File.open(master_config, 'wb') do |f|
      f.puts "start on runlevel [2345]"
      master_config_lines.each { |l| f.write(l) }
    end
  end
end