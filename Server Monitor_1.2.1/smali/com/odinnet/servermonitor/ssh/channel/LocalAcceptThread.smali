.class public Lcom/odinnet/servermonitor/ssh/channel/LocalAcceptThread;
.super Ljava/lang/Thread;
.source "LocalAcceptThread.java"

# interfaces
.implements Lcom/odinnet/servermonitor/ssh/channel/IChannelWorkerThread;


# instance fields
.field cm:Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;

.field host_to_connect:Ljava/lang/String;

.field port_to_connect:I

.field final ss:Ljava/net/ServerSocket;


# direct methods
.method public constructor <init>(Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;ILjava/lang/String;I)V
    .locals 1
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
    .line 25
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/odinnet/servermonitor/ssh/channel/LocalAcceptThread;->cm:Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;

    .line 27
    iput-object p3, p0, Lcom/odinnet/servermonitor/ssh/channel/LocalAcceptThread;->host_to_connect:Ljava/lang/String;

    .line 28
    iput p4, p0, Lcom/odinnet/servermonitor/ssh/channel/LocalAcceptThread;->port_to_connect:I

    .line 30
    new-instance v0, Ljava/net/ServerSocket;

    invoke-direct {v0, p2}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/channel/LocalAcceptThread;->ss:Ljava/net/ServerSocket;

    .line 31
    return-void
.end method

.method public constructor <init>(Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;Ljava/net/InetSocketAddress;Ljava/lang/String;I)V
    .locals 1
    .param p1, "cm"    # Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;
    .param p2, "localAddress"    # Ljava/net/InetSocketAddress;
    .param p3, "host_to_connect"    # Ljava/lang/String;
    .param p4, "port_to_connect"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/odinnet/servermonitor/ssh/channel/LocalAcceptThread;->cm:Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;

    .line 37
    iput-object p3, p0, Lcom/odinnet/servermonitor/ssh/channel/LocalAcceptThread;->host_to_connect:Ljava/lang/String;

    .line 38
    iput p4, p0, Lcom/odinnet/servermonitor/ssh/channel/LocalAcceptThread;->port_to_connect:I

    .line 40
    new-instance v0, Ljava/net/ServerSocket;

    invoke-direct {v0}, Ljava/net/ServerSocket;-><init>()V

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/channel/LocalAcceptThread;->ss:Ljava/net/ServerSocket;

    .line 41
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/channel/LocalAcceptThread;->ss:Ljava/net/ServerSocket;

    invoke-virtual {v0, p2}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    .line 42
    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    .line 48
    :try_start_0
    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/channel/LocalAcceptThread;->cm:Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;

    invoke-virtual {v3, p0}, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->registerThread(Lcom/odinnet/servermonitor/ssh/channel/IChannelWorkerThread;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_0
    const/4 v11, 0x0

    .line 62
    .local v11, "s":Ljava/net/Socket;
    :try_start_1
    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/channel/LocalAcceptThread;->ss:Ljava/net/ServerSocket;

    invoke-virtual {v3}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v11

    .line 70
    const/4 v1, 0x0

    .line 71
    .local v1, "cn":Lcom/odinnet/servermonitor/ssh/channel/Channel;
    const/4 v10, 0x0

    .line 72
    .local v10, "r2l":Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;
    const/4 v2, 0x0

    .line 78
    .local v2, "l2r":Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;
    :try_start_2
    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/channel/LocalAcceptThread;->cm:Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;

    iget-object v4, p0, Lcom/odinnet/servermonitor/ssh/channel/LocalAcceptThread;->host_to_connect:Ljava/lang/String;

    iget v5, p0, Lcom/odinnet/servermonitor/ssh/channel/LocalAcceptThread;->port_to_connect:I

    invoke-virtual {v11}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11}, Ljava/net/Socket;->getPort()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->openDirectTCPIPChannel(Ljava/lang/String;ILjava/lang/String;I)Lcom/odinnet/servermonitor/ssh/channel/Channel;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v1

    .line 99
    :try_start_3
    new-instance v0, Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, v1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->stdoutStream:Lcom/odinnet/servermonitor/ssh/channel/ChannelInputStream;

    .end local v2    # "l2r":Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;
    invoke-virtual {v11}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    const-string v6, "RemoteToLocal"

    invoke-direct/range {v0 .. v6}, Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;-><init>(Lcom/odinnet/servermonitor/ssh/channel/Channel;Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;Ljava/net/Socket;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 100
    .end local v10    # "r2l":Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;
    .local v0, "r2l":Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;
    :try_start_4
    new-instance v2, Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;

    invoke-virtual {v11}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    iget-object v7, v1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->stdinStream:Lcom/odinnet/servermonitor/ssh/channel/ChannelOutputStream;

    const-string v8, "LocalToRemote"

    move-object v3, v1

    move-object v4, v0

    move-object v5, v11

    invoke-direct/range {v2 .. v8}, Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;-><init>(Lcom/odinnet/servermonitor/ssh/channel/Channel;Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;Ljava/net/Socket;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    .line 117
    .restart local v2    # "l2r":Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;
    invoke-virtual {v0, v12}, Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;->setDaemon(Z)V

    .line 118
    invoke-virtual {v2, v12}, Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;->setDaemon(Z)V

    .line 119
    invoke-virtual {v0}, Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;->start()V

    .line 120
    invoke-virtual {v2}, Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;->start()V

    goto :goto_0

    .line 50
    .end local v0    # "r2l":Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;
    .end local v1    # "cn":Lcom/odinnet/servermonitor/ssh/channel/Channel;
    .end local v2    # "l2r":Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;
    .end local v11    # "s":Ljava/net/Socket;
    :catch_0
    move-exception v3

    move-object v9, v3

    .line 52
    .local v9, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/odinnet/servermonitor/ssh/channel/LocalAcceptThread;->stopWorking()V

    .line 67
    :goto_1
    return-void

    .line 64
    .end local v9    # "e":Ljava/io/IOException;
    .restart local v11    # "s":Ljava/net/Socket;
    :catch_1
    move-exception v3

    move-object v9, v3

    .line 66
    .restart local v9    # "e":Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/odinnet/servermonitor/ssh/channel/LocalAcceptThread;->stopWorking()V

    goto :goto_1

    .line 82
    .end local v9    # "e":Ljava/io/IOException;
    .restart local v1    # "cn":Lcom/odinnet/servermonitor/ssh/channel/Channel;
    .restart local v2    # "l2r":Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;
    .restart local v10    # "r2l":Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;
    :catch_2
    move-exception v3

    move-object v9, v3

    .line 88
    .restart local v9    # "e":Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v11}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    .line 90
    :catch_3
    move-exception v3

    goto :goto_0

    .line 102
    .end local v2    # "l2r":Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;
    .end local v9    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v3

    move-object v9, v3

    move-object v0, v10

    .line 107
    .end local v10    # "r2l":Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;
    .restart local v0    # "r2l":Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;
    .restart local v9    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_6
    iget-object v3, v1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->cm:Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Weird error during creation of StreamForwarder ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v3, v1, v4, v5}, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->closeChannel(Lcom/odinnet/servermonitor/ssh/channel/Channel;Ljava/lang/String;Z)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto/16 :goto_0

    .line 110
    :catch_5
    move-exception v3

    goto/16 :goto_0

    .line 102
    .end local v9    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v3

    move-object v9, v3

    goto :goto_2
.end method

.method public stopWorking()V
    .locals 1

    .prologue
    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/channel/LocalAcceptThread;->ss:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :goto_0
    return-void

    .line 131
    :catch_0
    move-exception v0

    goto :goto_0
.end method
