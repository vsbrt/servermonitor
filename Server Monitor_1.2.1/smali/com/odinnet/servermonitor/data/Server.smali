.class public Lcom/odinnet/servermonitor/data/Server;
.super Ljava/lang/Object;
.source "Server.java"


# instance fields
.field private components:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/odinnet/servermonitor/data/ServerComponent;",
            ">;"
        }
    .end annotation
.end field

.field private host:Ljava/lang/String;

.field private lastUpdate:Ljava/util/Date;

.field private ping:Z

.field private serverID:I

.field private serverName:Ljava/lang/String;

.field private status:Lcom/odinnet/servermonitor/data/Status;

.field private statusMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getComponents()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/odinnet/servermonitor/data/ServerComponent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lcom/odinnet/servermonitor/data/Server;->components:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/odinnet/servermonitor/data/Server;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getLastUpdate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/odinnet/servermonitor/data/Server;->lastUpdate:Ljava/util/Date;

    return-object v0
.end method

.method public getServerID()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/odinnet/servermonitor/data/Server;->serverID:I

    return v0
.end method

.method public getServerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/odinnet/servermonitor/data/Server;->serverName:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lcom/odinnet/servermonitor/data/Status;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/odinnet/servermonitor/data/Server;->status:Lcom/odinnet/servermonitor/data/Status;

    return-object v0
.end method

.method public getStatusMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/odinnet/servermonitor/data/Server;->statusMessage:Ljava/lang/String;

    return-object v0
.end method

.method public isPing()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/odinnet/servermonitor/data/Server;->ping:Z

    return v0
.end method

.method public setComponents(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/odinnet/servermonitor/data/ServerComponent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 112
    .local p1, "components":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/odinnet/servermonitor/data/ServerComponent;>;"
    iput-object p1, p0, Lcom/odinnet/servermonitor/data/Server;->components:Ljava/util/ArrayList;

    .line 113
    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/odinnet/servermonitor/data/Server;->host:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setLastUpdate(Ljava/util/Date;)V
    .locals 0
    .param p1, "lastUpdate"    # Ljava/util/Date;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/odinnet/servermonitor/data/Server;->lastUpdate:Ljava/util/Date;

    .line 99
    return-void
.end method

.method public setPing(Z)V
    .locals 0
    .param p1, "ping"    # Z

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/odinnet/servermonitor/data/Server;->ping:Z

    .line 127
    return-void
.end method

.method public setServerID(I)V
    .locals 0
    .param p1, "serverID"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/odinnet/servermonitor/data/Server;->serverID:I

    .line 29
    return-void
.end method

.method public setServerName(Ljava/lang/String;)V
    .locals 0
    .param p1, "serverName"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/odinnet/servermonitor/data/Server;->serverName:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setStatus(Lcom/odinnet/servermonitor/data/Status;)V
    .locals 0
    .param p1, "status"    # Lcom/odinnet/servermonitor/data/Status;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/odinnet/servermonitor/data/Server;->status:Lcom/odinnet/servermonitor/data/Status;

    .line 71
    return-void
.end method

.method public setStatusMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "statusMessage"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/odinnet/servermonitor/data/Server;->statusMessage:Ljava/lang/String;

    .line 85
    return-void
.end method
