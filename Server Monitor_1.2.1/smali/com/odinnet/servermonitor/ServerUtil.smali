.class public Lcom/odinnet/servermonitor/ServerUtil;
.super Ljava/lang/Object;
.source "ServerUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isDeviceConnected(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    const/4 v0, 0x0

    .line 18
    .local v0, "connected":Z
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 19
    .local v1, "connectivity":Landroid/net/ConnectivityManager;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 20
    .local v2, "info":Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 21
    const/4 v0, 0x1

    .line 23
    :cond_0
    if-nez v0, :cond_1

    .line 24
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 25
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 26
    const/4 v0, 0x1

    .line 29
    :cond_1
    return v0
.end method

.method public static updateServer(ILandroid/content/Context;)V
    .locals 10
    .param p0, "serverID"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-string v9, ""

    .line 46
    invoke-static {p1}, Lcom/odinnet/servermonitor/ServerUtil;->isDeviceConnected(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 47
    new-instance v2, Lcom/odinnet/servermonitor/data/Database;

    invoke-direct {v2, p1}, Lcom/odinnet/servermonitor/data/Database;-><init>(Landroid/content/Context;)V

    .line 48
    .local v2, "db":Lcom/odinnet/servermonitor/data/Database;
    invoke-virtual {v2, p0}, Lcom/odinnet/servermonitor/data/Database;->getServer(I)Lcom/odinnet/servermonitor/data/Server;

    move-result-object v5

    .line 49
    .local v5, "server":Lcom/odinnet/servermonitor/data/Server;
    const/4 v1, 0x1

    .line 50
    .local v1, "componentsOnline":Z
    const/4 v6, 0x1

    .line 51
    .local v6, "serverOnline":Z
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v7}, Lcom/odinnet/servermonitor/data/Server;->setLastUpdate(Ljava/util/Date;)V

    .line 52
    invoke-virtual {v5}, Lcom/odinnet/servermonitor/data/Server;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/odinnet/servermonitor/NetworkUtil;->isServerReachable(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 53
    sget-object v7, Lcom/odinnet/servermonitor/data/Status;->ONLINE:Lcom/odinnet/servermonitor/data/Status;

    invoke-virtual {v5, v7}, Lcom/odinnet/servermonitor/data/Server;->setStatus(Lcom/odinnet/servermonitor/data/Status;)V

    .line 54
    const-string v7, ""

    invoke-virtual {v5, v9}, Lcom/odinnet/servermonitor/data/Server;->setStatusMessage(Ljava/lang/String;)V

    .line 61
    :goto_0
    const/4 v3, 0x0

    .local v3, "index2":I
    :goto_1
    invoke-virtual {v5}, Lcom/odinnet/servermonitor/data/Server;->getComponents()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_6

    .line 62
    invoke-virtual {v5}, Lcom/odinnet/servermonitor/data/Server;->getComponents()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/odinnet/servermonitor/data/ServerComponent;

    .line 63
    .local v0, "component":Lcom/odinnet/servermonitor/data/ServerComponent;
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v7}, Lcom/odinnet/servermonitor/data/ServerComponent;->setLastUpdate(Ljava/util/Date;)V

    .line 64
    if-nez v6, :cond_0

    invoke-virtual {v5}, Lcom/odinnet/servermonitor/data/Server;->isPing()Z

    move-result v7

    if-nez v7, :cond_4

    .line 65
    :cond_0
    const/4 v4, -0x1

    .line 66
    .local v4, "response":I
    invoke-virtual {v0}, Lcom/odinnet/servermonitor/data/ServerComponent;->getConnection()Lcom/odinnet/servermonitor/data/ComponentConnection;

    move-result-object v7

    invoke-virtual {v7}, Lcom/odinnet/servermonitor/data/ComponentConnection;->getConnectionType()Lcom/odinnet/servermonitor/data/ComponentConnection$ConnectionType;

    move-result-object v7

    sget-object v8, Lcom/odinnet/servermonitor/data/ComponentConnection$ConnectionType;->TCP:Lcom/odinnet/servermonitor/data/ComponentConnection$ConnectionType;

    if-ne v7, v8, :cond_3

    .line 67
    invoke-virtual {v5}, Lcom/odinnet/servermonitor/data/Server;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/odinnet/servermonitor/data/ServerComponent;->getConnection()Lcom/odinnet/servermonitor/data/ComponentConnection;

    move-result-object v8

    invoke-virtual {v8}, Lcom/odinnet/servermonitor/data/ComponentConnection;->getRemotePort()I

    move-result v8

    invoke-static {v7, v8}, Lcom/odinnet/servermonitor/NetworkUtil;->connect(Ljava/lang/String;I)I

    move-result v4

    .line 71
    :goto_2
    packed-switch v4, :pswitch_data_0

    .line 98
    .end local v4    # "response":I
    :goto_3
    invoke-virtual {v5}, Lcom/odinnet/servermonitor/data/Server;->isPing()Z

    move-result v7

    if-nez v7, :cond_5

    if-nez v1, :cond_5

    .line 99
    sget-object v7, Lcom/odinnet/servermonitor/data/Status;->COMPONENT_OFFLINE:Lcom/odinnet/servermonitor/data/Status;

    invoke-virtual {v5, v7}, Lcom/odinnet/servermonitor/data/Server;->setStatus(Lcom/odinnet/servermonitor/data/Status;)V

    .line 61
    :cond_1
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 56
    .end local v0    # "component":Lcom/odinnet/servermonitor/data/ServerComponent;
    .end local v3    # "index2":I
    :cond_2
    sget-object v7, Lcom/odinnet/servermonitor/data/Status;->OFFLINE:Lcom/odinnet/servermonitor/data/Status;

    invoke-virtual {v5, v7}, Lcom/odinnet/servermonitor/data/Server;->setStatus(Lcom/odinnet/servermonitor/data/Status;)V

    .line 57
    const v7, 0x7f050028

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/odinnet/servermonitor/data/Server;->setStatusMessage(Ljava/lang/String;)V

    .line 58
    const/4 v6, 0x0

    goto :goto_0

    .line 69
    .restart local v0    # "component":Lcom/odinnet/servermonitor/data/ServerComponent;
    .restart local v3    # "index2":I
    .restart local v4    # "response":I
    :cond_3
    invoke-virtual {v5}, Lcom/odinnet/servermonitor/data/Server;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/odinnet/servermonitor/data/ServerComponent;->getConnection()Lcom/odinnet/servermonitor/data/ComponentConnection;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/odinnet/servermonitor/NetworkUtil;->sshConnect(Ljava/lang/String;Lcom/odinnet/servermonitor/data/ComponentConnection;)I

    move-result v4

    goto :goto_2

    .line 73
    :pswitch_0
    sget-object v7, Lcom/odinnet/servermonitor/data/Status;->ONLINE:Lcom/odinnet/servermonitor/data/Status;

    invoke-virtual {v0, v7}, Lcom/odinnet/servermonitor/data/ServerComponent;->setStatus(Lcom/odinnet/servermonitor/data/Status;)V

    .line 74
    const-string v7, ""

    invoke-virtual {v0, v9}, Lcom/odinnet/servermonitor/data/ServerComponent;->setStatusMessage(Ljava/lang/String;)V

    goto :goto_3

    .line 77
    :pswitch_1
    const/4 v1, 0x0

    .line 78
    sget-object v7, Lcom/odinnet/servermonitor/data/Status;->OFFLINE:Lcom/odinnet/servermonitor/data/Status;

    invoke-virtual {v0, v7}, Lcom/odinnet/servermonitor/data/ServerComponent;->setStatus(Lcom/odinnet/servermonitor/data/Status;)V

    .line 79
    const v7, 0x7f050029

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/odinnet/servermonitor/data/ServerComponent;->setStatusMessage(Ljava/lang/String;)V

    goto :goto_3

    .line 82
    :pswitch_2
    const/4 v1, 0x0

    .line 83
    sget-object v7, Lcom/odinnet/servermonitor/data/Status;->OFFLINE:Lcom/odinnet/servermonitor/data/Status;

    invoke-virtual {v0, v7}, Lcom/odinnet/servermonitor/data/ServerComponent;->setStatus(Lcom/odinnet/servermonitor/data/Status;)V

    .line 84
    const v7, 0x7f05002a

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/odinnet/servermonitor/data/ServerComponent;->setStatusMessage(Ljava/lang/String;)V

    goto :goto_3

    .line 87
    :pswitch_3
    const/4 v1, 0x0

    .line 88
    sget-object v7, Lcom/odinnet/servermonitor/data/Status;->OFFLINE:Lcom/odinnet/servermonitor/data/Status;

    invoke-virtual {v0, v7}, Lcom/odinnet/servermonitor/data/ServerComponent;->setStatus(Lcom/odinnet/servermonitor/data/Status;)V

    .line 89
    const v7, 0x7f05003e

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/odinnet/servermonitor/data/ServerComponent;->setStatusMessage(Ljava/lang/String;)V

    goto :goto_3

    .line 93
    .end local v4    # "response":I
    :cond_4
    const/4 v1, 0x0

    .line 94
    sget-object v7, Lcom/odinnet/servermonitor/data/Status;->OFFLINE:Lcom/odinnet/servermonitor/data/Status;

    invoke-virtual {v0, v7}, Lcom/odinnet/servermonitor/data/ServerComponent;->setStatus(Lcom/odinnet/servermonitor/data/Status;)V

    .line 95
    const v7, 0x7f05000c

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/odinnet/servermonitor/data/ServerComponent;->setStatusMessage(Ljava/lang/String;)V

    goto :goto_3

    .line 100
    :cond_5
    invoke-virtual {v5}, Lcom/odinnet/servermonitor/data/Server;->isPing()Z

    move-result v7

    if-nez v7, :cond_1

    if-eqz v1, :cond_1

    .line 101
    sget-object v7, Lcom/odinnet/servermonitor/data/Status;->ONLINE:Lcom/odinnet/servermonitor/data/Status;

    invoke-virtual {v5, v7}, Lcom/odinnet/servermonitor/data/Server;->setStatus(Lcom/odinnet/servermonitor/data/Status;)V

    goto :goto_4

    .line 105
    .end local v0    # "component":Lcom/odinnet/servermonitor/data/ServerComponent;
    :cond_6
    invoke-virtual {v2, v5}, Lcom/odinnet/servermonitor/data/Database;->updateServer(Lcom/odinnet/servermonitor/data/Server;)V

    .line 106
    const/4 v3, 0x0

    .end local p0    # "serverID":I
    :goto_5
    invoke-virtual {v5}, Lcom/odinnet/servermonitor/data/Server;->getComponents()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_7

    .line 107
    invoke-virtual {v5}, Lcom/odinnet/servermonitor/data/Server;->getComponents()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/odinnet/servermonitor/data/ServerComponent;

    invoke-virtual {v2, p0}, Lcom/odinnet/servermonitor/data/Database;->updateComponent(Lcom/odinnet/servermonitor/data/ServerComponent;)V

    .line 106
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 110
    .end local v1    # "componentsOnline":Z
    .end local v2    # "db":Lcom/odinnet/servermonitor/data/Database;
    .end local v3    # "index2":I
    .end local v5    # "server":Lcom/odinnet/servermonitor/data/Server;
    .end local v6    # "serverOnline":Z
    :cond_7
    return-void

    .line 71
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public static updateServers(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-static {p0}, Lcom/odinnet/servermonitor/ServerUtil;->isDeviceConnected(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 35
    new-instance v0, Lcom/odinnet/servermonitor/data/Database;

    invoke-direct {v0, p0}, Lcom/odinnet/servermonitor/data/Database;-><init>(Landroid/content/Context;)V

    .line 36
    .local v0, "db":Lcom/odinnet/servermonitor/data/Database;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/odinnet/servermonitor/data/Database;->listServers(Z)Ljava/util/ArrayList;

    move-result-object v3

    .line 37
    .local v3, "servers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/odinnet/servermonitor/data/Server;>;"
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 38
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/odinnet/servermonitor/data/Server;

    .line 39
    .local v2, "server":Lcom/odinnet/servermonitor/data/Server;
    invoke-virtual {v2}, Lcom/odinnet/servermonitor/data/Server;->getServerID()I

    move-result v4

    invoke-static {v4, p0}, Lcom/odinnet/servermonitor/ServerUtil;->updateServer(ILandroid/content/Context;)V

    .line 37
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 42
    .end local v0    # "db":Lcom/odinnet/servermonitor/data/Database;
    .end local v1    # "index":I
    .end local v2    # "server":Lcom/odinnet/servermonitor/data/Server;
    .end local v3    # "servers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/odinnet/servermonitor/data/Server;>;"
    :cond_0
    return-void
.end method
