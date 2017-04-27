Facter.add("home") do
    confine :kernel  => :linux
    setcode do
        ENV['HOME']
    end
end
