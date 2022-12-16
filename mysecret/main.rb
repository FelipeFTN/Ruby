require "base64"
require "openssl"

def readFile(path)
  simpleFile = File.new(path, "r")
  if simpleFile
    data = simpleFile.sysread(20)
    return data
  else
    puts "Not able to access the file"
    return ""
  end
end

def getFile()
  print "File number: "
  index = gets.chomp()
  directory = "./pages/#{index}.txt"
  return directory
end

def decode(data)
  return Base64.decode64(data) 
end

def decrypt(data)
  print "Secret key: "
  secretKey = gets.chomp()

  des = OpenSSL::Cipher::Cipher.new('des-ede3')
  des.decrypt
  des.key = key
  dev.iv = des.random_iv

  result = des.update(data) + des.final
  return result
end

data = readFile(getFile())
data = decrypt(data)
puts data
