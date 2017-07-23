.class public Lcom/odinnet/servermonitor/data/ComponentConnection;
.super Ljava/lang/Object;
.source "ComponentConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/odinnet/servermonitor/data/ComponentConnection$ConnectionType;
    }
.end annotation


# instance fields
.field private componentID:I

.field private connectionID:I

.field private connectionType:Lcom/odinnet/servermonitor/data/ComponentConnection$ConnectionType;

.field private localPort:I

.field private remotePort:I

.field private sshPassword:Ljava/lang/String;

.field private sshPort:I

.field private sshUsername:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    return-void
.end method


# virtual methods
.method public getComponentID()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/odinnet/servermonitor/data/ComponentConnection;->componentID:I

    return v0
.end method

.method public getConnectionID()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/odinnet/servermonitor/data/ComponentConnection;->connectionID:I

    return v0
.end method

.method public getConnectionType()Lcom/odinnet/servermonitor/data/ComponentConnection$ConnectionType;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/odinnet/servermonitor/data/ComponentConnection;->connectionType:Lcom/odinnet/servermonitor/data/ComponentConnection$ConnectionType;

    return-object v0
.end method

.method public getLocalPort()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/odinnet/servermonitor/data/ComponentConnection;->localPort:I

    return v0
.end method

.method public getRemotePort()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/odinnet/servermonitor/data/ComponentConnection;->remotePort:I

    return v0
.end method

.method public getSshPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/odinnet/servermonitor/data/ComponentConnection;->sshPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getSshPort()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/odinnet/servermonitor/data/ComponentConnection;->sshPort:I

    return v0
.end method

.method public getSshUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/odinnet/servermonitor/data/ComponentConnection;->sshUsername:Ljava/lang/String;

    return-object v0
.end method

.method public setComponentID(I)V
    .locals 0
    .param p1, "componentID"    # I

    .prologue
    .line 124
    iput p1, p0, Lcom/odinnet/servermonitor/data/ComponentConnection;->componentID:I

    .line 125
    return-void
.end method

.method public setConnectionID(I)V
    .locals 0
    .param p1, "connectionID"    # I

    .prologue
    .line 26
    iput p1, p0, Lcom/odinnet/servermonitor/data/ComponentConnection;->connectionID:I

    .line 27
    return-void
.end method

.method public setConnectionType(Lcom/odinnet/servermonitor/data/ComponentConnection$ConnectionType;)V
    .locals 0
    .param p1, "connectionType"    # Lcom/odinnet/servermonitor/data/ComponentConnection$ConnectionType;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/odinnet/servermonitor/data/ComponentConnection;->connectionType:Lcom/odinnet/servermonitor/data/ComponentConnection$ConnectionType;

    .line 111
    return-void
.end method

.method public setLocalPort(I)V
    .locals 0
    .param p1, "localPort"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/odinnet/servermonitor/data/ComponentConnection;->localPort:I

    .line 41
    return-void
.end method

.method public setRemotePort(I)V
    .locals 0
    .param p1, "remotePort"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/odinnet/servermonitor/data/ComponentConnection;->remotePort:I

    .line 55
    return-void
.end method

.method public setSshPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "sshPassword"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/odinnet/servermonitor/data/ComponentConnection;->sshPassword:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setSshPort(I)V
    .locals 0
    .param p1, "sshPort"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/odinnet/servermonitor/data/ComponentConnection;->sshPort:I

    .line 69
    return-void
.end method

.method public setSshUsername(Ljava/lang/String;)V
    .locals 0
    .param p1, "sshUsername"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/odinnet/servermonitor/data/ComponentConnection;->sshUsername:Ljava/lang/String;

    .line 83
    return-void
.end method
