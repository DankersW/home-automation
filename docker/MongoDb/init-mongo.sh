mongo -- "$MONGO_INITDB_DATABASE" <<EOF

    var user = "admin";
    var passwd = "mongo_admin_iot";
    db.createUser({user: user, pwd: passwd, roles: [{ role: "readWrite", db: "iot_db" }]});
EOF