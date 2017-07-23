.class public Lcom/odinnet/servermonitor/data/Database;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "Database.java"


# static fields
.field private static final DB_NAME:Ljava/lang/String; = "ServerMonitor"

.field private static final DB_VERSION:I = 0x3


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    const-string v0, "ServerMonitor"

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 25
    iput-object p1, p0, Lcom/odinnet/servermonitor/data/Database;->context:Landroid/content/Context;

    .line 26
    return-void
.end method

.method private getDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 5

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/odinnet/servermonitor/data/Database;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 172
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByOtherThreads()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 174
    const-wide/16 v2, 0xa

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 175
    :catch_0
    move-exception v1

    .line 176
    .local v1, "ex":Ljava/lang/InterruptedException;
    const-class v2, Lcom/odinnet/servermonitor/data/Database;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 179
    .end local v1    # "ex":Ljava/lang/InterruptedException;
    :cond_0
    return-object v0
.end method

.method private getDatabaseRO()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/odinnet/servermonitor/data/Database;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 184
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    return-object v0
.end method

.method private upgradeToVersion2(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 25
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 54
    const-string v5, "Settings"

    sget-object v6, Lcom/odinnet/servermonitor/data/DBStrings;->SETTINGS_TABLE_COLUMNS:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 55
    .local v13, "c2":Landroid/database/Cursor;
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 56
    const-string v4, "startOnBoot"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 57
    const/4 v4, 0x1

    sput-boolean v4, Lcom/odinnet/servermonitor/data/Settings;->START_ON_BOOT:Z

    .line 61
    :goto_0
    const-string v4, "interval"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    sput-wide v4, Lcom/odinnet/servermonitor/data/Settings;->INTERVAL:J

    .line 67
    :goto_1
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 69
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/data/Database;->context:Landroid/content/Context;

    move-object v4, v0

    const-string v5, "serverMonitorSettings"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v21

    .line 71
    .local v21, "prefs":Landroid/content/SharedPreferences;
    invoke-interface/range {v21 .. v21}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "enableSound"

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 72
    invoke-interface/range {v21 .. v21}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "enableVibrate"

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 73
    invoke-interface/range {v21 .. v21}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "startOnBoot"

    sget-boolean v6, Lcom/odinnet/servermonitor/data/Settings;->START_ON_BOOT:Z

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 74
    invoke-interface/range {v21 .. v21}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "pollFrequency"

    sget-wide v6, Lcom/odinnet/servermonitor/data/Settings;->INTERVAL:J

    const-wide/16 v8, 0x3c

    div-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 78
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v23, "servers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/odinnet/servermonitor/data/Server;>;"
    const-string v5, "Server"

    sget-object v6, Lcom/odinnet/servermonitor/data/DBStrings;->OLD_SERVER_TABLE_COLUMNS:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 80
    .local v12, "c":Landroid/database/Cursor;
    :goto_2
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 81
    new-instance v22, Lcom/odinnet/servermonitor/data/Server;

    invoke-direct/range {v22 .. v22}, Lcom/odinnet/servermonitor/data/Server;-><init>()V

    .line 82
    .local v22, "server":Lcom/odinnet/servermonitor/data/Server;
    const-string v4, "serverName"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/data/Server;->setServerName(Ljava/lang/String;)V

    .line 83
    sget-object v4, Lcom/odinnet/servermonitor/data/Status;->OFFLINE:Lcom/odinnet/servermonitor/data/Status;

    move-object/from16 v0, v22

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/data/Server;->setStatus(Lcom/odinnet/servermonitor/data/Status;)V

    .line 84
    const-string v4, ""

    move-object/from16 v0, v22

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/data/Server;->setStatusMessage(Ljava/lang/String;)V

    .line 85
    const-string v4, "host"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/data/Server;->setHost(Ljava/lang/String;)V

    .line 86
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    move-object/from16 v0, v22

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/data/Server;->setLastUpdate(Ljava/util/Date;)V

    .line 88
    const-string v4, "connectionType"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 89
    new-instance v14, Lcom/odinnet/servermonitor/data/ServerComponent;

    invoke-direct {v14}, Lcom/odinnet/servermonitor/data/ServerComponent;-><init>()V

    .line 90
    .local v14, "comp":Lcom/odinnet/servermonitor/data/ServerComponent;
    invoke-virtual/range {v22 .. v22}, Lcom/odinnet/servermonitor/data/Server;->getServerName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Lcom/odinnet/servermonitor/data/ServerComponent;->setComponentName(Ljava/lang/String;)V

    .line 91
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v14, v4}, Lcom/odinnet/servermonitor/data/ServerComponent;->setLastUpdate(Ljava/util/Date;)V

    .line 92
    sget-object v4, Lcom/odinnet/servermonitor/data/Status;->OFFLINE:Lcom/odinnet/servermonitor/data/Status;

    invoke-virtual {v14, v4}, Lcom/odinnet/servermonitor/data/ServerComponent;->setStatus(Lcom/odinnet/servermonitor/data/Status;)V

    .line 93
    const-string v4, ""

    invoke-virtual {v14, v4}, Lcom/odinnet/servermonitor/data/ServerComponent;->setStatusMessage(Ljava/lang/String;)V

    .line 95
    new-instance v18, Lcom/odinnet/servermonitor/data/ComponentConnection;

    invoke-direct/range {v18 .. v18}, Lcom/odinnet/servermonitor/data/ComponentConnection;-><init>()V

    .line 96
    .local v18, "con":Lcom/odinnet/servermonitor/data/ComponentConnection;
    sget-object v4, Lcom/odinnet/servermonitor/data/ComponentConnection$ConnectionType;->TCP:Lcom/odinnet/servermonitor/data/ComponentConnection$ConnectionType;

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/data/ComponentConnection;->setConnectionType(Lcom/odinnet/servermonitor/data/ComponentConnection$ConnectionType;)V

    .line 97
    const-string v4, "port"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v18

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/data/ComponentConnection;->setRemotePort(I)V

    .line 98
    const/4 v4, 0x0

    move-object/from16 v0, v18

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/data/ComponentConnection;->setLocalPort(I)V

    .line 99
    const-string v4, ""

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/data/ComponentConnection;->setSshPassword(Ljava/lang/String;)V

    .line 100
    const/4 v4, 0x0

    move-object/from16 v0, v18

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/data/ComponentConnection;->setSshPort(I)V

    .line 101
    const-string v4, ""

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/data/ComponentConnection;->setSshUsername(Ljava/lang/String;)V

    .line 103
    move-object v0, v14

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/data/ServerComponent;->setConnection(Lcom/odinnet/servermonitor/data/ComponentConnection;)V

    .line 104
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .local v17, "comps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/odinnet/servermonitor/data/ServerComponent;>;"
    move-object/from16 v0, v17

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/data/Server;->setComponents(Ljava/util/ArrayList;)V

    .line 108
    .end local v14    # "comp":Lcom/odinnet/servermonitor/data/ServerComponent;
    .end local v17    # "comps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/odinnet/servermonitor/data/ServerComponent;>;"
    .end local v18    # "con":Lcom/odinnet/servermonitor/data/ComponentConnection;
    :cond_0
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 59
    .end local v12    # "c":Landroid/database/Cursor;
    .end local v21    # "prefs":Landroid/content/SharedPreferences;
    .end local v22    # "server":Lcom/odinnet/servermonitor/data/Server;
    .end local v23    # "servers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/odinnet/servermonitor/data/Server;>;"
    :cond_1
    const/4 v4, 0x0

    sput-boolean v4, Lcom/odinnet/servermonitor/data/Settings;->START_ON_BOOT:Z

    goto/16 :goto_0

    .line 64
    :cond_2
    const/4 v4, 0x1

    sput-boolean v4, Lcom/odinnet/servermonitor/data/Settings;->START_ON_BOOT:Z

    .line 65
    const-wide/32 v4, 0xdbba0

    sput-wide v4, Lcom/odinnet/servermonitor/data/Settings;->INTERVAL:J

    goto/16 :goto_1

    .line 110
    .restart local v12    # "c":Landroid/database/Cursor;
    .restart local v21    # "prefs":Landroid/content/SharedPreferences;
    .restart local v23    # "servers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/odinnet/servermonitor/data/Server;>;"
    :cond_3
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 112
    const-string v4, "DROP TABLE Settings;"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 113
    const-string v4, "DROP TABLE Server;"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 115
    const-string v4, "CREATE TABLE Server(serverID INTEGER PRIMARY KEY AUTOINCREMENT, serverName VARCHAR, host VARCHAR, status INT, statusMessage VARCHAR, lastUpdate INT, ping INT );"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 116
    const-string v4, "CREATE TABLE ServerComponent(componentID INTEGER PRIMARY KEY AUTOINCREMENT, serverID INT, componentName VARCHAR, status INT, statusMessage VARCHAR, lastUpdate INT );"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 117
    const-string v4, "CREATE TABLE ComponentConnection(connectionID INTEGER PRIMARY KEY AUTOINCREMENT, localPort INT, remotePort INT, sshPort INT, sshUsername VARCHAR, sshPassword VARCHAR, connectionType INT, componentID INT );"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 119
    const/16 v20, 0x0

    .local v20, "index":I
    :goto_3
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v20

    move v1, v4

    if-ge v0, v1, :cond_8

    .line 120
    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/odinnet/servermonitor/data/Server;

    .line 122
    .restart local v22    # "server":Lcom/odinnet/servermonitor/data/Server;
    new-instance v24, Landroid/content/ContentValues;

    invoke-direct/range {v24 .. v24}, Landroid/content/ContentValues;-><init>()V

    .line 123
    .local v24, "values":Landroid/content/ContentValues;
    const-string v4, "serverName"

    invoke-virtual/range {v22 .. v22}, Lcom/odinnet/servermonitor/data/Server;->getServerName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v24

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v4, "host"

    invoke-virtual/range {v22 .. v22}, Lcom/odinnet/servermonitor/data/Server;->getHost()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v24

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual/range {v22 .. v22}, Lcom/odinnet/servermonitor/data/Server;->getStatus()Lcom/odinnet/servermonitor/data/Status;

    move-result-object v4

    sget-object v5, Lcom/odinnet/servermonitor/data/Status;->ONLINE:Lcom/odinnet/servermonitor/data/Status;

    if-ne v4, v5, :cond_5

    .line 126
    const-string v4, "status"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v24

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 130
    :goto_4
    const-string v4, "statusMessage"

    invoke-virtual/range {v22 .. v22}, Lcom/odinnet/servermonitor/data/Server;->getStatusMessage()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v24

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v4, "lastUpdate"

    invoke-virtual/range {v22 .. v22}, Lcom/odinnet/servermonitor/data/Server;->getLastUpdate()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v24

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 132
    const-string v4, "Server"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v5

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    move-wide v0, v4

    long-to-int v0, v0

    move/from16 v19, v0

    .line 135
    .local v19, "id":I
    invoke-virtual/range {v22 .. v22}, Lcom/odinnet/servermonitor/data/Server;->getComponents()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 136
    invoke-virtual/range {v22 .. v22}, Lcom/odinnet/servermonitor/data/Server;->getComponents()Ljava/util/ArrayList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/odinnet/servermonitor/data/ServerComponent;

    .line 137
    .local v16, "component":Lcom/odinnet/servermonitor/data/ServerComponent;
    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/data/ServerComponent;->setServerID(I)V

    .line 138
    new-instance v24, Landroid/content/ContentValues;

    .end local v24    # "values":Landroid/content/ContentValues;
    invoke-direct/range {v24 .. v24}, Landroid/content/ContentValues;-><init>()V

    .line 139
    .restart local v24    # "values":Landroid/content/ContentValues;
    const-string v4, "serverID"

    invoke-virtual/range {v16 .. v16}, Lcom/odinnet/servermonitor/data/ServerComponent;->getServerID()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v24

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 140
    const-string v4, "componentName"

    invoke-virtual/range {v16 .. v16}, Lcom/odinnet/servermonitor/data/ServerComponent;->getComponentName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v24

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-virtual/range {v16 .. v16}, Lcom/odinnet/servermonitor/data/ServerComponent;->getStatus()Lcom/odinnet/servermonitor/data/Status;

    move-result-object v4

    sget-object v5, Lcom/odinnet/servermonitor/data/Status;->ONLINE:Lcom/odinnet/servermonitor/data/Status;

    if-ne v4, v5, :cond_6

    .line 142
    const-string v4, "status"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v24

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 146
    :goto_5
    const-string v4, "statusMessage"

    invoke-virtual/range {v16 .. v16}, Lcom/odinnet/servermonitor/data/ServerComponent;->getStatusMessage()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v24

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v4, "lastUpdate"

    invoke-virtual/range {v16 .. v16}, Lcom/odinnet/servermonitor/data/ServerComponent;->getLastUpdate()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v24

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 148
    const-string v4, "ServerComponent"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v5

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    long-to-int v15, v4

    .line 150
    .local v15, "compId":I
    invoke-virtual/range {v16 .. v16}, Lcom/odinnet/servermonitor/data/ServerComponent;->getConnection()Lcom/odinnet/servermonitor/data/ComponentConnection;

    move-result-object v18

    .line 151
    .restart local v18    # "con":Lcom/odinnet/servermonitor/data/ComponentConnection;
    new-instance v24, Landroid/content/ContentValues;

    .end local v24    # "values":Landroid/content/ContentValues;
    invoke-direct/range {v24 .. v24}, Landroid/content/ContentValues;-><init>()V

    .line 152
    .restart local v24    # "values":Landroid/content/ContentValues;
    const-string v4, "componentID"

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v24

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 153
    const-string v4, "localPort"

    invoke-virtual/range {v18 .. v18}, Lcom/odinnet/servermonitor/data/ComponentConnection;->getLocalPort()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v24

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 154
    const-string v4, "remotePort"

    invoke-virtual/range {v18 .. v18}, Lcom/odinnet/servermonitor/data/ComponentConnection;->getRemotePort()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v24

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 155
    const-string v4, "sshPort"

    invoke-virtual/range {v18 .. v18}, Lcom/odinnet/servermonitor/data/ComponentConnection;->getSshPort()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v24

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 156
    const-string v4, "sshUsername"

    invoke-virtual/range {v18 .. v18}, Lcom/odinnet/servermonitor/data/ComponentConnection;->getSshUsername()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v24

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v4, "sshPassword"

    invoke-virtual/range {v18 .. v18}, Lcom/odinnet/servermonitor/data/ComponentConnection;->getSshPassword()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v24

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-virtual/range {v18 .. v18}, Lcom/odinnet/servermonitor/data/ComponentConnection;->getConnectionType()Lcom/odinnet/servermonitor/data/ComponentConnection$ConnectionType;

    move-result-object v4

    sget-object v5, Lcom/odinnet/servermonitor/data/ComponentConnection$ConnectionType;->TCP:Lcom/odinnet/servermonitor/data/ComponentConnection$ConnectionType;

    if-ne v4, v5, :cond_7

    .line 159
    const-string v4, "connectionType"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v24

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 164
    :goto_6
    const-string v4, "ComponentConnection"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v5

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 119
    .end local v15    # "compId":I
    .end local v16    # "component":Lcom/odinnet/servermonitor/data/ServerComponent;
    .end local v18    # "con":Lcom/odinnet/servermonitor/data/ComponentConnection;
    :cond_4
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_3

    .line 128
    .end local v19    # "id":I
    :cond_5
    const-string v4, "status"

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v24

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_4

    .line 144
    .restart local v16    # "component":Lcom/odinnet/servermonitor/data/ServerComponent;
    .restart local v19    # "id":I
    :cond_6
    const-string v4, "status"

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v24

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_5

    .line 161
    .restart local v15    # "compId":I
    .restart local v18    # "con":Lcom/odinnet/servermonitor/data/ComponentConnection;
    :cond_7
    const-string v4, "connectionType"

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v24

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_6

    .line 168
    .end local v15    # "compId":I
    .end local v16    # "component":Lcom/odinnet/servermonitor/data/ServerComponent;
    .end local v18    # "con":Lcom/odinnet/servermonitor/data/ComponentConnection;
    .end local v19    # "id":I
    .end local v22    # "server":Lcom/odinnet/servermonitor/data/Server;
    .end local v24    # "values":Landroid/content/ContentValues;
    :cond_8
    return-void
