.class public Lcom/odinnet/servermonitor/data/DBStrings;
.super Ljava/lang/Object;
.source "DBStrings.java"


# static fields
.field public static final COMPONENT_CONNECTION_TABLE:Ljava/lang/String; = "ComponentConnection"

.field public static final COMPONENT_CONNECTION_TABLE_COLUMNS:[Ljava/lang/String;

.field public static final CREATE_COMPONENT_CONNECTION_TABLE:Ljava/lang/String; = "CREATE TABLE ComponentConnection(connectionID INTEGER PRIMARY KEY AUTOINCREMENT, localPort INT, remotePort INT, sshPort INT, sshUsername VARCHAR, sshPassword VARCHAR, connectionType INT, componentID INT );"

.field public static final CREATE_SERVER_COMPONENT_TABLE:Ljava/lang/String; = "CREATE TABLE ServerComponent(componentID INTEGER PRIMARY KEY AUTOINCREMENT, serverID INT, componentName VARCHAR, status INT, statusMessage VARCHAR, lastUpdate INT );"

.field public static final CREATE_SERVER_TABLE:Ljava/lang/String; = "CREATE TABLE Server(serverID INTEGER PRIMARY KEY AUTOINCREMENT, serverName VARCHAR, host VARCHAR, status INT, statusMessage VARCHAR, lastUpdate INT, ping INT );"

.field public static final OLD_SERVER_TABLE_COLUMNS:[Ljava/lang/String;

.field public static final SERVER_COMPONENT_TABLE:Ljava/lang/String; = "ServerComponent"

.field public static final SERVER_COMPONENT_TABLE_COLUMNS:[Ljava/lang/String;

.field public static final SERVER_TABLE:Ljava/lang/String; = "Server"

.field public static final SERVER_TABLE_COLUMNS:[Ljava/lang/String;

.field public static final SETTINGS_TABLE:Ljava/lang/String; = "Settings"

.field public static final SETTINGS_TABLE_COLUMNS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 34
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "serverID"

    aput-object v1, v0, v3

    const-string v1, "serverName"

    aput-object v1, v0, v4

    const-string v1, "host"

    aput-object v1, v0, v5

    const-string v1, "status"

    aput-object v1, v0, v6

    const-string v1, "statusMessage"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "lastUpdate"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ping"

    aput-object v2, v0, v1

    sput-object v0, Lcom/odinnet/servermonitor/data/DBStrings;->SERVER_TABLE_COLUMNS:[Ljava/lang/String;

    .line 35
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "componentID"

    aput-object v1, v0, v3

    const-string v1, "serverID"

    aput-object v1, v0, v4

    const-string v1, "componentName"

    aput-object v1, v0, v5

    const-string v1, "status"

    aput-object v1, v0, v6

    const-string v1, "statusMessage"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "lastUpdate"

    aput-object v2, v0, v1

    sput-object v0, Lcom/odinnet/servermonitor/data/DBStrings;->SERVER_COMPONENT_TABLE_COLUMNS:[Ljava/lang/String;

    .line 36
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "connectionID"

    aput-object v1, v0, v3

    const-string v1, "localPort"

    aput-object v1, v0, v4

    const-string v1, "remotePort"

    aput-object v1, v0, v5

    const-string v1, "sshPort"

    aput-object v1, v0, v6

    const-string v1, "sshUsername"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "sshPassword"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "connectionType"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "componentID"

    aput-object v2, v0, v1

    sput-object v0, Lcom/odinnet/servermonitor/data/DBStrings;->COMPONENT_CONNECTION_TABLE_COLUMNS:[Ljava/lang/String;

    .line 39
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "settingID"

    aput-object v1, v0, v3

    const-string v1, "interval"

    aput-object v1, v0, v4

    const-string v1, "startOnBoot"

    aput-object v1, v0, v5

    sput-object v0, Lcom/odinnet/servermonitor/data/DBStrings;->SETTINGS_TABLE_COLUMNS:[Ljava/lang/String;

    .line 41
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "serverID"

    aput-object v1, v0, v3

    const-string v1, "serverName"

    aput-object v1, v0, v4

    const-string v1, "connectionType"

    aput-object v1, v0, v5

    const-string v1, "host"

    aput-object v1, v0, v6

    const-string v1, "port"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "status"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "statusMessage"

    aput-object v2, v0, v1

    sput-object v0, Lcom/odinnet/servermonitor/data/DBStrings;->OLD_SERVER_TABLE_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
