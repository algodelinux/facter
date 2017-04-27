Facter.add("ipaddress_recursos") do
   confine :kernel  => :linux
   setcode do
      Facter::Util::Resolution.exec("host recursos | grep -oiE '([0-9]{1,3}\.){3}[0-9]{1,3}'")
   end
end