.end method

.method private upgradeToVersion3(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 48
    const-string v0, "ALTER TABLE Server ADD COLUMN ping INT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 49
    const-string v0, "UPDATE Server SET ping = 1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 50
    return-void
.end method


# virtual methods
.method public addComponent(Lcom/odinnet/servermonitor/data/ServerComponent;)V
    .locals 11
    .param p1, "component"    # Lcom/odinnet/servermonitor/data/ServerComponent;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const-string v6, "status"

    const-string v10, "connectionType"

    .line 371
    invoke-direct {p0}, Lcom/odinnet/servermonitor/data/Database;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 373
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 374
    .local v3, "values":Landroid/content/ContentValues;
    const-string v4, "serverID"

    invoke-virtual {p1}, Lcom/odinnet/servermonitor/data/ServerComponent;->getServerID()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 375
    const-string v4, "componentName"

    invoke-virtual {p1}, Lcom/odinnet/servermonitor/data/ServerComponent;->getComponentName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    invoke-virtual {p1}, Lcom/odinnet/servermonitor/data/ServerComponent;->getStatus()Lcom/odinnet/servermonitor/data/Status;

    move-result-object v4

    sget-object v5, Lcom/odinnet/servermonitor/data/Status;->ONLINE:Lcom/odinnet/servermonitor/data/Status;

    if-ne v4, v5, :cond_0

    .line 377
    const-string v4, "status"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 381
    :goto_0
    const-string v4, "statusMessage"

    invoke-virtual {p1}, Lcom/odinnet/servermonitor/data/ServerComponent;->getStatusMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    const-string v4, "lastUpdate"

    invoke-virtual {p1}, Lcom/odinnet/servermonitor/data/ServerComponent;->getLastUpdate()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 383
    const-string v4, "ServerComponent"

    invoke-virtual {v1, v4, v9, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    long-to-int v2, v4

    .line 385
    .local v2, "id":I
    invoke-virtual {p1}, Lcom/odinnet/servermonitor/data/ServerComponent;->getConnection()Lcom/odinnet/servermonitor/data/ComponentConnection;

    move-result-object v0

    .line 386
    .local v0, "con":Lcom/odinnet/servermonitor/data/ComponentConnection;
    new-instance v3, Landroid/content/ContentValues;

    .end local v3    # "values":Landroid/content/ContentValues;
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 387
    .restart local v3    # "values":Landroid/content/ContentValues;
    const-string v4, "componentID"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 388
    const-string v4, "localPort"

    invoke-virtual {v0}, Lcom/odinnet/servermonitor/data/ComponentConnection;->getLocalPort()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 389
    const-string v4, "remotePort"

    invoke-virtual {v0}, Lcom/odinnet/servermonitor/data/ComponentConnection;->getRemotePort()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 390
    const-string v4, "sshPort"

    invoke-virtual {v0}, Lcom/odinnet/servermonitor/data/ComponentConnection;->getSshPort()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 391
    const-string v4, "sshUsername"

    invoke-virtual {v0}, Lcom/odinnet/servermonitor/data/ComponentConnection;->getSshUsername()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    const-string v4, "sshPassword"

    invoke-virtual {v0}, Lcom/odinnet/servermonitor/data/ComponentConnection;->getSshPassword()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    invoke-virtual {v0}, Lcom/odinnet/servermonitor/data/ComponentConnection;->getConnectionType()Lcom/odinnet/servermonitor/data/ComponentConnection$ConnectionType;

    move-result-object v4

    sget-object v5, Lcom/odinnet/servermonitor/data/ComponentConnection$ConnectionType;->TCP:Lcom/odinnet/servermonitor/data/ComponentConnection$ConnectionType;

    if-ne v4, v5, :cond_1

    .line 394
    const-string v4, "connectionType"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v10, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 399
    :goto_1
    const-string v4, "ComponentConnection"

    invoke-virtual {v1, v4, v9, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 401
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 402
    return-void

    .line 379
    .end local v0    # "con":Lcom/odinnet/servermonitor/data/ComponentConnection;
    .end local v2    # "id":I
    :cond_0
    const-string v4, "status"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 396
    .restart local v0    # "con":Lcom/odinnet/servermonitor/data/ComponentConnection;
    .restart local v2    # "id":I
    :cond_1
    const-string v4, "connectionType"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v10, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1
.end method

.method public addServer(Lcom/odinnet/servermonitor/data/Server;)J
    .locals 7
    .param p1, "server"    # Lcom/odinnet/servermonitor/data/Server;

    .prologue
    const-string v6, "status"

    .line 349
    invoke-direct {p0}, Lcom/odinnet/servermonitor/data/Database;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 350
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-wide/16 v1, 0x0

    .line 351
    .local v1, "id":J
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 352
    .local v3, "values":Landroid/content/ContentValues;
    const-string v4, "serverName"

    invoke-virtual {p1}, Lcom/odinnet/servermonitor/data/Server;->getServerName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    const-string v4, "host"

    invoke-virtual {p1}, Lcom/odinnet/servermonitor/data/Server;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    invoke-virtual {p1}, Lcom/odinnet/servermonitor/data/Server;->getStatus()Lcom/odinnet/servermonitor/data/Status;

    move-result-object v4

    sget-object v5, Lcom/odinnet/servermonitor/data/Status;->ONLINE:Lcom/odinnet/servermonitor/data/Status;

    if-ne v4, v5, :cond_0

    .line 355
    const-string v4, "status"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 361
    :goto_0
    const-string v4, "statusMessage"

    invoke-virtual {p1}, Lcom/odinnet/servermonitor/data/Server;->getStatusMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    const-string v4, "lastUpdate"

    invoke-virtual {p1}, Lcom/odinnet/servermonitor/data/Server;->getLastUpdate()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 363
    const-string v4, "ping"

    invoke-virtual {p1}, Lcom/odinnet/servermonitor/data/Server;->isPing()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 364
    const-string v4, "Server"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 366
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 367
    return-wide v1

    .line 356
    :cond_0
    invoke-virtual {p1}, Lcom/odinnet/servermonitor/data/Server;->getStatus()Lcom/odinnet/servermonitor/data/Status;

    move-result-object v4

    sget-object v5, Lcom/odinnet/servermonitor/data/Status;->OFFLINE:Lcom/odinnet/servermonitor/data/Status;

    if-ne v4, v5, :cond_1

    .line 357
    const-string v4, "status"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 359
    :cond_1
    const-string v4, "status"

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public deleteComponent(I)V
    .locals 6
    .param p1, "componentID"    # I

    .prologue
    const/4 v4, 0x0

    const-string v5, "componentID = "

    .line 470
    invoke-direct {p0}, Lcom/odinnet/servermonitor/data/Database;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 472
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "ServerComponent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "componentID = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 473
    const-string v1, "ComponentConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "componentID = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 474
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 475
    return-void
.end method

.method public deleteServer(I)V
    .locals 6
    .param p1, "serverID"    # I

    .prologue
    .line 459
    invoke-direct {p0}, Lcom/odinnet/servermonitor/data/Database;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 461
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "Server"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "serverID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 462
    invoke-virtual {p0, p1}, Lcom/odinnet/servermonitor/data/Database;->getServerComponents(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 463
    .local v0, "components":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/odinnet/servermonitor/data/ServerComponent;>;"
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 464
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/odinnet/servermonitor/data/ServerComponent;

    invoke-virtual {v3}, Lcom/odinnet/servermonitor/data/ServerComponent;->getComponentID()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/odinnet/servermonitor/data/Database;->deleteComponent(I)V

    .line 463
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 466
    :cond_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 467
    return-void
.end method

.method public getServer(I)Lcom/odinnet/servermonitor/data/Server;
    .locals 12
    .param p1, "serverID"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v4, 0x0

    const-string v11, "status"

    .line 318
    new-instance v9, Lcom/odinnet/servermonitor/data/Server;

    invoke-direct {v9}, Lcom/odinnet/servermonitor/data/Server;-><init>()V

    .line 319
    .local v9, "server":Lcom/odinnet/servermonitor/data/Server;
    invoke-direct {p0}, Lcom/odinnet/servermonitor/data/Database;->getDatabaseRO()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 320
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "Server"

    sget-object v2, Lcom/odinnet/servermonitor/data/DBStrings;->SERVER_TABLE_COLUMNS:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "serverID = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 321
    .local v8, "c":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 323
    const-string v1, "serverID"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v9, v1}, Lcom/odinnet/servermonitor/data/Server;->setServerID(I)V

    .line 324
    const-string v1, "host"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/odinnet/servermonitor/data/Server;->setHost(Ljava/lang/String;)V

    .line 325
    new-instance v1, Ljava/util/Date;

    const-string v2, "lastUpdate"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v1}, Lcom/odinnet/servermonitor/data/Server;->setLastUpdate(Ljava/util/Date;)V

    .line 326
    const-string v1, "serverName"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/odinnet/servermonitor/data/Server;->setServerName(Ljava/lang/String;)V

    .line 327
    const-string v1, "status"

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v10, :cond_1

    .line 328
    sget-object v1, Lcom/odinnet/servermonitor/data/Status;->ONLINE:Lcom/odinnet/servermonitor/data/Status;

    invoke-virtual {v9, v1}, Lcom/odinnet/servermonitor/data/Server;->setStatus(Lcom/odinnet/servermonitor/data/Status;)V

    .line 334
    :goto_0
    const-string v1, "ping"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v10, :cond_3

    .line 335
    invoke-virtual {v9, v10}, Lcom/odinnet/servermonitor/data/Server;->setPing(Z)V

    .line 339
    :goto_1
    const-string v1, "statusMessage"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/odinnet/servermonitor/data/Server;->setStatusMessage(Ljava/lang/String;)V

    .line 340
    invoke-virtual {v9}, Lcom/odinnet/servermonitor/data/Server;->getServerID()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/odinnet/servermonitor/data/Database;->getServerComponents(I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/odinnet/servermonitor/data/Server;->setComponents(Ljava/util/ArrayList;)V

    .line 343
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 344
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 345
    return-object v9

    .line 329
    :cond_1
    const-string v1, "status"

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 330
    sget-object v1, Lcom/odinnet/servermonitor/data/Status;->OFFLINE:Lcom/odinnet/servermonitor/data/Status;

    invoke-virtual {v9, v1}, Lcom/odinnet/servermonitor/data/Server;->setStatus(Lcom/odinnet/servermonitor/data/Status;)V

    goto :goto_0

    .line 332
    :cond_2
    sget-object v1, Lcom/odinnet/servermonitor/data/Status;->COMPONENT_OFFLINE:Lcom/odinnet/servermonitor/data/Status;

    invoke-virtual {v9, v1}, Lcom/odinnet/servermonitor/data/Server;->setStatus(Lcom/odinnet/servermonitor/data/Status;)V

    goto :goto_0

    .line 337
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Lcom/odinnet/servermonitor/data/Server;->setPing(Z)V

    goto :goto_1
.end method

.method public getServerComponent(I)Lcom/odinnet/servermonitor/data/ServerComponent;
    .locals 14
    .param p1, "componentID"    # I

    .prologue
    const/4 v12, 0x1

    const/4 v4, 0x0

    const-string v13, "componentID = "

    .line 222
    new-instance v10, Lcom/odinnet/servermonitor/data/ServerComponent;

    invoke-direct {v10}, Lcom/odinnet/servermonitor/data/ServerComponent;-><init>()V

    .line 224
    .local v10, "component":Lcom/odinnet/servermonitor/data/ServerComponent;
    invoke-direct {p0}, Lcom/odinnet/servermonitor/data/Database;->getDatabaseRO()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 225
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "ServerComponent"

    sget-object v2, Lcom/odinnet/servermonitor/data/DBStrings;->SERVER_COMPONENT_TABLE_COLUMNS:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "componentID = "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 226
    .local v8, "c":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 227
    const-string v1, "componentID"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v10, v1}, Lcom/odinnet/servermonitor/data/ServerComponent;->setComponentID(I)V

    .line 228
    const-string v1, "componentName"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/odinnet/servermonitor/data/ServerComponent;->setComponentName(Ljava/lang/String;)V

    .line 229
    new-instance v1, Ljava/util/Date;

    const-string v2, "lastUpdate"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v1}, Lcom/odinnet/servermonitor/data/ServerComponent;->setLastUpdate(Ljava/util/Date;)V

    .line 230
    const-string v1, "serverID"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v10, v1}, Lcom/odinnet/servermonitor/data/ServerComponent;->setServerID(I)V

    .line 231
    const-string v1, "status"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v12, :cond_2

    .line 232
    sget-object v1, Lcom/odinnet/servermonitor/data/Status;->ONLINE:Lcom/odinnet/servermonitor/data/Status;

    invoke-virtual {v10, v1}, Lcom/odinnet/servermonitor/data/ServerComponent;->setStatus(Lcom/odinnet/servermonitor/data/Status;)V

    .line 236
    :goto_0
    const-string v1, "statusMessage"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/odinnet/servermonitor/data/ServerComponent;->setStatusMessage(Ljava/lang/String;)V

    .line 239
    const-string v1, "ComponentConnection"

    sget-object v2, Lcom/odinnet/servermonitor/data/DBStrings;->COMPONENT_CONNECTION_TABLE_COLUMNS:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "componentID = "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Lcom/odinnet/servermonitor/data/ServerComponent;->getComponentID()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 241
    .local v9, "c2":Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 242
    new-instance v11, Lcom/odinnet/servermonitor/data/ComponentConnection;

    invoke-direct {v11}, Lcom/odinnet/servermonitor/data/ComponentConnection;-><init>()V

    .line 243
    .local v11, "con":Lcom/odinnet/servermonitor/data/ComponentConnection;
    const-string v1, "connectionID"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v11, v1}, Lcom/odinnet/servermonitor/data/ComponentConnection;->setConnectionID(I)V

    .line 244
    const-string v1, "connectionType"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v12, :cond_3

    .line 245
    sget-object v1, Lcom/odinnet/servermonitor/data/ComponentConnection$ConnectionType;->TCP:Lcom/odinnet/servermonitor/data/ComponentConnection$ConnectionType;

    invoke-virtual {v11, v1}, Lcom/odinnet/servermonitor/data/ComponentConnection;->setConnectionType(Lcom/odinnet/servermonitor/data/ComponentConnection$ConnectionType;)V

    .line 250
    :goto_1
    const-string v1, "localPort"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v11, v1}, Lcom/odinnet/servermonitor/data/ComponentConnection;->setLocalPort(I)V

    .line 251
    const-string v1, "remotePort"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v11, v1}, Lcom/odinnet/servermonitor/data/ComponentConnection;->setRemotePort(I)V

    .line 252
    const-string v1, "sshPassword"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/odinnet/servermonitor/data/ComponentConnection;->setSshPassword(Ljava/lang/String;)V

    .line 253
    const-string v1, "sshPort"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v11, v1}, Lcom/odinnet/servermonitor/data/ComponentConnection;->setSshPort(I)V

    .line 254
    const-string v1, "sshUsername"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/odinnet/servermonitor/data/ComponentConnection;->setSshUsername(Ljava/lang/String;)V

    .line 255
    invoke-virtual {v10}, Lcom/odinnet/servermonitor/data/ServerComponent;->getComponentID()I

    move-result v1

    invoke-virtual {v11, v1}, Lcom/odinnet/servermonitor/data/ComponentConnection;->setComponentID(I)V

    .line 256
    invoke-virtual {v10, v11}, Lcom/odinnet/servermonitor/data/ServerComponent;->setConnection(Lcom/odinnet/servermonitor/data/ComponentConnection;)V

    .line 258
    .end local v11    # "con":Lcom/odinnet/servermonitor/data/ComponentConnection;
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 261
    .end local v9    # "c2":Landroid/database/Cursor;
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 262
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 265
    return-object v10

    .line 234
    :cond_2
    sget-object v1, Lcom/odinnet/servermonitor/data/Status;->OFFLINE:Lcom/odinnet/servermonitor/data/Status;

    invoke-virtual {v10, v1}, Lcom/odinnet/servermonitor/data/ServerComponent;->setStatus(Lcom/odinnet/servermonitor/data/Status;)V

    goto/16 :goto_0

    .line 247
    .restart local v9    # "c2":Landroid/database/Cursor;
    .restart local v11    # "con":Lcom/odinnet/servermonitor/data/ComponentConnection;
    :cond_3
    sget-object v1, Lcom/odinnet/servermonitor/data/ComponentConnection$ConnectionType;->SSH:Lcom/odinnet/servermonitor/data/ComponentConnection$ConnectionType;

    invoke-virtual {v11, v1}, Lcom/odinnet/servermonitor/data/ComponentConnection;->setConnectionType(Lcom/odinnet/servermonitor/data/ComponentConnection$ConnectionType;)V

    goto :goto_1
