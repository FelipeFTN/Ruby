require "base64"
require "openssl"

def readFile(path)
  file = File.open(path)
  if file 
    data = file.read
    return data
  else
    puts "Not able to access the file"
    return ""
  end
end

def writeFile(path, data)
  File.open(path,"w") do |line|
    line.puts data
  end
end

def getPath()
  print "File number: "
  index = gets.chomp
  directory = "./pages/#{index}.txt"
  return directory
end

def decode(data)
  return Base64.decode64(data) 
end

def encrypt(data)
  print "Secret key: "
  secretKey = gets.chomp

  while secretKey.length < 32
    secretKey += "+"
  end

  aes = OpenSSL::Cipher::AES256.new(:CBC)
  aes.encrypt
  aes.iv = "FelipeFTNSecret+"
  aes.key = secretKey

  result = aes.update(data) + aes.final
  return result
end

def decrypt(data)
  print "Secret key: "
  secretKey = gets.chomp

  while secretKey.length < 32
    secretKey += "+"
  end
  
  aes = OpenSSL::Cipher::AES256.new(:CBC)
  aes.decrypt
  aes.iv = "FelipeFTNSecret+"
  aes.key = secretKey

  result = aes.update(data)
  return result
end

def main()
  puts "[1] Decrypt File"
  puts "[2] Encrypt File"
  puts "[3] Exit MySecret"
  print "> "
  option = gets.chomp

  if option == "1"
    path = getPath
    file = readFile(path)
    data = decrypt(file)
    puts data

  elsif option == "2"
    path = getPath
    file = readFile(path)
    data = encrypt(file)
    writeFile(path, data)
    file = readFile(path)
    puts file

  end

  puts "Good Bye!"
end

main()
