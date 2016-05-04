require "resolv"
class DnsResolver
  def DnsResolver.getAddress(domain)
    Resolv::DNS.new.each_address(domain) do |addr|
      return addr
    end
  end

  def DnsResolver.getName(ip)
    Resolv::DNS.new.getname(ip).to_s
  end
end

#puts DnsResolver.getAddress('www.google.com')
#puts DnsResolver.getName('216.58.197.68')