.end method

.method public getServerComponents(I)Ljava/util/ArrayList;
    .locals 14
    .param p1, "serverID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/odinnet/servermonitor/data/ServerComponent;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v13, 0x1

    const/4 v4, 0x0

    .line 269
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 271
    .local v11, "components":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/odinnet/servermonitor/data/ServerComponent;>;"
    invoke-direct {p0}, Lcom/odinnet/servermonitor/data/Database;->getDatabaseRO()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 272
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "ServerComponent"

    sget-object v2, Lcom/odinnet/servermonitor/data/DBStrings;->SERVER_COMPONENT_TABLE_COLUMNS:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "serverID = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 273
    .local v8, "c":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 274
    new-instance v10, Lcom/odinnet/servermonitor/data/ServerComponent;

    invoke-direct {v10}, Lcom/odinnet/servermonitor/data/ServerComponent;-><init>()V

    .line 275
    .local v10, "component":Lcom/odinnet/servermonitor/data/ServerComponent;
    const-string v1, "componentID"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v10, v1}, Lcom/odinnet/servermonitor/data/ServerComponent;->setComponentID(I)V

    .line 276
    const-string v1, "componentName"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/odinnet/servermonitor/data/ServerComponent;->setComponentName(Ljava/lang/String;)V

    .line 277
    new-instance v1, Ljava/util/Date;

    const-string v2, "lastUpdate"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v1}, Lcom/odinnet/servermonitor/data/ServerComponent;->setLastUpdate(Ljava/util/Date;)V

    .line 278
    invoke-virtual {v10, p1}, Lcom/odinnet/servermonitor/data/ServerComponent;->setServerID(I)V

    .line 279
    const-string v1, "status"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v13, :cond_1

    .line 280
    sget-object v1, Lcom/odinnet/servermonitor/data/Status;->ONLINE:Lcom/odinnet/servermonitor/data/Status;

    invoke-virtual {v10, v1}, Lcom/odinnet/servermonitor/data/ServerComponent;->setStatus(Lcom/odinnet/servermonitor/data/Status;)V

    .line 284
    :goto_1
    const-string v1, "statusMessage"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/odinnet/servermonitor/data/ServerComponent;->setStatusMessage(Ljava/lang/String;)V

    .line 287
    const-string v1, "ComponentConnection"

    sget-object v2, Lcom/odinnet/servermonitor/data/DBStrings;->COMPONENT_CONNECTION_TABLE_COLUMNS:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "componentID = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Lcom/odinnet/servermonitor/data/ServerComponent;->getComponentID()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 289
    .local v9, "c2":Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 290
    new-instance v12, Lcom/odinnet/servermonitor/data/ComponentConnection;

    invoke-direct {v12}, Lcom/odinnet/servermonitor/data/ComponentConnection;-><init>()V

    .line 291
    .local v12, "con":Lcom/odinnet/servermonitor/data/ComponentConnection;
    const-string v1, "connectionID"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v12, v1}, Lcom/odinnet/servermonitor/data/ComponentConnection;->setConnectionID(I)V

    .line 292
    const-string v1, "connectionType"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v13, :cond_2

    .line 293
    sget-object v1, Lcom/odinnet/servermonitor/data/ComponentConnection$ConnectionType;->TCP:Lcom/odinnet/servermonitor/data/ComponentConnection$ConnectionType;

    invoke-virtual {v12, v1}, Lcom/odinnet/servermonitor/data/ComponentConnection;->setConnectionType(Lcom/odinnet/servermonitor/data/ComponentConnection$ConnectionType;)V

    .line 298
    :goto_2
    const-string v1, "localPort"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v12, v1}, Lcom/odinnet/servermonitor/data/ComponentConnection;->setLocalPort(I)V

    .line 299
    const-string v1, "remotePort"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v12, v1}, Lcom/odinnet/servermonitor/data/ComponentConnection;->setRemotePort(I)V

    .line 300
    const-string v1, "sshPassword"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Lcom/odinnet/servermonitor/data/ComponentConnection;->setSshPassword(Ljava/lang/String;)V

    .line 301
    const-string v1, "sshPort"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v12, v1}, Lcom/odinnet/servermonitor/data/ComponentConnection;->setSshPort(I)V

    .line 302
    const-string v1, "sshUsername"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Lcom/odinnet/servermonitor/data/ComponentConnection;->setSshUsername(Ljava/lang/String;)V

    .line 303
    invoke-virtual {v10}, Lcom/odinnet/servermonitor/data/ServerComponent;->getComponentID()I

    move-result v1

    invoke-virtual {v12, v1}, Lcom/odinnet/servermonitor/data/ComponentConnection;->setComponentID(I)V

    .line 304
    invoke-virtual {v10, v12}, Lcom/odinnet/servermonitor/data/ServerComponent;->setConnection(Lcom/odinnet/servermonitor/data/ComponentConnection;)V

    .line 306
    .end local v12    # "con":Lcom/odinnet/servermonitor/data/ComponentConnection;
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 308
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 282
    .end local v9    # "c2":Landroid/database/Cursor;
    :cond_1
    sget-object v1, Lcom/odinnet/servermonitor/data/Status;->OFFLINE:Lcom/odinnet/servermonitor/data/Status;

    invoke-virtual {v10, v1}, Lcom/odinnet/servermonitor/data/ServerComponent;->setStatus(Lcom/odinnet/servermonitor/data/Status;)V

    goto/16 :goto_1

    .line 295
    .restart local v9    # "c2":Landroid/database/Cursor;
    .restart local v12    # "con":Lcom/odinnet/servermonitor/data/ComponentConnection;
    :cond_2
    sget-object v1, Lcom/odinnet/servermonitor/data/ComponentConnection$ConnectionType;->SSH:Lcom/odinnet/servermonitor/data/ComponentConnection$ConnectionType;

    invoke-virtual {v12, v1}, Lcom/odinnet/servermonitor/data/ComponentConnection;->setConnectionType(Lcom/odinnet/servermonitor/data/ComponentConnection$ConnectionType;)V

    goto :goto_2

    .line 310
    .end local v9    # "c2":Landroid/database/Cursor;
    .end local v10    # "component":Lcom/odinnet/servermonitor/data/ServerComponent;
    .end local v12    # "con":Lcom/odinnet/servermonitor/data/ComponentConnection;
    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 311
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 314
    return-object v11
