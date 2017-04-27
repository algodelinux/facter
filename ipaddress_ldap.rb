Facter.add("ipaddress_ldap") do
   confine :kernel  => :linux
   setcode do
      Facter::Util::Resolution.exec("host ldap | grep -oiE '([0-9]{1,3}\.){3}[0-9]{1,3}'")
   end
end
