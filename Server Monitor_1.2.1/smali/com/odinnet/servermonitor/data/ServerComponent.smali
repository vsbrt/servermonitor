.class public Lcom/odinnet/servermonitor/data/ServerComponent;
.super Ljava/lang/Object;
.source "ServerComponent.java"


# instance fields
.field private componentID:I

.field private componentName:Ljava/lang/String;

.field private connection:Lcom/odinnet/servermonitor/data/ComponentConnection;

.field private lastUpdate:Ljava/util/Date;

.field private serverID:I

.field private status:Lcom/odinnet/servermonitor/data/Status;

.field private statusMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getComponentID()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/odinnet/servermonitor/data/ServerComponent;->componentID:I

    return v0
.end method

.method public getComponentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/odinnet/servermonitor/data/ServerComponent;->componentName:Ljava/lang/String;

    return-object v0
.end method

.method public getConnection()Lcom/odinnet/servermonitor/data/ComponentConnection;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/odinnet/servermonitor/data/ServerComponent;->connection:Lcom/odinnet/servermonitor/data/ComponentConnection;

    return-object v0
.end method

.method public getLastUpdate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/odinnet/servermonitor/data/ServerComponent;->lastUpdate:Ljava/util/Date;

    return-object v0
.end method

.method public getServerID()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/odinnet/servermonitor/data/ServerComponent;->serverID:I

    return v0
.end method

.method public getStatus()Lcom/odinnet/servermonitor/data/Status;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/odinnet/servermonitor/data/ServerComponent;->status:Lcom/odinnet/servermonitor/data/Status;

    return-object v0
.end method

.method public getStatusMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/odinnet/servermonitor/data/ServerComponent;->statusMessage:Ljava/lang/String;

    return-object v0
.end method

.method public setComponentID(I)V
    .locals 0
    .param p1, "componentID"    # I

    .prologue
    .line 26
    iput p1, p0, Lcom/odinnet/servermonitor/data/ServerComponent;->componentID:I

    .line 27
    return-void
.end method

.method public setComponentName(Ljava/lang/String;)V
    .locals 0
    .param p1, "componentName"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/odinnet/servermonitor/data/ServerComponent;->componentName:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setConnection(Lcom/odinnet/servermonitor/data/ComponentConnection;)V
    .locals 0
    .param p1, "connection"    # Lcom/odinnet/servermonitor/data/ComponentConnection;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/odinnet/servermonitor/data/ServerComponent;->connection:Lcom/odinnet/servermonitor/data/ComponentConnection;

    .line 42
    return-void
.end method

.method public setLastUpdate(Ljava/util/Date;)V
    .locals 0
    .param p1, "lastUpdate"    # Ljava/util/Date;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/odinnet/servermonitor/data/ServerComponent;->lastUpdate:Ljava/util/Date;

    .line 98
    return-void
.end method

.method public setServerID(I)V
    .locals 0
    .param p1, "serverID"    # I

    .prologue
    .line 111
    iput p1, p0, Lcom/odinnet/servermonitor/data/ServerComponent;->serverID:I

    .line 112
    return-void
.end method

.method public setStatus(Lcom/odinnet/servermonitor/data/Status;)V
    .locals 0
    .param p1, "status"    # Lcom/odinnet/servermonitor/data/Status;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/odinnet/servermonitor/data/ServerComponent;->status:Lcom/odinnet/servermonitor/data/Status;

    .line 70
    return-void
.end method

.method public setStatusMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "statusMessage"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/odinnet/servermonitor/data/ServerComponent;->statusMessage:Ljava/lang/String;

    .line 84
    return-void
.end method
