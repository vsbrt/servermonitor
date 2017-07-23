.class public Lcom/odinnet/servermonitor/ssh/channel/DynamicAcceptThread;
.super Ljava/lang/Thread;
.source "DynamicAcceptThread.java"

# interfaces
.implements Lcom/odinnet/servermonitor/ssh/channel/IChannelWorkerThread;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/odinnet/servermonitor/ssh/channel/DynamicAcceptThread$DynamicAcceptRunnable;
    }
.end annotation


# instance fields
.field private cm:Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;

.field private ss:Ljava/net/ServerSocket;


# direct methods
.method public constructor <init>(Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;I)V
    .locals 1
    .param p1, "cm"    # Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;
    .param p2, "local_port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 230
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 231
    iput-object p1, p0, Lcom/odinnet/servermonitor/ssh/channel/DynamicAcceptThread;->cm:Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;

    .line 233
    const-string v0, "DynamicAcceptThread"

    invoke-virtual {p0, v0}, Lcom/odinnet/servermonitor/ssh/channel/DynamicAcceptThread;->setName(Ljava/lang/String;)V

    .line 235
    new-instance v0, Ljava/net/ServerSocket;

    invoke-direct {v0, p2}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/channel/DynamicAcceptThread;->ss:Ljava/net/ServerSocket;

    .line 236
    return-void
.end method

.method public constructor <init>(Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;Ljava/net/InetSocketAddress;)V
    .locals 1
    .param p1, "cm"    # Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;
    .param p2, "localAddress"    # Ljava/net/InetSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 239
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 240
    iput-object p1, p0, Lcom/odinnet/servermonitor/ssh/channel/DynamicAcceptThread;->cm:Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;

    .line 242
    new-instance v0, Ljava/net/ServerSocket;

    invoke-direct {v0}, Ljava/net/ServerSocket;-><init>()V

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/channel/DynamicAcceptThread;->ss:Ljava/net/ServerSocket;

    .line 243
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/channel/DynamicAcceptThread;->ss:Ljava/net/ServerSocket;

    invoke-virtual {v0, p2}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    .line 244
    return-void
.end method

.method static synthetic access$000(Lcom/odinnet/servermonitor/ssh/channel/DynamicAcceptThread;)Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;
    .locals 1
    .param p0, "x0"    # Lcom/odinnet/servermonitor/ssh/channel/DynamicAcceptThread;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/channel/DynamicAcceptThread;->cm:Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 249
    :try_start_0
    iget-object v4, p0, Lcom/odinnet/servermonitor/ssh/channel/DynamicAcceptThread;->cm:Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;

    invoke-virtual {v4, p0}, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->registerThread(Lcom/odinnet/servermonitor/ssh/channel/IChannelWorkerThread;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    :goto_0
    const/4 v2, 0x0

    .line 259
    .local v2, "sock":Ljava/net/Socket;
    :try_start_1
    iget-object v4, p0, Lcom/odinnet/servermonitor/ssh/channel/DynamicAcceptThread;->ss:Ljava/net/ServerSocket;

    invoke-virtual {v4}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 265
    new-instance v0, Lcom/odinnet/servermonitor/ssh/channel/DynamicAcceptThread$DynamicAcceptRunnable;

    new-instance v4, Lnet/sourceforge/jsocks/server/ServerAuthenticatorNone;

    invoke-direct {v4}, Lnet/sourceforge/jsocks/server/ServerAuthenticatorNone;-><init>()V

    invoke-direct {v0, p0, v4, v2}, Lcom/odinnet/servermonitor/ssh/channel/DynamicAcceptThread$DynamicAcceptRunnable;-><init>(Lcom/odinnet/servermonitor/ssh/channel/DynamicAcceptThread;Lnet/sourceforge/jsocks/server/ServerAuthenticator;Ljava/net/Socket;)V

    .line 266
    .local v0, "dar":Lcom/odinnet/servermonitor/ssh/channel/DynamicAcceptThread$DynamicAcceptRunnable;
    new-instance v3, Ljava/lang/Thread;

    invoke-direct {v3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 267
    .local v3, "t":Ljava/lang/Thread;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 268
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 250
    .end local v0    # "dar":Lcom/odinnet/servermonitor/ssh/channel/DynamicAcceptThread$DynamicAcceptRunnable;
    .end local v2    # "sock":Ljava/net/Socket;
    .end local v3    # "t":Ljava/lang/Thread;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 251
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/odinnet/servermonitor/ssh/channel/DynamicAcceptThread;->stopWorking()V

    .line 262
    :goto_1
    return-void

    .line 260
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "sock":Ljava/net/Socket;
    :catch_1
    move-exception v4

    move-object v1, v4

    .line 261
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/odinnet/servermonitor/ssh/channel/DynamicAcceptThread;->stopWorking()V

    goto :goto_1
.end method

.method public stopWorking()V
    .locals 1

    .prologue
    .line 280
    :try_start_0
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/channel/DynamicAcceptThread;->ss:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    :goto_0
    return-void

    .line 281
    :catch_0
    move-exception v0

    goto :goto_0
.end method
