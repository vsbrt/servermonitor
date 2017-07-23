.class public Lcom/odinnet/servermonitor/ssh/LocalPortForwarder;
.super Ljava/lang/Object;
.source "LocalPortForwarder.java"


# instance fields
.field cm:Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;

.field host_to_connect:Ljava/lang/String;

.field lat:Lcom/odinnet/servermonitor/ssh/channel/LocalAcceptThread;

.field port_to_connect:I


# direct methods
.method constructor <init>(Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;ILjava/lang/String;I)V
    .locals 2
    .param p1, "cm"    # Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;
    .param p2, "local_port"    # I
    .param p3, "host_to_connect"    # Ljava/lang/String;
    .param p4, "port_to_connect"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/odinnet/servermonitor/ssh/LocalPortForwarder;->cm:Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;

    .line 34
    iput-object p3, p0, Lcom/odinnet/servermonitor/ssh/LocalPortForwarder;->host_to_connect:Ljava/lang/String;

    .line 35
    iput p4, p0, Lcom/odinnet/servermonitor/ssh/LocalPortForwarder;->port_to_connect:I

    .line 37
    new-instance v0, Lcom/odinnet/servermonitor/ssh/channel/LocalAcceptThread;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/odinnet/servermonitor/ssh/channel/LocalAcceptThread;-><init>(Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;ILjava/lang/String;I)V

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/LocalPortForwarder;->lat:Lcom/odinnet/servermonitor/ssh/channel/LocalAcceptThread;

    .line 38
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/LocalPortForwarder;->lat:Lcom/odinnet/servermonitor/ssh/channel/LocalAcceptThread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/channel/LocalAcceptThread;->setDaemon(Z)V

    .line 39
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/LocalPortForwarder;->lat:Lcom/odinnet/servermonitor/ssh/channel/LocalAcceptThread;

    invoke-virtual {v0}, Lcom/odinnet/servermonitor/ssh/channel/LocalAcceptThread;->start()V

    .line 40
    return-void
.end method

.method constructor <init>(Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;Ljava/net/InetSocketAddress;Ljava/lang/String;I)V
    .locals 2
    .param p1, "cm"    # Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;
    .param p2, "addr"    # Ljava/net/InetSocketAddress;
    .param p3, "host_to_connect"    # Ljava/lang/String;
    .param p4, "port_to_connect"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/odinnet/servermonitor/ssh/LocalPortForwarder;->cm:Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;

    .line 46
    iput-object p3, p0, Lcom/odinnet/servermonitor/ssh/LocalPortForwarder;->host_to_connect:Ljava/lang/String;

    .line 47
    iput p4, p0, Lcom/odinnet/servermonitor/ssh/LocalPortForwarder;->port_to_connect:I

    .line 49
    new-instance v0, Lcom/odinnet/servermonitor/ssh/channel/LocalAcceptThread;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/odinnet/servermonitor/ssh/channel/LocalAcceptThread;-><init>(Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;Ljava/net/InetSocketAddress;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/LocalPortForwarder;->lat:Lcom/odinnet/servermonitor/ssh/channel/LocalAcceptThread;

    .line 50
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/LocalPortForwarder;->lat:Lcom/odinnet/servermonitor/ssh/channel/LocalAcceptThread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/channel/LocalAcceptThread;->setDaemon(Z)V

    .line 51
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/LocalPortForwarder;->lat:Lcom/odinnet/servermonitor/ssh/channel/LocalAcceptThread;

    invoke-virtual {v0}, Lcom/odinnet/servermonitor/ssh/channel/LocalAcceptThread;->start()V

    .line 52
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/LocalPortForwarder;->lat:Lcom/odinnet/servermonitor/ssh/channel/LocalAcceptThread;

    invoke-virtual {v0}, Lcom/odinnet/servermonitor/ssh/channel/LocalAcceptThread;->stopWorking()V

    .line 62
    return-void
.end method
