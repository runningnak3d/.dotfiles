binwalk -e $1 --dd="x509"
openssl asn1parse -inform DER -in _$1.extracted/11A8.crt
openssl x509 -text -inform DER -in _$1.extracted/11A8.crt
