sudo apt update
sudo apt install gnupg -y


key generation 

gpg --full-generate-key

listing keys 

gpg --list-keys


Export Public keys 

gpg --export -a "user@example.com" > public.key

Import public keys 
gpg --import public.key

Create message

echo "This is a secure message using PGP." > message.txt

Encrypt and sign message 

gpg --encrypt --sign --armor -r receiver@example.com message.txt

Output 
message.txt.asc

Decrypt message 
gpg --decrypt message.txt.asc

Verify message 
gpg --verify message.txt.asc
