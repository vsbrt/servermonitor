.class public Lcom/odinnet/servermonitor/ssh/LocalStreamForwarder;
.super Ljava/lang/Object;
.source "LocalStreamForwarder.java"


# instance fields
.field cm:Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;

.field cn:Lcom/odinnet/servermonitor/ssh/channel/Channel;

.field host_to_connect:Ljava/lang/String;

.field lat:Lcom/odinnet/servermonitor/ssh/channel/LocalAcceptThread;

.field port_to_connect:I


# direct methods
.method constructor <init>(Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;Ljava/lang/String;I)V
    .locals 2
    .param p1, "cm"    # Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;
    .param p2, "host_to_connect"    # Ljava/lang/String;
    .param p3, "port_to_connect"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/odinnet/servermonitor/ssh/LocalStreamForwarder;->cm:Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;

    .line 34
    iput-object p2, p0, Lcom/odinnet/servermonitor/ssh/LocalStreamForwarder;->host_to_connect:Ljava/lang/String;

    .line 35
    iput p3, p0, Lcom/odinnet/servermonitor/ssh/LocalStreamForwarder;->port_to_connect:I

    .line 37
    const-string v0, "127.0.0.1"

    const/4 v1, 0x0

    invoke-virtual {p1, p2, p3, v0, v1}, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->openDirectTCPIPChannel(Ljava/lang/String;ILjava/lang/String;I)Lcom/odinnet/servermonitor/ssh/channel/Channel;

    move-result-object v0

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/LocalStreamForwarder;->cn:Lcom/odinnet/servermonitor/ssh/channel/Channel;

    .line 38
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/LocalStreamForwarder;->cm:Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;

    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/LocalStreamForwarder;->cn:Lcom/odinnet/servermonitor/ssh/channel/Channel;

    const-string v2, "Closed due to user request."

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->closeChannel(Lcom/odinnet/servermonitor/ssh/channel/Channel;Ljava/lang/String;Z)V

    .line 77
    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/LocalStreamForwarder;->cn:Lcom/odinnet/servermonitor/ssh/channel/Channel;

    invoke-virtual {v0}, Lcom/odinnet/servermonitor/ssh/channel/Channel;->getStdoutStream()Lcom/odinnet/servermonitor/ssh/channel/ChannelInputStream;

    move-result-object v0

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/LocalStreamForwarder;->cn:Lcom/odinnet/servermonitor/ssh/channel/Channel;

    invoke-virtual {v0}, Lcom/odinnet/servermonitor/ssh/channel/Channel;->getStdinStream()Lcom/odinnet/servermonitor/ssh/channel/ChannelOutputStream;

    move-result-object v0

    return-object v0
.end method
