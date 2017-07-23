.class public Lcom/odinnet/servermonitor/ssh/DynamicPortForwarder;
.super Ljava/lang/Object;
.source "DynamicPortForwarder.java"


# instance fields
.field cm:Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;

.field dat:Lcom/odinnet/servermonitor/ssh/channel/DynamicAcceptThread;


# direct methods
.method constructor <init>(Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;I)V
    .locals 2
    .param p1, "cm"    # Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;
    .param p2, "local_port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/odinnet/servermonitor/ssh/DynamicPortForwarder;->cm:Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;

    .line 45
    new-instance v0, Lcom/odinnet/servermonitor/ssh/channel/DynamicAcceptThread;

    invoke-direct {v0, p1, p2}, Lcom/odinnet/servermonitor/ssh/channel/DynamicAcceptThread;-><init>(Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;I)V

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/DynamicPortForwarder;->dat:Lcom/odinnet/servermonitor/ssh/channel/DynamicAcceptThread;

    .line 46
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/DynamicPortForwarder;->dat:Lcom/odinnet/servermonitor/ssh/channel/DynamicAcceptThread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/channel/DynamicAcceptThread;->setDaemon(Z)V

    .line 47
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/DynamicPortForwarder;->dat:Lcom/odinnet/servermonitor/ssh/channel/DynamicAcceptThread;

    invoke-virtual {v0}, Lcom/odinnet/servermonitor/ssh/channel/DynamicAcceptThread;->start()V

    .line 48
    return-void
.end method

.method constructor <init>(Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;Ljava/net/InetSocketAddress;)V
    .locals 2
    .param p1, "cm"    # Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;
    .param p2, "addr"    # Ljava/net/InetSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/odinnet/servermonitor/ssh/DynamicPortForwarder;->cm:Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;

    .line 53
    new-instance v0, Lcom/odinnet/servermonitor/ssh/channel/DynamicAcceptThread;

    invoke-direct {v0, p1, p2}, Lcom/odinnet/servermonitor/ssh/channel/DynamicAcceptThread;-><init>(Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;Ljava/net/InetSocketAddress;)V

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/DynamicPortForwarder;->dat:Lcom/odinnet/servermonitor/ssh/channel/DynamicAcceptThread;

    .line 54
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/DynamicPortForwarder;->dat:Lcom/odinnet/servermonitor/ssh/channel/DynamicAcceptThread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/channel/DynamicAcceptThread;->setDaemon(Z)V

    .line 55
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/DynamicPortForwarder;->dat:Lcom/odinnet/servermonitor/ssh/channel/DynamicAcceptThread;

    invoke-virtual {v0}, Lcom/odinnet/servermonitor/ssh/channel/DynamicAcceptThread;->start()V

    .line 56
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
    .line 65
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/DynamicPortForwarder;->dat:Lcom/odinnet/servermonitor/ssh/channel/DynamicAcceptThread;

    invoke-virtual {v0}, Lcom/odinnet/servermonitor/ssh/channel/DynamicAcceptThread;->stopWorking()V

    .line 66
    return-void
.end method
