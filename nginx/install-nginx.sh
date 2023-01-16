#！/bin/env/ bash
# nginx version 1.22.1

set -euxo pipefail

cd /opt/build-nginx

#cd /opt/build-nginx/libxml2-2.10.3 && ./configure &> /dev/null  && make -j4 &> /dev/null && make install &> /dev/null
#cd /opt/build-nginx/libxslt-1.1.36 && ./configure &> /dev/null && make -j4 &> /dev/null && make install &> /dev/null

cd /opt/build-nginx/nginx-1.22.1
./configure --prefix=/etc/nginx --sbin-path=/usr/sbin/nginx --modules-path=/usr/local/lib/nginx/modules --conf-path=/etc/nginx/nginx.conf --error-log-path=/var/log/nginx/error.log --http-log-path=/var/log/nginx/access.log --pid-path=/run/nginx.pid --lock-path=/run/lock/nginx.lock --http-client-body-temp-path=/var/cache/nginx/client_temp --http-proxy-temp-path=/var/cache/nginx/proxy_temp --http-fastcgi-temp-path=/var/cache/nginx/fastcgi_temp --http-uwsgi-temp-path=/var/cache/nginx/uwsgi_temp --http-scgi-temp-path=/var/cache/nginx/scgi_temp --user=nginx --group=nginx --with-compat --with-file-aio --with-threads --with-http_addition_module --with-http_auth_request_module --with-http_dav_module --with-http_flv_module --with-http_gunzip_module --with-http_gzip_static_module --with-http_mp4_module --with-http_random_index_module --with-http_realip_module --with-http_secure_link_module --with-http_slice_module --with-http_ssl_module --with-http_stub_status_module --with-http_sub_module --with-http_v2_module --with-mail --with-mail_ssl_module --with-stream --with-stream_realip_module --with-stream_ssl_module --with-stream_ssl_preread_module --with-cc-opt='-g -O2 -fdebug-prefix-map=/tmp/builder/debuild/nginx-1.22.1/debian/debuild-base/nginx-1.22.1=. -fstack-protector-strong -Wformat -Werror=format-security -Wp,-D_FORTIFY_SOURCE=2 -fPIC' --with-ld-opt='-Wl,-Bsymbolic-functions -Wl,-z,relro -Wl,-z,now -Wl,--as-needed -pie' --with-pcre-jit --with-http_image_filter_module --with-http_xslt_module --with-http_geoip_module --with-pcre=/opt/build-nginx/pcre2-10.42 --with-openssl=/opt/build-nginx/openssl-3.0.7 --with-zlib=/opt/build-nginx/zlib-1.2.11 --add-module=/opt/build-nginx/nginx-module-vts-master &> /dev/null
make -j4 &> /dev/null && make install &> /dev/null


mkdir -p /usr/local/lib/nginx/modules && mkdir -p /var/cache/nginx/{client_temp,proxy_temp,fastcgi_temp,uwsgi_temp,scgi_temp}
mkdir -p /etc/nginx/{stream_conf.d,conf.d,cert}
