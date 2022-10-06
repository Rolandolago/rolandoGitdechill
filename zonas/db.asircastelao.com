$TTL    3600
@       IN      SOA     ns.asircastelao.com. manolitopescador.chanquetehamuerto.org (
                        10000002  ; Serial
                        10800          ; Refresh [3h]
                        3600           ; Retry   [1h]
                        604800           ; Expire  [1w]
                        38400 )         ; Negative Cache TTL [10h40m]
;
@       IN      NS      ns.asircastelao.com.
ns      IN      A       10.1.0.254
test    IN      A       10.1.0.2
alias   IN      CNAME   test  