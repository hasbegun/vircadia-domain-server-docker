print("Started Adding the Users.");
db = db.getSiblingDB("admin");
db.createUser({
    user:"adminer",
    pwd: "noneknowsit",
    roles: [ "root" ]
});
db.createUser({
    user:"backuper",
    pwd: "noneknowsit",
    roles: [ "backup" ]
});
db.createUser({
    user:"cadiauser",
    pwd: "noneknowsit",
    roles: [{
        role: "readWrite",
        db: "domainstore"
    }]
});
db.createUser({
    user:"metaverse",
    pwd: "noneknowsit",
    roles: [{
        role: "readWrite",
        db: "tester"
    }]
});
print("End Adding the User Roles.");
