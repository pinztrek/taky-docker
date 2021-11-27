# This file will be read before Taky starts.
#
CONFY=/data/conf/taky.conf

#TAKY
#hostname
if [ -z "${server_address}" ]; then
	echo "Using default hostname"
else
	echo "Setting server_address to ${server_address}"
	crudini --set $CONFY taky hostname ${server_address}
fi

#node_id
if [ -z "${node_id}" ]; then
	echo "Using default node_id"
else
	echo "Setting node_id to ${node_id}"
	crudini --set $CONFY taky node_id ${node_id}
fi

#bind_ip
if [ -z "${bind_ip}" ]; then
	echo "Using default bind_ip"
else
	echo "Setting bind_ip to ${bind_ip}"
	crudini --set $CONFY taky bind_ip ${bind_ip}
fi


#redis
if [ -z "${redis}" ]; then
	echo "Using default redis (false)"
else
	echo "Setting redis to ${redis}"
	crudini --set $CONFY taky redis ${redis}
fi


#COT SERVER
#port
if [ -z "${port}" ]; then
	echo "Using default port"
else
	echo "Setting port to ${port}"
	crudini --set $CONFY cot_server port ${port}
fi

#log_cot
if [ -z "${log_cot}" ]; then
	echo "Using default cot log path"
else
	echo "Setting log_cot to ${cot_log}"
	crudini --set $CONFY cot_server log_cot ${log_cot}
fi

#cot_log
if [ "$cot_log" = true ] ; then
    echo "Setting log_cot to ${cot_log}"
    crudini --set $CONFY cot_server cot_log ${cot_log}
else
    echo "Cot logging disabled"
fi


#DATAPACKAGE SERVER
#upload_path
if [ -z "${upload_path}" ]; then
	echo "Using default upload_path"
else
	echo "Setting upload_path to ${upload_path}"
	crudini --set $CONFY dp_server upload_path ${upload_path}
fi

#SSL
#ssl_enabled

if [ "$ssl_enabled" = true ] ; then
	echo "Setting ssl_enabled to ${ssl_enabled}"
	crudini --set $CONFY ssl enabled ${ssl_enabled}
else
	echo "SSL not enabled"
fi

#client_cert_required
if [ "$client_cert_required" = true ] ; then
	echo "Setting client_cert_required to ${client_cert_required}"
	crudini --set $CONFY ssl client_cert_required ${client_cert_required}
else
	echo "Using default client_cert_required"
fi

#cert
if [ -z "${cert}" ]; then
	echo "Using default cert"
else
	echo "Setting cert to ${cert}"
	crudini --set $CONFY ssl cert ${cert}
fi

#key
if [ -z "${key}" ]; then
	echo "Using default key"
else
	echo "Setting key to ${key}"
	crudini --set $CONFY ssl key ${key}
fi

#key_pw
if [ -z "${key_pw}" ]; then
	echo "Using default key_pw"
else
	echo "Setting key_pw to ${key_pw}"
	crudini --set $CONFY ssl key_pw ${key_pw}
fi

#ca
if [ -z "${ca}" ]; then
	echo "Using default ca"
else
	echo "Setting ca to ${ca}"
	crudini --set $CONFY ssl ca ${ca}
fi

#ca_key
if [ -z "${ca_key}" ]; then
	echo "Using default ca_key"
else
	echo "Setting ca_key to ${ca_key}"
	crudini --set $CONFY ssl ca_key ${ca_key}
fi

#server_p12
if [ -z "${server_p12}" ]; then
	echo "Using default server_p12"
else
	echo "Setting server_p12 to ${server_p12}"
	crudini --set $CONFY ssl server_p12 ${server_p12}
fi

#server_p12_key
if [ -z "${server_p12_key}" ]; then
	echo "Using default server_p12_key"
else
	echo "Setting server_p12_key to ${server_p12_key}"
	crudini --set $CONFY ssl server_p12_key ${server_p12_key}
fi