.end method

.method public listServers(Z)Ljava/util/ArrayList;
    .locals 13
    .param p1, "listComponents"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/odinnet/servermonitor/data/Server;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v3, 0x0

    const-string v12, "status"

    .line 188
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 189
    .local v10, "servers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/odinnet/servermonitor/data/Server;>;"
    invoke-direct {p0}, Lcom/odinnet/servermonitor/data/Database;->getDatabaseRO()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 190
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "Server"

    sget-object v2, Lcom/odinnet/servermonitor/data/DBStrings;->SERVER_TABLE_COLUMNS:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 191
    .local v8, "c":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 192
    new-instance v9, Lcom/odinnet/servermonitor/data/Server;

    invoke-direct {v9}, Lcom/odinnet/servermonitor/data/Server;-><init>()V

    .line 193
    .local v9, "server":Lcom/odinnet/servermonitor/data/Server;
    const-string v1, "serverID"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v9, v1}, Lcom/odinnet/servermonitor/data/Server;->setServerID(I)V

    .line 194
    const-string v1, "host"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/odinnet/servermonitor/data/Server;->setHost(Ljava/lang/String;)V

    .line 195
    new-instance v1, Ljava/util/Date;

    const-string v2, "lastUpdate"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v1}, Lcom/odinnet/servermonitor/data/Server;->setLastUpdate(Ljava/util/Date;)V

    .line 196
    const-string v1, "serverName"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/odinnet/servermonitor/data/Server;->setServerName(Ljava/lang/String;)V

    .line 197
    const-string v1, "status"

    invoke-interface {v8, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v11, :cond_1

    .line 198
    sget-object v1, Lcom/odinnet/servermonitor/data/Status;->ONLINE:Lcom/odinnet/servermonitor/data/Status;

    invoke-virtual {v9, v1}, Lcom/odinnet/servermonitor/data/Server;->setStatus(Lcom/odinnet/servermonitor/data/Status;)V

    .line 205
    :goto_1
    const-string v1, "ping"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v11, :cond_3

    .line 206
    invoke-virtual {v9, v11}, Lcom/odinnet/servermonitor/data/Server;->setPing(Z)V

    .line 210
    :goto_2
    const-string v1, "statusMessage"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/odinnet/servermonitor/data/Server;->setStatusMessage(Ljava/lang/String;)V

    .line 211
    if-eqz p1, :cond_0

    .line 212
    invoke-virtual {v9}, Lcom/odinnet/servermonitor/data/Server;->getServerID()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/odinnet/servermonitor/data/Database;->getServerComponents(I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/odinnet/servermonitor/data/Server;->setComponents(Ljava/util/ArrayList;)V

    .line 214
    :cond_0
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 199
    :cond_1
    const-string v1, "status"

    invoke-interface {v8, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 200
    sget-object v1, Lcom/odinnet/servermonitor/data/Status;->OFFLINE:Lcom/odinnet/servermonitor/data/Status;

    invoke-virtual {v9, v1}, Lcom/odinnet/servermonitor/data/Server;->setStatus(Lcom/odinnet/servermonitor/data/Status;)V

    goto :goto_1

    .line 202
    :cond_2
    sget-object v1, Lcom/odinnet/servermonitor/data/Status;->COMPONENT_OFFLINE:Lcom/odinnet/servermonitor/data/Status;

    invoke-virtual {v9, v1}, Lcom/odinnet/servermonitor/data/Server;->setStatus(Lcom/odinnet/servermonitor/data/Status;)V

    goto :goto_1

    .line 208
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Lcom/odinnet/servermonitor/data/Server;->setPing(Z)V

    goto :goto_2

    .line 216
    .end local v9    # "server":Lcom/odinnet/servermonitor/data/Server;
    :cond_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 217
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 218
    return-object v10
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 30
    const-string v0, "CREATE TABLE Server(serverID INTEGER PRIMARY KEY AUTOINCREMENT, serverName VARCHAR, host VARCHAR, status INT, statusMessage VARCHAR, lastUpdate INT, ping INT );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 31
    const-string v0, "CREATE TABLE ServerComponent(componentID INTEGER PRIMARY KEY AUTOINCREMENT, serverID INT, componentName VARCHAR, status INT, statusMessage VARCHAR, lastUpdate INT );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 32
    const-string v0, "CREATE TABLE ComponentConnection(connectionID INTEGER PRIMARY KEY AUTOINCREMENT, localPort INT, remotePort INT, sshPort INT, sshUsername VARCHAR, sshPassword VARCHAR, connectionType INT, componentID INT );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 37
    packed-switch p2, :pswitch_data_0

    .line 45
    :goto_0
    return-void

    .line 39
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/odinnet/servermonitor/data/Database;->upgradeToVersion3(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 42
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/odinnet/servermonitor/data/Database;->upgradeToVersion2(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 37
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public updateComponent(Lcom/odinnet/servermonitor/data/ServerComponent;)V
    .locals 10
    .param p1, "component"    # Lcom/odinnet/servermonitor/data/ServerComponent;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    const-string v5, "status"

    const-string v9, "connectionType"

    .line 405
    invoke-direct {p0}, Lcom/odinnet/servermonitor/data/Database;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 407
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 408
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "serverID"

    invoke-virtual {p1}, Lcom/odinnet/servermonitor/data/ServerComponent;->getServerID()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 409
    const-string v3, "componentName"

    invoke-virtual {p1}, Lcom/odinnet/servermonitor/data/ServerComponent;->getComponentName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    invoke-virtual {p1}, Lcom/odinnet/servermonitor/data/ServerComponent;->getStatus()Lcom/odinnet/servermonitor/data/Status;

    move-result-object v3

    sget-object v4, Lcom/odinnet/servermonitor/data/Status;->ONLINE:Lcom/odinnet/servermonitor/data/Status;

    if-ne v3, v4, :cond_0

    .line 411
    const-string v3, "status"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 415
    :goto_0
    const-string v3, "statusMessage"

    invoke-virtual {p1}, Lcom/odinnet/servermonitor/data/ServerComponent;->getStatusMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    const-string v3, "lastUpdate"

    invoke-virtual {p1}, Lcom/odinnet/servermonitor/data/ServerComponent;->getLastUpdate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 417
    const-string v3, "ServerComponent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "componentID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/odinnet/servermonitor/data/ServerComponent;->getComponentID()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v2, v4, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 419
    invoke-virtual {p1}, Lcom/odinnet/servermonitor/data/ServerComponent;->getConnection()Lcom/odinnet/servermonitor/data/ComponentConnection;

    move-result-object v0

    .line 420
    .local v0, "con":Lcom/odinnet/servermonitor/data/ComponentConnection;
    new-instance v2, Landroid/content/ContentValues;

    .end local v2    # "values":Landroid/content/ContentValues;
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 421
    .restart local v2    # "values":Landroid/content/ContentValues;
    const-string v3, "componentID"

    invoke-virtual {p1}, Lcom/odinnet/servermonitor/data/ServerComponent;->getComponentID()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 422
    const-string v3, "localPort"

    invoke-virtual {v0}, Lcom/odinnet/servermonitor/data/ComponentConnection;->getLocalPort()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 423
    const-string v3, "remotePort"

    invoke-virtual {v0}, Lcom/odinnet/servermonitor/data/ComponentConnection;->getRemotePort()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 424
    const-string v3, "sshPort"

    invoke-virtual {v0}, Lcom/odinnet/servermonitor/data/ComponentConnection;->getSshPort()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 425
    const-string v3, "sshUsername"

    invoke-virtual {v0}, Lcom/odinnet/servermonitor/data/ComponentConnection;->getSshUsername()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    const-string v3, "sshPassword"

    invoke-virtual {v0}, Lcom/odinnet/servermonitor/data/ComponentConnection;->getSshPassword()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    invoke-virtual {v0}, Lcom/odinnet/servermonitor/data/ComponentConnection;->getConnectionType()Lcom/odinnet/servermonitor/data/ComponentConnection$ConnectionType;

    move-result-object v3

    sget-object v4, Lcom/odinnet/servermonitor/data/ComponentConnection$ConnectionType;->TCP:Lcom/odinnet/servermonitor/data/ComponentConnection$ConnectionType;

    if-ne v3, v4, :cond_1

    .line 428
    const-string v3, "connectionType"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v9, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 433
    :goto_1
    const-string v3, "ComponentConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connectionID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/odinnet/servermonitor/data/ComponentConnection;->getConnectionID()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v2, v4, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 435
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 436
    return-void

    .line 413
    .end local v0    # "con":Lcom/odinnet/servermonitor/data/ComponentConnection;
    :cond_0
    const-string v3, "status"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 430
    .restart local v0    # "con":Lcom/odinnet/servermonitor/data/ComponentConnection;
    :cond_1
    const-string v3, "connectionType"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v9, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1
.end method

.method public updateServer(Lcom/odinnet/servermonitor/data/Server;)V
    .locals 5
    .param p1, "server"    # Lcom/odinnet/servermonitor/data/Server;

    .prologue
    const-string v4, "status"

    .line 439
    invoke-direct {p0}, Lcom/odinnet/servermonitor/data/Database;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 441
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 442
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "serverName"

    invoke-virtual {p1}, Lcom/odinnet/servermonitor/data/Server;->getServerName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    const-string v2, "host"

    invoke-virtual {p1}, Lcom/odinnet/servermonitor/data/Server;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    invoke-virtual {p1}, Lcom/odinnet/servermonitor/data/Server;->getStatus()Lcom/odinnet/servermonitor/data/Status;

    move-result-object v2

    sget-object v3, Lcom/odinnet/servermonitor/data/Status;->ONLINE:Lcom/odinnet/servermonitor/data/Status;

    if-ne v2, v3, :cond_0

    .line 445
    const-string v2, "status"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 451
    :goto_0
    const-string v2, "statusMessage"

    invoke-virtual {p1}, Lcom/odinnet/servermonitor/data/Server;->getStatusMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    const-string v2, "lastUpdate"

    invoke-virtual {p1}, Lcom/odinnet/servermonitor/data/Server;->getLastUpdate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 453
    const-string v2, "ping"

    invoke-virtual {p1}, Lcom/odinnet/servermonitor/data/Server;->isPing()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 454
    const-string v2, "Server"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "serverID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/odinnet/servermonitor/data/Server;->getServerID()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 455
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 456
    return-void

    .line 446
    :cond_0
    invoke-virtual {p1}, Lcom/odinnet/servermonitor/data/Server;->getStatus()Lcom/odinnet/servermonitor/data/Status;

    move-result-object v2

    sget-object v3, Lcom/odinnet/servermonitor/data/Status;->OFFLINE:Lcom/odinnet/servermonitor/data/Status;

    if-ne v2, v3, :cond_1

    .line 447
    const-string v2, "status"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 449
    :cond_1
    const-string v2, "status"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method
