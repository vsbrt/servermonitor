.class public Lcom/odinnet/servermonitor/ssh/channel/RemoteAcceptThread;
.super Ljava/lang/Thread;
.source "RemoteAcceptThread.java"


# static fields
.field private static final log:Lcom/odinnet/servermonitor/ssh/log/Logger;


# instance fields
.field c:Lcom/odinnet/servermonitor/ssh/channel/Channel;

.field remoteConnectedAddress:Ljava/lang/String;

.field remoteConnectedPort:I

.field remoteOriginatorAddress:Ljava/lang/String;

.field remoteOriginatorPort:I

.field s:Ljava/net/Socket;

.field targetAddress:Ljava/lang/String;

.field targetPort:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/odinnet/servermonitor/ssh/channel/RemoteAcceptThread;

    invoke-static {v0}, Lcom/odinnet/servermonitor/ssh/log/Logger;->getLogger(Ljava/lang/Class;)Lcom/odinnet/servermonitor/ssh/log/Logger;

    move-result-object v0

    sput-object v0, Lcom/odinnet/servermonitor/ssh/channel/RemoteAcceptThread;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/odinnet/servermonitor/ssh/channel/Channel;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;I)V
    .locals 5
    .param p1, "c"    # Lcom/odinnet/servermonitor/ssh/channel/Channel;
    .param p2, "remoteConnectedAddress"    # Ljava/lang/String;
    .param p3, "remoteConnectedPort"    # I
    .param p4, "remoteOriginatorAddress"    # Ljava/lang/String;
    .param p5, "remoteOriginatorPort"    # I
    .param p6, "targetAddress"    # Ljava/lang/String;
    .param p7, "targetPort"    # I

    .prologue
    const-string v4, "/"

    .line 33
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/odinnet/servermonitor/ssh/channel/RemoteAcceptThread;->c:Lcom/odinnet/servermonitor/ssh/channel/Channel;

    .line 35
    iput-object p2, p0, Lcom/odinnet/servermonitor/ssh/channel/RemoteAcceptThread;->remoteConnectedAddress:Ljava/lang/String;

    .line 36
    iput p3, p0, Lcom/odinnet/servermonitor/ssh/channel/RemoteAcceptThread;->remoteConnectedPort:I

    .line 37
    iput-object p4, p0, Lcom/odinnet/servermonitor/ssh/channel/RemoteAcceptThread;->remoteOriginatorAddress:Ljava/lang/String;

    .line 38
    iput p5, p0, Lcom/odinnet/servermonitor/ssh/channel/RemoteAcceptThread;->remoteOriginatorPort:I

    .line 39
    iput-object p6, p0, Lcom/odinnet/servermonitor/ssh/channel/RemoteAcceptThread;->targetAddress:Ljava/lang/String;

    .line 40
    iput p7, p0, Lcom/odinnet/servermonitor/ssh/channel/RemoteAcceptThread;->targetPort:I

    .line 42
    sget-object v0, Lcom/odinnet/servermonitor/ssh/channel/RemoteAcceptThread;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    invoke-virtual {v0}, Lcom/odinnet/servermonitor/ssh/log/Logger;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    sget-object v0, Lcom/odinnet/servermonitor/ssh/channel/RemoteAcceptThread;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    const/16 v1, 0x14

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteAcceptThread: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", R: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/odinnet/servermonitor/ssh/log/Logger;->log(ILjava/lang/String;)V

    .line 45
    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 51
    :try_start_0
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/channel/RemoteAcceptThread;->c:Lcom/odinnet/servermonitor/ssh/channel/Channel;

    iget-object v2, v2, Lcom/odinnet/servermonitor/ssh/channel/Channel;->cm:Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;

    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/channel/RemoteAcceptThread;->c:Lcom/odinnet/servermonitor/ssh/channel/Channel;

    invoke-virtual {v2, v3}, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->sendOpenConfirmation(Lcom/odinnet/servermonitor/ssh/channel/Channel;)V

    .line 53
    new-instance v2, Ljava/net/Socket;

    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/channel/RemoteAcceptThread;->targetAddress:Ljava/lang/String;

    iget v4, p0, Lcom/odinnet/servermonitor/ssh/channel/RemoteAcceptThread;->targetPort:I

    invoke-direct {v2, v3, v4}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/odinnet/servermonitor/ssh/channel/RemoteAcceptThread;->s:Ljava/net/Socket;

    .line 55
    new-instance v0, Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;

    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/channel/RemoteAcceptThread;->c:Lcom/odinnet/servermonitor/ssh/channel/Channel;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/odinnet/servermonitor/ssh/channel/RemoteAcceptThread;->c:Lcom/odinnet/servermonitor/ssh/channel/Channel;

    invoke-virtual {v4}, Lcom/odinnet/servermonitor/ssh/channel/Channel;->getStdoutStream()Lcom/odinnet/servermonitor/ssh/channel/ChannelInputStream;

    move-result-object v4

    iget-object v5, p0, Lcom/odinnet/servermonitor/ssh/channel/RemoteAcceptThread;->s:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    const-string v6, "RemoteToLocal"

    invoke-direct/range {v0 .. v6}, Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;-><init>(Lcom/odinnet/servermonitor/ssh/channel/Channel;Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;Ljava/net/Socket;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 57
    .local v0, "r2l":Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;
    new-instance v1, Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;

    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/channel/RemoteAcceptThread;->c:Lcom/odinnet/servermonitor/ssh/channel/Channel;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/odinnet/servermonitor/ssh/channel/RemoteAcceptThread;->s:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    iget-object v6, p0, Lcom/odinnet/servermonitor/ssh/channel/RemoteAcceptThread;->c:Lcom/odinnet/servermonitor/ssh/channel/Channel;

    invoke-virtual {v6}, Lcom/odinnet/servermonitor/ssh/channel/Channel;->getStdinStream()Lcom/odinnet/servermonitor/ssh/channel/ChannelOutputStream;

    move-result-object v6

    const-string v7, "LocalToRemote"

    invoke-direct/range {v1 .. v7}, Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;-><init>(Lcom/odinnet/servermonitor/ssh/channel/Channel;Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;Ljava/net/Socket;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 62
    .local v1, "l2r":Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;->setDaemon(Z)V

    .line 63
    invoke-virtual {v0}, Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;->start()V

    .line 64
    invoke-virtual {v1}, Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;->run()V

    .line 66
    :goto_0
    invoke-virtual {v0}, Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;->isAlive()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    :try_start_1
    invoke-virtual {v0}, Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 72
    :catch_0
    move-exception v2

    goto :goto_0

    .line 79
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/channel/RemoteAcceptThread;->c:Lcom/odinnet/servermonitor/ssh/channel/Channel;

    iget-object v2, v2, Lcom/odinnet/servermonitor/ssh/channel/Channel;->cm:Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;

    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/channel/RemoteAcceptThread;->c:Lcom/odinnet/servermonitor/ssh/channel/Channel;

    const-string v4, "EOF on both streams reached."

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->closeChannel(Lcom/odinnet/servermonitor/ssh/channel/Channel;Ljava/lang/String;Z)V

    .line 80
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/channel/RemoteAcceptThread;->s:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 102
    .end local v0    # "r2l":Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;
    .end local v1    # "l2r":Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;
    :cond_1
    :goto_1
    return-void

    .line 82
    :catch_1
    move-exception v2

    move-object v8, v2

    .line 84
    .local v8, "e":Ljava/io/IOException;
    sget-object v2, Lcom/odinnet/servermonitor/ssh/channel/RemoteAcceptThread;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    const/16 v3, 0x32

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IOException in proxy code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/odinnet/servermonitor/ssh/log/Logger;->log(ILjava/lang/String;)V

    .line 88
    :try_start_3
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/channel/RemoteAcceptThread;->c:Lcom/odinnet/servermonitor/ssh/channel/Channel;

    iget-object v2, v2, Lcom/odinnet/servermonitor/ssh/channel/Channel;->cm:Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;

    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/channel/RemoteAcceptThread;->c:Lcom/odinnet/servermonitor/ssh/channel/Channel;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IOException in proxy code ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->closeChannel(Lcom/odinnet/servermonitor/ssh/channel/Channel;Ljava/lang/String;Z)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 95
    :goto_2
    :try_start_4
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/channel/RemoteAcceptThread;->s:Ljava/net/Socket;

    if-eqz v2, :cond_1

    .line 96
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/channel/RemoteAcceptThread;->s:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 98
    :catch_2
    move-exception v2

    goto :goto_1

    .line 90
    :catch_3
    move-exception v2

    goto :goto_2
.end method
