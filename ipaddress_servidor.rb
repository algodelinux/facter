Facter.add("ipaddress_servidor") do
   confine :kernel  => :linux
   setcode do
      Facter::Util::Resolution.exec("host servidor | grep -oiE '([0-9]{1,3}\.){3}[0-9]{1,3}'")
   end
end
