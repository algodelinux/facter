if File.exist?('/sys/firmware/acpi/tables/MSDM')
   if key = Facter::Util::Resolution.exec(%Q(hexdump -s 56 -e '/29 "%s"' /sys/firmware/acpi/tables/MSDM))
      Facter.add("WINDOWSKEY") do
                setcode { key }
      end
   end
end
