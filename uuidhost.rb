if key = Facter::Util::Resolution.exec(%Q(/usr/bin/uuidgen -t))
      Facter.add("UUIDHOST") do	
             confine :kernel  => :linux
             setcode { key }
      end
end
