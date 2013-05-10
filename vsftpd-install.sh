apt-get install vsftpd -y 

cat vsftpd/vsftpd.conf >/etc/vsftpd.conf
cat vsftpd/ftpusers >/etc/ftpusers

service vsftpd restart
