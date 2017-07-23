.class public Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;
.super Ljava/lang/Object;
.source "ChannelManager.java"

# interfaces
.implements Lcom/odinnet/servermonitor/ssh/transport/MessageHandler;


# static fields
.field private static final log:Lcom/odinnet/servermonitor/ssh/log/Logger;


# instance fields
.field private authAgent:Lcom/odinnet/servermonitor/ssh/AuthAgentCallback;

.field private channels:Ljava/util/Vector;

.field private globalFailedCounter:I

.field private globalSuccessCounter:I

.field private listenerThreads:Ljava/util/Vector;

.field private listenerThreadsAllowed:Z

.field private nextLocalChannel:I

.field private remoteForwardings:Ljava/util/HashMap;

.field private shutdown:Z

.field private tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

.field private x11_magic_cookies:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;

    invoke-static {v0}, Lcom/odinnet/servermonitor/ssh/log/Logger;->getLogger(Ljava/lang/Class;)Lcom/odinnet/servermonitor/ssh/log/Logger;

    move-result-object v0

    sput-object v0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/odinnet/servermonitor/ssh/transport/TransportManager;)V
    .locals 3
    .param p1, "tm"    # Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    .prologue
    const/16 v2, 0x64

    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->x11_magic_cookies:Ljava/util/HashMap;

    .line 47
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->channels:Ljava/util/Vector;

    .line 48
    iput v2, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->nextLocalChannel:I

    .line 49
    iput-boolean v1, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->shutdown:Z

    .line 50
    iput v1, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->globalSuccessCounter:I

    .line 51
    iput v1, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->globalFailedCounter:I

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->remoteForwardings:Ljava/util/HashMap;

    .line 57
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->listenerThreads:Ljava/util/Vector;

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->listenerThreadsAllowed:Z

    .line 63
    iput-object p1, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    .line 64
    const/16 v0, 0x50

    invoke-virtual {p1, p0, v0, v2}, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->registerMessageHandler(Lcom/odinnet/servermonitor/ssh/transport/MessageHandler;II)V

    .line 65
    return-void
.end method

.method private addChannel(Lcom/odinnet/servermonitor/ssh/channel/Channel;)I
    .locals 3
    .param p1, "c"    # Lcom/odinnet/servermonitor/ssh/channel/Channel;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->channels:Ljava/util/Vector;

    monitor-enter v0

    .line 101
    :try_start_0
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->channels:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 102
    iget v1, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->nextLocalChannel:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->nextLocalChannel:I

    monitor-exit v0

    return v1

    .line 103
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getChannel(I)Lcom/odinnet/servermonitor/ssh/channel/Channel;
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 69
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->channels:Ljava/util/Vector;

    monitor-enter v2

    .line 71
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->channels:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 73
    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->channels:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/odinnet/servermonitor/ssh/channel/Channel;

    .line 74
    .local v0, "c":Lcom/odinnet/servermonitor/ssh/channel/Channel;
    iget v3, v0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->localID:I

    if-ne v3, p1, :cond_0

    .line 75
    monitor-exit v2

    move-object v2, v0

    .line 78
    .end local v0    # "c":Lcom/odinnet/servermonitor/ssh/channel/Channel;
    :goto_1
    return-object v2

    .line 71
    .restart local v0    # "c":Lcom/odinnet/servermonitor/ssh/channel/Channel;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 77
    .end local v0    # "c":Lcom/odinnet/servermonitor/ssh/channel/Channel;
    :cond_1
    monitor-exit v2

    .line 78
    const/4 v2, 0x0

    goto :goto_1

    .line 77
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private removeChannel(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 83
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->channels:Ljava/util/Vector;

    monitor-enter v2

    .line 85
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->channels:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 87
    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->channels:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/odinnet/servermonitor/ssh/channel/Channel;

    .line 88
    .local v0, "c":Lcom/odinnet/servermonitor/ssh/channel/Channel;
    iget v3, v0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->localID:I

    if-ne v3, p1, :cond_1

    .line 90
    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->channels:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->removeElementAt(I)V

    .line 94
    .end local v0    # "c":Lcom/odinnet/servermonitor/ssh/channel/Channel;
    :cond_0
    monitor-exit v2

    .line 95
    return-void

    .line 85
    .restart local v0    # "c":Lcom/odinnet/servermonitor/ssh/channel/Channel;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 94
    .end local v0    # "c":Lcom/odinnet/servermonitor/ssh/channel/Channel;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private final waitForChannelRequestResult(Lcom/odinnet/servermonitor/ssh/channel/Channel;)Z
    .locals 4
    .param p1, "c"    # Lcom/odinnet/servermonitor/ssh/channel/Channel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 168
    monitor-enter p1

    .line 170
    :goto_0
    :try_start_0
    iget v1, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->successCounter:I

    if-nez v1, :cond_2

    iget v1, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->failedCounter:I

    if-nez v1, :cond_2

    .line 172
    iget v1, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->state:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 174
    invoke-virtual {p1}, Lcom/odinnet/servermonitor/ssh/channel/Channel;->getReasonClosed()Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, "detail":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 179
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "This SSH2 channel is not open ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 199
    .end local v0    # "detail":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 184
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 186
    :catch_0
    move-exception v1

    goto :goto_0

    .line 191
    :cond_2
    :try_start_2
    iget v1, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->failedCounter:I

    if-nez v1, :cond_3

    iget v1, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->successCounter:I

    if-ne v1, v3, :cond_3

    .line 192
    monitor-exit p1

    move v1, v3

    .line 195
    :goto_1
    return v1

    .line 194
    :cond_3
    iget v1, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->failedCounter:I

    if-ne v1, v3, :cond_4

    iget v1, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->successCounter:I

    if-nez v1, :cond_4

    .line 195
    const/4 v1, 0x0

    monitor-exit p1

    goto :goto_1

    .line 197
    :cond_4
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal state. The server sent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->successCounter:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " SSH_MSG_CHANNEL_SUCCESS and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->failedCounter:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " SSH_MSG_CHANNEL_FAILURE messages."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method private final waitForGlobalRequestResult()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 137
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->channels:Ljava/util/Vector;

    monitor-enter v0

    .line 139
    :goto_0
    :try_start_0
    iget v1, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->globalSuccessCounter:I

    if-nez v1, :cond_1

    iget v1, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->globalFailedCounter:I

    if-nez v1, :cond_1

    .line 141
    iget-boolean v1, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->shutdown:Z

    if-eqz v1, :cond_0

    .line 143
    new-instance v1, Ljava/io/IOException;

    const-string v2, "The connection is being shutdown"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 163
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 148
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->channels:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 150
    :catch_0
    move-exception v1

    goto :goto_0

    .line 155
    :cond_1
    :try_start_2
    iget v1, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->globalFailedCounter:I

    if-nez v1, :cond_2

    iget v1, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->globalSuccessCounter:I

    if-ne v1, v2, :cond_2

    .line 156
    monitor-exit v0

    move v0, v2

    .line 159
    :goto_1
    return v0

    .line 158
    :cond_2
    iget v1, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->globalFailedCounter:I

    if-ne v1, v2, :cond_3

    iget v1, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->globalSuccessCounter:I

    if-nez v1, :cond_3

    .line 159
    const/4 v1, 0x0

    monitor-exit v0

    move v0, v1

    goto :goto_1

    .line 161
    :cond_3
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal state. The server sent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->globalSuccessCounter:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " SSH_MSG_REQUEST_SUCCESS and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->globalFailedCounter:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " SSH_MSG_REQUEST_FAILURE messages."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method private waitUntilChannelOpen(Lcom/odinnet/servermonitor/ssh/channel/Channel;)V
    .locals 4
    .param p1, "c"    # Lcom/odinnet/servermonitor/ssh/channel/Channel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    monitor-enter p1

    .line 110
    :goto_0
    :try_start_0
    iget v1, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 114
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 116
    :catch_0
    move-exception v1

    goto :goto_0

    .line 121
    :cond_0
    :try_start_2
    iget v1, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->state:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    .line 123
    iget v1, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->localID:I

    invoke-direct {p0, v1}, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->removeChannel(I)V

    .line 125
    invoke-virtual {p1}, Lcom/odinnet/servermonitor/ssh/channel/Channel;->getReasonClosed()Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "detail":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    :cond_1
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not open channel ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 132
    .end local v0    # "detail":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_2
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 133
    return-void
.end method


# virtual methods
.method public checkX11Cookie(Ljava/lang/String;)Lcom/odinnet/servermonitor/ssh/channel/X11ServerData;
    .locals 2
    .param p1, "hexFakeCookie"    # Ljava/lang/String;

    .prologue
    .line 255
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->x11_magic_cookies:Ljava/util/HashMap;

    monitor-enter v0

    .line 257
    if-eqz p1, :cond_0

    .line 258
    :try_start_0
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->x11_magic_cookies:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;
    check-cast p0, Lcom/odinnet/servermonitor/ssh/channel/X11ServerData;

    monitor-exit v0

    move-object v0, p0

    .line 260
    :goto_0
    return-object v0

    .line 259
    .restart local p0    # "this":Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;
    :cond_0
    monitor-exit v0

    .line 260
    const/4 v0, 0x0

    goto :goto_0

    .line 259
    .end local p0    # "this":Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public closeAllChannels()V
    .locals 7

    .prologue
    const-string v6, "Closing all channels"

    .line 265
    sget-object v3, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    invoke-virtual {v3}, Lcom/odinnet/servermonitor/ssh/log/Logger;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 266
    sget-object v3, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    const/16 v4, 0x32

    const-string v5, "Closing all channels"

    invoke-virtual {v3, v4, v6}, Lcom/odinnet/servermonitor/ssh/log/Logger;->log(ILjava/lang/String;)V

    .line 270
    :cond_0
    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->channels:Ljava/util/Vector;

    monitor-enter v3

    .line 272
    :try_start_0
    iget-object v4, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->channels:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    .line 273
    .local v1, "channel_copy":Ljava/util/Vector;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 277
    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/odinnet/servermonitor/ssh/channel/Channel;

    .line 280
    .local v0, "c":Lcom/odinnet/servermonitor/ssh/channel/Channel;
    :try_start_1
    const-string v3, "Closing all channels"

    const/4 v4, 0x1

    invoke-virtual {p0, v0, v3, v4}, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->closeChannel(Lcom/odinnet/servermonitor/ssh/channel/Channel;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 275
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 273
    .end local v0    # "c":Lcom/odinnet/servermonitor/ssh/channel/Channel;
    .end local v1    # "channel_copy":Ljava/util/Vector;
    .end local v2    # "i":I
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 286
    .restart local v1    # "channel_copy":Ljava/util/Vector;
    .restart local v2    # "i":I
    :cond_1
    return-void

    .line 282
    .restart local v0    # "c":Lcom/odinnet/servermonitor/ssh/channel/Channel;
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public closeChannel(Lcom/odinnet/servermonitor/ssh/channel/Channel;Ljava/lang/String;Z)V
    .locals 5
    .param p1, "c"    # Lcom/odinnet/servermonitor/ssh/channel/Channel;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "force"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 290
    const/4 v1, 0x5

    new-array v0, v1, [B

    .line 292
    .local v0, "msg":[B
    monitor-enter p1

    .line 294
    if-eqz p3, :cond_0

    .line 296
    const/4 v1, 0x4

    :try_start_0
    iput v1, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->state:I

    .line 297
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->EOF:Z

    .line 300
    :cond_0
    invoke-virtual {p1, p2}, Lcom/odinnet/servermonitor/ssh/channel/Channel;->setReasonClosed(Ljava/lang/String;)V

    .line 302
    const/4 v1, 0x0

    const/16 v2, 0x61

    aput-byte v2, v0, v1

    .line 303
    const/4 v1, 0x1

    iget v2, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->remoteID:I

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 304
    const/4 v1, 0x2

    iget v2, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->remoteID:I

    shr-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 305
    const/4 v1, 0x3

    iget v2, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->remoteID:I

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 306
    const/4 v1, 0x4

    iget v2, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->remoteID:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 308
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 309
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    iget-object v1, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->channelSendLock:Ljava/lang/Object;

    monitor-enter v1

    .line 313
    :try_start_1
    iget-boolean v2, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->closeMessageSent:Z

    if-ne v2, v3, :cond_2

    .line 314
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 321
    :cond_1
    :goto_0
    return-void

    .line 309
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 315
    :cond_2
    :try_start_3
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    invoke-virtual {v2, v0}, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->sendMessage([B)V

    .line 316
    const/4 v2, 0x1

    iput-boolean v2, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->closeMessageSent:Z

    .line 317
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 319
    sget-object v1, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    invoke-virtual {v1}, Lcom/odinnet/servermonitor/ssh/log/Logger;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 320
    sget-object v1, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    const/16 v2, 0x32

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sent SSH_MSG_CHANNEL_CLOSE (channel "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->localID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/odinnet/servermonitor/ssh/log/Logger;->log(ILjava/lang/String;)V

    goto :goto_0

    .line 317
    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2
.end method

.method public getAvailable(Lcom/odinnet/servermonitor/ssh/channel/Channel;Z)I
    .locals 3
    .param p1, "c"    # Lcom/odinnet/servermonitor/ssh/channel/Channel;
    .param p2, "extended"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1000
    monitor-enter p1

    .line 1004
    if-eqz p2, :cond_0

    .line 1005
    :try_start_0
    iget v1, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->stderrWritepos:I

    iget v2, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->stderrReadpos:I

    sub-int v0, v1, v2

    .line 1009
    .local v0, "avail":I
    :goto_0
    if-lez v0, :cond_1

    move v1, v0

    :goto_1
    monitor-exit p1

    return v1

    .line 1007
    .end local v0    # "avail":I
    :cond_0
    iget v1, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->stdoutWritepos:I

    iget v2, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->stdoutReadpos:I

    sub-int v0, v1, v2

    .restart local v0    # "avail":I
    goto :goto_0

    .line 1009
    :cond_1
    iget-boolean v1, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->EOF:Z

    if-eqz v1, :cond_2

    const/4 v1, -0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 1010
    .end local v0    # "avail":I
    :catchall_0
    move-exception v1

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getChannelData(Lcom/odinnet/servermonitor/ssh/channel/Channel;Z[BII)I
    .locals 19
    .param p1, "c"    # Lcom/odinnet/servermonitor/ssh/channel/Channel;
    .param p2, "extended"    # Z
    .param p3, "target"    # [B
    .param p4, "off"    # I
    .param p5, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1015
    const/4 v5, 0x0

    .line 1016
    .local v5, "copylen":I
    const/4 v6, 0x0

    .line 1017
    .local v6, "increment":I
    const/4 v10, 0x0

    .line 1018
    .local v10, "remoteID":I
    const/4 v7, 0x0

    .line 1020
    .local v7, "localID":I
    monitor-enter p1

    .line 1022
    const/4 v12, 0x0

    .line 1023
    .local v12, "stdoutAvail":I
    const/4 v11, 0x0

    .line 1032
    .local v11, "stderrAvail":I
    :goto_0
    :try_start_0
    move-object/from16 v0, p1

    iget v0, v0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->stdoutWritepos:I

    move v13, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->stdoutReadpos:I

    move v14, v0

    sub-int v12, v13, v14

    .line 1033
    move-object/from16 v0, p1

    iget v0, v0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->stderrWritepos:I

    move v13, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->stderrReadpos:I

    move v14, v0

    sub-int v11, v13, v14

    .line 1035
    if-nez p2, :cond_2

    if-eqz v12, :cond_2

    .line 1057
    :cond_0
    if-nez p2, :cond_7

    .line 1059
    move v0, v12

    move/from16 v1, p5

    if-le v0, v1, :cond_6

    move/from16 v5, p5

    .line 1060
    :goto_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->stdoutBuffer:[B

    move-object v13, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->stdoutReadpos:I

    move v14, v0

    move-object v0, v13

    move v1, v14

    move-object/from16 v2, p3

    move/from16 v3, p4

    move v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1061
    move-object/from16 v0, p1

    iget v0, v0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->stdoutReadpos:I

    move v13, v0

    add-int/2addr v13, v5

    move v0, v13

    move-object/from16 v1, p1

    iput v0, v1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->stdoutReadpos:I

    .line 1063
    move-object/from16 v0, p1

    iget v0, v0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->stdoutReadpos:I

    move v13, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->stdoutWritepos:I

    move v14, v0

    if-eq v13, v14, :cond_1

    .line 1065
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->stdoutBuffer:[B

    move-object v13, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->stdoutReadpos:I

    move v14, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->stdoutBuffer:[B

    move-object v15, v0

    const/16 v16, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->stdoutWritepos:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->stdoutReadpos:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    invoke-static/range {v13 .. v17}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1068
    :cond_1
    move-object/from16 v0, p1

    iget v0, v0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->stdoutWritepos:I

    move v13, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->stdoutReadpos:I

    move v14, v0

    sub-int/2addr v13, v14

    move v0, v13

    move-object/from16 v1, p1

    iput v0, v1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->stdoutWritepos:I

    .line 1069
    const/4 v13, 0x0

    move v0, v13

    move-object/from16 v1, p1

    iput v0, v1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->stdoutReadpos:I

    .line 1086
    :goto_2
    move-object/from16 v0, p1

    iget v0, v0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->state:I

    move v13, v0

    const/4 v14, 0x2

    if-eq v13, v14, :cond_a

    .line 1087
    monitor-exit p1

    move v13, v5

    .line 1132
    :goto_3
    return v13

    .line 1038
    :cond_2
    if-eqz p2, :cond_3

    if-nez v11, :cond_0

    .line 1043
    :cond_3
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->EOF:Z

    move v13, v0

    if-nez v13, :cond_4

    move-object/from16 v0, p1

    iget v0, v0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->state:I

    move v13, v0

    const/4 v14, 0x2

    if-eq v13, v14, :cond_5

    .line 1044
    :cond_4
    const/4 v13, -0x1

    monitor-exit p1

    goto :goto_3

    .line 1100
    :catchall_0
    move-exception v13

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v13

    .line 1048
    :cond_5
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 1050
    :catch_0
    move-exception v13

    goto/16 :goto_0

    :cond_6
    move v5, v12

    .line 1059
    goto/16 :goto_1

    .line 1073
    :cond_7
    move v0, v11

    move/from16 v1, p5

    if-le v0, v1, :cond_9

    move/from16 v5, p5

    .line 1074
    :goto_4
    :try_start_2
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->stderrBuffer:[B

    move-object v13, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->stderrReadpos:I

    move v14, v0

    move-object v0, v13

    move v1, v14

    move-object/from16 v2, p3

    move/from16 v3, p4

    move v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1075
    move-object/from16 v0, p1

    iget v0, v0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->stderrReadpos:I

    move v13, v0

    add-int/2addr v13, v5

    move v0, v13

    move-object/from16 v1, p1

    iput v0, v1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->stderrReadpos:I

    .line 1077
    move-object/from16 v0, p1

    iget v0, v0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->stderrReadpos:I

    move v13, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->stderrWritepos:I

    move v14, v0

    if-eq v13, v14, :cond_8

    .line 1079
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->stderrBuffer:[B

    move-object v13, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->stderrReadpos:I

    move v14, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->stderrBuffer:[B

    move-object v15, v0

    const/16 v16, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->stderrWritepos:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->stderrReadpos:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    invoke-static/range {v13 .. v17}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1082
    :cond_8
    move-object/from16 v0, p1

    iget v0, v0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->stderrWritepos:I

    move v13, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->stderrReadpos:I

    move v14, v0

    sub-int/2addr v13, v14

    move v0, v13

    move-object/from16 v1, p1

    iput v0, v1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->stderrWritepos:I

    .line 1083
    const/4 v13, 0x0

    move v0, v13

    move-object/from16 v1, p1

    iput v0, v1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->stderrReadpos:I

    goto/16 :goto_2

    :cond_9
    move v5, v11

    .line 1073
    goto :goto_4

    .line 1089
    :cond_a
    move-object/from16 v0, p1

    iget v0, v0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->localWindow:I

    move v13, v0

    const/16 v14, 0x3a98

    if-ge v13, v14, :cond_b

    .line 1091
    const/16 v13, 0x7530

    move-object/from16 v0, p1

    iget v0, v0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->stdoutWritepos:I

    move v14, v0

    sub-int/2addr v13, v14

    const/16 v14, 0x7530

    move-object/from16 v0, p1

    iget v0, v0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->stderrWritepos:I

    move v15, v0

    sub-int/2addr v14, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 1094
    .local v8, "minFreeSpace":I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->localWindow:I

    move v13, v0

    sub-int v6, v8, v13

    .line 1095
    move v0, v8

    move-object/from16 v1, p1

    iput v0, v1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->localWindow:I

    .line 1098
    .end local v8    # "minFreeSpace":I
    :cond_b
    move-object/from16 v0, p1

    iget v0, v0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->remoteID:I

    move v10, v0

    .line 1099
    move-object/from16 v0, p1

    iget v0, v0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->localID:I

    move v7, v0

    .line 1100
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1108
    if-lez v6, :cond_e

    .line 1110
    sget-object v13, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    invoke-virtual {v13}, Lcom/odinnet/servermonitor/ssh/log/Logger;->isEnabled()Z

    move-result v13

    if-eqz v13, :cond_c

    .line 1111
    sget-object v13, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    const/16 v14, 0x50

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Sending SSH_MSG_CHANNEL_WINDOW_ADJUST (channel "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/odinnet/servermonitor/ssh/log/Logger;->log(ILjava/lang/String;)V

    .line 1113
    :cond_c
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->channelSendLock:Ljava/lang/Object;

    move-object v13, v0

    monitor-enter v13

    .line 1115
    :try_start_3
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->msgWindowAdjust:[B

    move-object v9, v0

    .line 1117
    .local v9, "msg":[B
    const/4 v14, 0x0

    const/16 v15, 0x5d

    aput-byte v15, v9, v14

    .line 1118
    const/4 v14, 0x1

    shr-int/lit8 v15, v10, 0x18

    int-to-byte v15, v15

    aput-byte v15, v9, v14

    .line 1119
    const/4 v14, 0x2

    shr-int/lit8 v15, v10, 0x10

    int-to-byte v15, v15

    aput-byte v15, v9, v14

    .line 1120
    const/4 v14, 0x3

    shr-int/lit8 v15, v10, 0x8

    int-to-byte v15, v15

    aput-byte v15, v9, v14

    .line 1121
    const/4 v14, 0x4

    int-to-byte v15, v10

    aput-byte v15, v9, v14

    .line 1122
    const/4 v14, 0x5

    shr-int/lit8 v15, v6, 0x18

    int-to-byte v15, v15

    aput-byte v15, v9, v14

    .line 1123
    const/4 v14, 0x6

    shr-int/lit8 v15, v6, 0x10

    int-to-byte v15, v15

    aput-byte v15, v9, v14

    .line 1124
    const/4 v14, 0x7

    shr-int/lit8 v15, v6, 0x8

    int-to-byte v15, v15

    aput-byte v15, v9, v14

    .line 1125
    const/16 v14, 0x8

    int-to-byte v15, v6

    aput-byte v15, v9, v14

    .line 1127
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->closeMessageSent:Z

    move v14, v0

    if-nez v14, :cond_d

    .line 1128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    move-object v14, v0

    invoke-virtual {v14, v9}, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->sendMessage([B)V

    .line 1129
    :cond_d
    monitor-exit v13

    .end local v9    # "msg":[B
    :cond_e
    move v13, v5

    .line 1132
    goto/16 :goto_3

    .line 1129
    :catchall_1
    move-exception v14

    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v14
.end method

.method public handleMessage([BI)V
    .locals 7
    .param p1, "msg"    # [B
    .param p2, "msglen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1664
    if-nez p1, :cond_3

    .line 1666
    sget-object v3, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    invoke-virtual {v3}, Lcom/odinnet/servermonitor/ssh/log/Logger;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1667
    sget-object v3, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    const/16 v4, 0x32

    const-string v5, "HandleMessage: got shutdown"

    invoke-virtual {v3, v4, v5}, Lcom/odinnet/servermonitor/ssh/log/Logger;->log(ILjava/lang/String;)V

    .line 1669
    :cond_0
    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->listenerThreads:Ljava/util/Vector;

    monitor-enter v3

    .line 1671
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->listenerThreads:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 1673
    iget-object v4, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->listenerThreads:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/odinnet/servermonitor/ssh/channel/IChannelWorkerThread;

    .line 1674
    .local v2, "lat":Lcom/odinnet/servermonitor/ssh/channel/IChannelWorkerThread;
    invoke-interface {v2}, Lcom/odinnet/servermonitor/ssh/channel/IChannelWorkerThread;->stopWorking()V

    .line 1671
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1676
    .end local v2    # "lat":Lcom/odinnet/servermonitor/ssh/channel/IChannelWorkerThread;
    :cond_1
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->listenerThreadsAllowed:Z

    .line 1677
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1679
    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->channels:Ljava/util/Vector;

    monitor-enter v3

    .line 1681
    const/4 v4, 0x1

    :try_start_1
    iput-boolean v4, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->shutdown:Z

    .line 1683
    const/4 v1, 0x0

    :goto_1
    iget-object v4, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->channels:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 1685
    iget-object v4, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->channels:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/odinnet/servermonitor/ssh/channel/Channel;

    .line 1686
    .local v0, "c":Lcom/odinnet/servermonitor/ssh/channel/Channel;
    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1688
    const/4 v4, 0x1

    :try_start_2
    iput-boolean v4, v0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->EOF:Z

    .line 1689
    const/4 v4, 0x4

    iput v4, v0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->state:I

    .line 1690
    const-string v4, "The connection is being shutdown"

    invoke-virtual {v0, v4}, Lcom/odinnet/servermonitor/ssh/channel/Channel;->setReasonClosed(Ljava/lang/String;)V

    .line 1691
    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->closeMessageRecv:Z

    .line 1697
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1698
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1683
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1677
    .end local v0    # "c":Lcom/odinnet/servermonitor/ssh/channel/Channel;
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 1698
    .restart local v0    # "c":Lcom/odinnet/servermonitor/ssh/channel/Channel;
    :catchall_1
    move-exception v4

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v4

    .line 1705
    .end local v0    # "c":Lcom/odinnet/servermonitor/ssh/channel/Channel;
    :catchall_2
    move-exception v4

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v4

    .line 1701
    :cond_2
    :try_start_6
    iget-object v4, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->channels:Ljava/util/Vector;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/Vector;->setSize(I)V

    .line 1702
    iget-object v4, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->channels:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->trimToSize()V

    .line 1703
    iget-object v4, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->channels:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 1704
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1755
    .end local v1    # "i":I
    :goto_2
    return-void

    .line 1708
    :cond_3
    aget-byte v3, p1, v6

    packed-switch v3, :pswitch_data_0

    .line 1753
    :pswitch_0
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot handle unknown channel message "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-byte v5, p1, v6

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1711
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->msgChannelOpenConfirmation([BI)V

    goto :goto_2

    .line 1714
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->msgChannelWindowAdjust([BI)V

    goto :goto_2

    .line 1717
    :pswitch_3
    invoke-virtual {p0, p1, p2}, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->msgChannelData([BI)V

    goto :goto_2

    .line 1720
    :pswitch_4
    invoke-virtual {p0, p1, p2}, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->msgChannelExtendedData([BI)V

    goto :goto_2

    .line 1723
    :pswitch_5
    invoke-virtual {p0, p1, p2}, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->msgChannelRequest([BI)V

    goto :goto_2

    .line 1726
    :pswitch_6
    invoke-virtual {p0, p1, p2}, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->msgChannelEOF([BI)V

    goto :goto_2

    .line 1729
    :pswitch_7
    invoke-virtual {p0, p1, p2}, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->msgChannelOpen([BI)V

    goto :goto_2

    .line 1732
    :pswitch_8
    invoke-virtual {p0, p1, p2}, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->msgChannelClose([BI)V

    goto :goto_2

    .line 1735
    :pswitch_9
    invoke-virtual {p0, p1, p2}, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->msgChannelSuccess([BI)V

    goto :goto_2

    .line 1738
    :pswitch_a
    invoke-virtual {p0, p1, p2}, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->msgChannelFailure([BI)V

    goto :goto_2

    .line 1741
    :pswitch_b
    invoke-virtual {p0, p1, p2}, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->msgChannelOpenFailure([BI)V

    goto :goto_2

    .line 1744
    :pswitch_c
    invoke-virtual {p0, p1, p2}, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->msgGlobalRequest([BI)V

    goto :goto_2

    .line 1747
    :pswitch_d
    invoke-virtual {p0}, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->msgGlobalSuccess()V

    goto :goto_2

    .line 1750
    :pswitch_e
    invoke-virtual {p0}, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->msgGlobalFailure()V

    goto :goto_2

    .line 1708
    :pswitch_data_0
    .packed-switch 0x50
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_1
        :pswitch_b
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_8
        :pswitch_5
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public msgChannelClose([BI)V
    .locals 7
    .param p1, "msg"    # [B
    .param p2, "msglen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    const-string v6, ")"

    .line 1453
    const/4 v2, 0x5

    if-eq p2, v2, :cond_0

    .line 1454
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SSH_MSG_CHANNEL_CLOSE message has wrong size ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1456
    :cond_0
    aget-byte v2, p1, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    const/4 v3, 0x2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    const/4 v3, 0x3

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    aget-byte v3, p1, v4

    and-int/lit16 v3, v3, 0xff

    or-int v1, v2, v3

    .line 1458
    .local v1, "id":I
    invoke-direct {p0, v1}, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->getChannel(I)Lcom/odinnet/servermonitor/ssh/channel/Channel;

    move-result-object v0

    .line 1460
    .local v0, "c":Lcom/odinnet/servermonitor/ssh/channel/Channel;
    if-nez v0, :cond_1

    .line 1461
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected SSH_MSG_CHANNEL_CLOSE message for non-existent channel "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1463
    :cond_1
    monitor-enter v0

    .line 1465
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, v0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->EOF:Z

    .line 1466
    const/4 v2, 0x4

    iput v2, v0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->state:I

    .line 1467
    const-string v2, "Close requested by remote"

    invoke-virtual {v0, v2}, Lcom/odinnet/servermonitor/ssh/channel/Channel;->setReasonClosed(Ljava/lang/String;)V

    .line 1468
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->closeMessageRecv:Z

    .line 1470
    iget v2, v0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->localID:I

    invoke-direct {p0, v2}, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->removeChannel(I)V

    .line 1472
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1473
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1475
    sget-object v2, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    invoke-virtual {v2}, Lcom/odinnet/servermonitor/ssh/log/Logger;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1476
    sget-object v2, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    const/16 v3, 0x32

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got SSH_MSG_CHANNEL_CLOSE (channel "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/odinnet/servermonitor/ssh/log/Logger;->log(ILjava/lang/String;)V

    .line 1477
    :cond_2
    return-void

    .line 1473
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public msgChannelData([BI)V
    .locals 10
    .param p1, "msg"    # [B
    .param p2, "msglen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x2

    const/16 v6, 0x9

    const-string v7, ")"

    .line 1137
    if-gt p2, v6, :cond_0

    .line 1138
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SSH_MSG_CHANNEL_DATA message has wrong size ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1140
    :cond_0
    const/4 v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    aget-byte v4, p1, v8

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    const/4 v4, 0x3

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    aget-byte v4, p1, v9

    and-int/lit16 v4, v4, 0xff

    or-int v1, v3, v4

    .line 1141
    .local v1, "id":I
    const/4 v3, 0x5

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    const/4 v4, 0x6

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    const/4 v4, 0x7

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    const/16 v4, 0x8

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    or-int v2, v3, v4

    .line 1143
    .local v2, "len":I
    invoke-direct {p0, v1}, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->getChannel(I)Lcom/odinnet/servermonitor/ssh/channel/Channel;

    move-result-object v0

    .line 1145
    .local v0, "c":Lcom/odinnet/servermonitor/ssh/channel/Channel;
    if-nez v0, :cond_1

    .line 1146
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected SSH_MSG_CHANNEL_DATA message for non-existent channel "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1148
    :cond_1
    sub-int v3, p2, v6

    if-eq v2, v3, :cond_2

    .line 1149
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SSH_MSG_CHANNEL_DATA message has wrong len (calculated "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sub-int v5, p2, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", got "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1152
    :cond_2
    sget-object v3, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    invoke-virtual {v3}, Lcom/odinnet/servermonitor/ssh/log/Logger;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1153
    sget-object v3, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    const/16 v4, 0x50

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got SSH_MSG_CHANNEL_DATA (channel "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/odinnet/servermonitor/ssh/log/Logger;->log(ILjava/lang/String;)V

    .line 1155
    :cond_3
    monitor-enter v0

    .line 1157
    :try_start_0
    iget v3, v0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->state:I

    if-ne v3, v9, :cond_4

    .line 1158
    monitor-exit v0

    .line 1173
    :goto_0
    return-void

    .line 1160
    :cond_4
    iget v3, v0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->state:I

    if-eq v3, v8, :cond_5

    .line 1161
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got SSH_MSG_CHANNEL_DATA, but channel is not in correct state ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->state:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1172
    :catchall_0
    move-exception v3

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1163
    :cond_5
    :try_start_1
    iget v3, v0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->localWindow:I

    if-ge v3, v2, :cond_6

    .line 1164
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Remote sent too much data, does not fit into window."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1166
    :cond_6
    iget v3, v0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->localWindow:I

    sub-int/2addr v3, v2

    iput v3, v0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->localWindow:I

    .line 1168
    const/16 v3, 0x9

    iget-object v4, v0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->stdoutBuffer:[B

    iget v5, v0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->stdoutWritepos:I

    invoke-static {p1, v3, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1169
    iget v3, v0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->stdoutWritepos:I

    add-int/2addr v3, v2

    iput v3, v0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->stdoutWritepos:I

    .line 1171
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1172
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public msgChannelEOF([BI)V
    .locals 7
    .param p1, "msg"    # [B
    .param p2, "msglen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const-string v6, ")"

    .line 1431
    const/4 v2, 0x5

    if-eq p2, v2, :cond_0

    .line 1432
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SSH_MSG_CHANNEL_EOF message has wrong size ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1434
    :cond_0
    aget-byte v2, p1, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    const/4 v3, 0x2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    const/4 v3, 0x3

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    const/4 v3, 0x4

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    or-int v1, v2, v3

    .line 1436
    .local v1, "id":I
    invoke-direct {p0, v1}, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->getChannel(I)Lcom/odinnet/servermonitor/ssh/channel/Channel;

    move-result-object v0

    .line 1438
    .local v0, "c":Lcom/odinnet/servermonitor/ssh/channel/Channel;
    if-nez v0, :cond_1

    .line 1439
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected SSH_MSG_CHANNEL_EOF message for non-existent channel "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1441
    :cond_1
    monitor-enter v0

    .line 1443
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, v0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->EOF:Z

    .line 1444
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1445
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1447
    sget-object v2, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    invoke-virtual {v2}, Lcom/odinnet/servermonitor/ssh/log/Logger;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1448
    sget-object v2, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    const/16 v3, 0x32

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got SSH_MSG_CHANNEL_EOF (channel "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/odinnet/servermonitor/ssh/log/Logger;->log(ILjava/lang/String;)V

    .line 1449
    :cond_2
    return-void

    .line 1445
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public msgChannelExtendedData([BI)V
    .locals 11
    .param p1, "msg"    # [B
    .param p2, "msglen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x2

    const/4 v6, 0x1

    const/16 v7, 0xd

    const-string v8, ")"

    .line 878
    if-gt p2, v7, :cond_0

    .line 879
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SSH_MSG_CHANNEL_EXTENDED_DATA message has wrong size ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 881
    :cond_0
    aget-byte v4, p1, v6

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    aget-byte v5, p1, v9

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    const/4 v5, 0x3

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    aget-byte v5, p1, v10

    and-int/lit16 v5, v5, 0xff

    or-int v2, v4, v5

    .line 882
    .local v2, "id":I
    const/4 v4, 0x5

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    const/4 v5, 0x6

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    const/4 v5, 0x7

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    const/16 v5, 0x8

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    or-int v1, v4, v5

    .line 883
    .local v1, "dataType":I
    const/16 v4, 0x9

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    const/16 v5, 0xa

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    const/16 v5, 0xb

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    const/16 v5, 0xc

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    or-int v3, v4, v5

    .line 885
    .local v3, "len":I
    invoke-direct {p0, v2}, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->getChannel(I)Lcom/odinnet/servermonitor/ssh/channel/Channel;

    move-result-object v0

    .line 887
    .local v0, "c":Lcom/odinnet/servermonitor/ssh/channel/Channel;
    if-nez v0, :cond_1

    .line 888
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected SSH_MSG_CHANNEL_EXTENDED_DATA message for non-existent channel "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 890
    :cond_1
    if-eq v1, v6, :cond_2

    .line 891
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SSH_MSG_CHANNEL_EXTENDED_DATA message has unknown type ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 893
    :cond_2
    sub-int v4, p2, v7

    if-eq v3, v4, :cond_3

    .line 894
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SSH_MSG_CHANNEL_EXTENDED_DATA message has wrong len (calculated "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-int v6, p2, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", got "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 897
    :cond_3
    sget-object v4, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    invoke-virtual {v4}, Lcom/odinnet/servermonitor/ssh/log/Logger;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 898
    sget-object v4, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    const/16 v5, 0x50

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Got SSH_MSG_CHANNEL_EXTENDED_DATA (channel "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/odinnet/servermonitor/ssh/log/Logger;->log(ILjava/lang/String;)V

    .line 900
    :cond_4
    monitor-enter v0

    .line 902
    :try_start_0
    iget v4, v0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->state:I

    if-ne v4, v10, :cond_5

    .line 903
    monitor-exit v0

    .line 919
    :goto_0
    return-void

    .line 905
    :cond_5
    iget v4, v0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->state:I

    if-eq v4, v9, :cond_6

    .line 906
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got SSH_MSG_CHANNEL_EXTENDED_DATA, but channel is not in correct state ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->state:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 918
    :catchall_0
    move-exception v4

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 909
    :cond_6
    :try_start_1
    iget v4, v0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->localWindow:I

    if-ge v4, v3, :cond_7

    .line 910
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Remote sent too much data, does not fit into window."

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 912
    :cond_7
    iget v4, v0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->localWindow:I

    sub-int/2addr v4, v3

    iput v4, v0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->localWindow:I

    .line 914
    const/16 v4, 0xd

    iget-object v5, v0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->stderrBuffer:[B

    iget v6, v0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->stderrWritepos:I

    invoke-static {p1, v4, v5, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 915
    iget v4, v0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->stderrWritepos:I

    add-int/2addr v4, v3

    iput v4, v0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->stderrWritepos:I

    .line 917
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 918
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public msgChannelFailure([BI)V
    .locals 7
    .param p1, "msg"    # [B
    .param p2, "msglen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v6, ")"

    .line 1503
    const/4 v2, 0x5

    if-eq p2, v2, :cond_0

    .line 1504
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SSH_MSG_CHANNEL_FAILURE message has wrong size ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1506
    :cond_0
    const/4 v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    const/4 v3, 0x2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    const/4 v3, 0x3

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    const/4 v3, 0x4

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    or-int v1, v2, v3

    .line 1508
    .local v1, "id":I
    invoke-direct {p0, v1}, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->getChannel(I)Lcom/odinnet/servermonitor/ssh/channel/Channel;

    move-result-object v0

    .line 1510
    .local v0, "c":Lcom/odinnet/servermonitor/ssh/channel/Channel;
    if-nez v0, :cond_1

    .line 1511
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected SSH_MSG_CHANNEL_FAILURE message for non-existent channel "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1513
    :cond_1
    monitor-enter v0

    .line 1515
    :try_start_0
    iget v2, v0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->failedCounter:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->failedCounter:I

    .line 1516
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1517
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1519
    sget-object v2, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    invoke-virtual {v2}, Lcom/odinnet/servermonitor/ssh/log/Logger;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1520
    sget-object v2, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    const/16 v3, 0x32

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got SSH_MSG_CHANNEL_FAILURE (channel "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/odinnet/servermonitor/ssh/log/Logger;->log(ILjava/lang/String;)V

    .line 1521
    :cond_2
    return-void

    .line 1517
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public msgChannelOpen([BI)V
    .locals 21
    .param p1, "msg"    # [B
    .param p2, "msglen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1208
    new-instance v20, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;

    const/4 v10, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move v2, v10

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;-><init>([BII)V

    .line 1210
    .local v20, "tr":Lcom/odinnet/servermonitor/ssh/packets/TypesReader;
    invoke-virtual/range {v20 .. v20}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readByte()I

    .line 1211
    invoke-virtual/range {v20 .. v20}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object v13

    .line 1212
    .local v13, "channelType":Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readUINT32()I

    move-result v15

    .line 1213
    .local v15, "remoteID":I
    invoke-virtual/range {v20 .. v20}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readUINT32()I

    move-result v17

    .line 1214
    .local v17, "remoteWindow":I
    invoke-virtual/range {v20 .. v20}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readUINT32()I

    move-result v16

    .line 1216
    .local v16, "remoteMaxPacketSize":I
    const-string v10, "x11"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->x11_magic_cookies:Ljava/util/HashMap;

    move-object v10, v0

    monitor-enter v10

    .line 1222
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->x11_magic_cookies:Ljava/util/HashMap;

    move-object v11, v0

    invoke-virtual {v11}, Ljava/util/HashMap;->size()I

    move-result v11

    if-nez v11, :cond_2

    .line 1224
    new-instance v14, Lcom/odinnet/servermonitor/ssh/packets/PacketChannelOpenFailure;

    const/4 v11, 0x1

    const-string v12, "X11 forwarding not activated"

    const-string v13, ""

    .end local v13    # "channelType":Ljava/lang/String;
    invoke-direct {v14, v15, v11, v12, v13}, Lcom/odinnet/servermonitor/ssh/packets/PacketChannelOpenFailure;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 1227
    .local v14, "pcof":Lcom/odinnet/servermonitor/ssh/packets/PacketChannelOpenFailure;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    move-object v11, v0

    invoke-virtual {v14}, Lcom/odinnet/servermonitor/ssh/packets/PacketChannelOpenFailure;->getPayload()[B

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->sendAsynchronousMessage([B)V

    .line 1229
    sget-object v11, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    invoke-virtual {v11}, Lcom/odinnet/servermonitor/ssh/log/Logger;->isEnabled()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1230
    sget-object v11, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    const/16 v12, 0x14

    const-string v13, "Unexpected X11 request, denying it!"

    invoke-virtual {v11, v12, v13}, Lcom/odinnet/servermonitor/ssh/log/Logger;->log(ILjava/lang/String;)V

    .line 1232
    :cond_0
    monitor-exit v10

    .line 1341
    .end local v14    # "pcof":Lcom/odinnet/servermonitor/ssh/packets/PacketChannelOpenFailure;
    :cond_1
    :goto_0
    return-void

    .line 1234
    .restart local v13    # "channelType":Ljava/lang/String;
    :cond_2
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1236
    invoke-virtual/range {v20 .. v20}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1237
    .local v8, "remoteOriginatorAddress":Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readUINT32()I

    move-result v9

    .line 1239
    .local v9, "remoteOriginatorPort":I
    new-instance v5, Lcom/odinnet/servermonitor/ssh/channel/Channel;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/odinnet/servermonitor/ssh/channel/Channel;-><init>(Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;)V

    .line 1241
    .local v5, "c":Lcom/odinnet/servermonitor/ssh/channel/Channel;
    monitor-enter v5

    .line 1243
    :try_start_1
    iput v15, v5, Lcom/odinnet/servermonitor/ssh/channel/Channel;->remoteID:I

    .line 1244
    move/from16 v0, v17

    int-to-long v0, v0

    move-wide v10, v0

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    iput-wide v10, v5, Lcom/odinnet/servermonitor/ssh/channel/Channel;->remoteWindow:J

    .line 1245
    move/from16 v0, v16

    move-object v1, v5

    iput v0, v1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->remoteMaxPacketSize:I

    .line 1246
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->addChannel(Lcom/odinnet/servermonitor/ssh/channel/Channel;)I

    move-result v10

    iput v10, v5, Lcom/odinnet/servermonitor/ssh/channel/Channel;->localID:I

    .line 1247
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1253
    new-instance v19, Lcom/odinnet/servermonitor/ssh/channel/RemoteX11AcceptThread;

    move-object/from16 v0, v19

    move-object v1, v5

    move-object v2, v8

    move v3, v9

    invoke-direct {v0, v1, v2, v3}, Lcom/odinnet/servermonitor/ssh/channel/RemoteX11AcceptThread;-><init>(Lcom/odinnet/servermonitor/ssh/channel/Channel;Ljava/lang/String;I)V

    .line 1254
    .local v19, "rxat":Lcom/odinnet/servermonitor/ssh/channel/RemoteX11AcceptThread;
    const/4 v10, 0x1

    move-object/from16 v0, v19

    move v1, v10

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/channel/RemoteX11AcceptThread;->setDaemon(Z)V

    .line 1255
    invoke-virtual/range {v19 .. v19}, Lcom/odinnet/servermonitor/ssh/channel/RemoteX11AcceptThread;->start()V

    goto :goto_0

    .line 1234
    .end local v5    # "c":Lcom/odinnet/servermonitor/ssh/channel/Channel;
    .end local v8    # "remoteOriginatorAddress":Ljava/lang/String;
    .end local v9    # "remoteOriginatorPort":I
    .end local v13    # "channelType":Ljava/lang/String;
    .end local v19    # "rxat":Lcom/odinnet/servermonitor/ssh/channel/RemoteX11AcceptThread;
    :catchall_0
    move-exception v11

    :try_start_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v11

    .line 1247
    .restart local v5    # "c":Lcom/odinnet/servermonitor/ssh/channel/Channel;
    .restart local v8    # "remoteOriginatorAddress":Ljava/lang/String;
    .restart local v9    # "remoteOriginatorPort":I
    .restart local v13    # "channelType":Ljava/lang/String;
    :catchall_1
    move-exception v10

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v10

    .line 1260
    .end local v5    # "c":Lcom/odinnet/servermonitor/ssh/channel/Channel;
    .end local v8    # "remoteOriginatorAddress":Ljava/lang/String;
    .end local v9    # "remoteOriginatorPort":I
    :cond_3
    const-string v10, "forwarded-tcpip"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1262
    invoke-virtual/range {v20 .. v20}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1263
    .local v6, "remoteConnectedAddress":Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readUINT32()I

    move-result v7

    .line 1264
    .local v7, "remoteConnectedPort":I
    invoke-virtual/range {v20 .. v20}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1265
    .restart local v8    # "remoteOriginatorAddress":Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readUINT32()I

    move-result v9

    .line 1267
    .restart local v9    # "remoteOriginatorPort":I
    const/16 v18, 0x0

    .line 1269
    .local v18, "rfd":Lcom/odinnet/servermonitor/ssh/channel/RemoteForwardingData;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->remoteForwardings:Ljava/util/HashMap;

    move-object v10, v0

    monitor-enter v10

    .line 1271
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->remoteForwardings:Ljava/util/HashMap;

    move-object v11, v0

    new-instance v12, Ljava/lang/Integer;

    invoke-direct {v12, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    check-cast v0, Lcom/odinnet/servermonitor/ssh/channel/RemoteForwardingData;

    move-object/from16 v18, v0

    .line 1272
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1274
    if-nez v18, :cond_4

    .line 1276
    new-instance v14, Lcom/odinnet/servermonitor/ssh/packets/PacketChannelOpenFailure;

    const/4 v10, 0x1

    const-string v11, "No thanks, unknown port in forwarded-tcpip request"

    const-string v12, ""

    invoke-direct {v14, v15, v10, v11, v12}, Lcom/odinnet/servermonitor/ssh/packets/PacketChannelOpenFailure;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 1282
    .restart local v14    # "pcof":Lcom/odinnet/servermonitor/ssh/packets/PacketChannelOpenFailure;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    move-object v10, v0

    invoke-virtual {v14}, Lcom/odinnet/servermonitor/ssh/packets/PacketChannelOpenFailure;->getPayload()[B

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->sendAsynchronousMessage([B)V

    .line 1284
    sget-object v10, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    invoke-virtual {v10}, Lcom/odinnet/servermonitor/ssh/log/Logger;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1285
    sget-object v10, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    const/16 v11, 0x14

    const-string v12, "Unexpected forwarded-tcpip request, denying it!"

    invoke-virtual {v10, v11, v12}, Lcom/odinnet/servermonitor/ssh/log/Logger;->log(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1272
    .end local v14    # "pcof":Lcom/odinnet/servermonitor/ssh/packets/PacketChannelOpenFailure;
    :catchall_2
    move-exception v11

    :try_start_5
    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v11

    .line 1290
    :cond_4
    new-instance v5, Lcom/odinnet/servermonitor/ssh/channel/Channel;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/odinnet/servermonitor/ssh/channel/Channel;-><init>(Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;)V

    .line 1292
    .restart local v5    # "c":Lcom/odinnet/servermonitor/ssh/channel/Channel;
    monitor-enter v5

    .line 1294
    :try_start_6
    iput v15, v5, Lcom/odinnet/servermonitor/ssh/channel/Channel;->remoteID:I

    .line 1295
    move/from16 v0, v17

    int-to-long v0, v0

    move-wide v10, v0

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    iput-wide v10, v5, Lcom/odinnet/servermonitor/ssh/channel/Channel;->remoteWindow:J

    .line 1296
    move/from16 v0, v16

    move-object v1, v5

    iput v0, v1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->remoteMaxPacketSize:I

    .line 1297
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->addChannel(Lcom/odinnet/servermonitor/ssh/channel/Channel;)I

    move-result v10

    iput v10, v5, Lcom/odinnet/servermonitor/ssh/channel/Channel;->localID:I

    .line 1298
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 1304
    new-instance v4, Lcom/odinnet/servermonitor/ssh/channel/RemoteAcceptThread;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/channel/RemoteForwardingData;->targetAddress:Ljava/lang/String;

    move-object v10, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/odinnet/servermonitor/ssh/channel/RemoteForwardingData;->targetPort:I

    move v11, v0

    invoke-direct/range {v4 .. v11}, Lcom/odinnet/servermonitor/ssh/channel/RemoteAcceptThread;-><init>(Lcom/odinnet/servermonitor/ssh/channel/Channel;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;I)V

    .line 1307
    .local v4, "rat":Lcom/odinnet/servermonitor/ssh/channel/RemoteAcceptThread;
    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Lcom/odinnet/servermonitor/ssh/channel/RemoteAcceptThread;->setDaemon(Z)V

    .line 1308
    invoke-virtual {v4}, Lcom/odinnet/servermonitor/ssh/channel/RemoteAcceptThread;->start()V

    goto/16 :goto_0

    .line 1298
    .end local v4    # "rat":Lcom/odinnet/servermonitor/ssh/channel/RemoteAcceptThread;
    :catchall_3
    move-exception v10

    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v10

    .line 1313
    .end local v5    # "c":Lcom/odinnet/servermonitor/ssh/channel/Channel;
    .end local v6    # "remoteConnectedAddress":Ljava/lang/String;
    .end local v7    # "remoteConnectedPort":I
    .end local v8    # "remoteOriginatorAddress":Ljava/lang/String;
    .end local v9    # "remoteOriginatorPort":I
    .end local v18    # "rfd":Lcom/odinnet/servermonitor/ssh/channel/RemoteForwardingData;
    :cond_5
    const-string v10, "auth-agent@openssh.com"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 1314
    new-instance v5, Lcom/odinnet/servermonitor/ssh/channel/Channel;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/odinnet/servermonitor/ssh/channel/Channel;-><init>(Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;)V

    .line 1316
    .restart local v5    # "c":Lcom/odinnet/servermonitor/ssh/channel/Channel;
    monitor-enter v5

    .line 1318
    :try_start_8
    iput v15, v5, Lcom/odinnet/servermonitor/ssh/channel/Channel;->remoteID:I

    .line 1319
    move/from16 v0, v17

    int-to-long v0, v0

    move-wide v10, v0

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    iput-wide v10, v5, Lcom/odinnet/servermonitor/ssh/channel/Channel;->remoteWindow:J

    .line 1320
    move/from16 v0, v16

    move-object v1, v5

    iput v0, v1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->remoteMaxPacketSize:I

    .line 1321
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->addChannel(Lcom/odinnet/servermonitor/ssh/channel/Channel;)I

    move-result v10

    iput v10, v5, Lcom/odinnet/servermonitor/ssh/channel/Channel;->localID:I

    .line 1322
    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 1324
    new-instance v12, Lcom/odinnet/servermonitor/ssh/channel/AuthAgentForwardThread;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->authAgent:Lcom/odinnet/servermonitor/ssh/AuthAgentCallback;

    move-object v10, v0

    invoke-direct {v12, v5, v10}, Lcom/odinnet/servermonitor/ssh/channel/AuthAgentForwardThread;-><init>(Lcom/odinnet/servermonitor/ssh/channel/Channel;Lcom/odinnet/servermonitor/ssh/AuthAgentCallback;)V

    .line 1326
    .local v12, "aat":Lcom/odinnet/servermonitor/ssh/channel/AuthAgentForwardThread;
    const/4 v10, 0x1

    invoke-virtual {v12, v10}, Lcom/odinnet/servermonitor/ssh/channel/AuthAgentForwardThread;->setDaemon(Z)V

    .line 1327
    invoke-virtual {v12}, Lcom/odinnet/servermonitor/ssh/channel/AuthAgentForwardThread;->start()V

    goto/16 :goto_0

    .line 1322
    .end local v12    # "aat":Lcom/odinnet/servermonitor/ssh/channel/AuthAgentForwardThread;
    :catchall_4
    move-exception v10

    :try_start_9
    monitor-exit v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v10

    .line 1334
    .end local v5    # "c":Lcom/odinnet/servermonitor/ssh/channel/Channel;
    :cond_6
    new-instance v14, Lcom/odinnet/servermonitor/ssh/packets/PacketChannelOpenFailure;

    const/4 v10, 0x3

    const-string v11, "Unknown channel type"

    const-string v12, ""

    invoke-direct {v14, v15, v10, v11, v12}, Lcom/odinnet/servermonitor/ssh/packets/PacketChannelOpenFailure;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 1337
    .restart local v14    # "pcof":Lcom/odinnet/servermonitor/ssh/packets/PacketChannelOpenFailure;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    move-object v10, v0

    invoke-virtual {v14}, Lcom/odinnet/servermonitor/ssh/packets/PacketChannelOpenFailure;->getPayload()[B

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->sendAsynchronousMessage([B)V

    .line 1339
    sget-object v10, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    invoke-virtual {v10}, Lcom/odinnet/servermonitor/ssh/log/Logger;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1340
    sget-object v10, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    const/16 v11, 0x14

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "The peer tried to open an unsupported channel type ("

    .end local v14    # "pcof":Lcom/odinnet/servermonitor/ssh/packets/PacketChannelOpenFailure;
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    .end local v13    # "channelType":Ljava/lang/String;
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/odinnet/servermonitor/ssh/log/Logger;->log(ILjava/lang/String;)V

    goto/16 :goto_0
.end method

.method public msgChannelOpenConfirmation([BI)V
    .locals 6
    .param p1, "msg"    # [B
    .param p2, "msglen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1525
    new-instance v1, Lcom/odinnet/servermonitor/ssh/packets/PacketChannelOpenConfirmation;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, p2}, Lcom/odinnet/servermonitor/ssh/packets/PacketChannelOpenConfirmation;-><init>([BII)V

    .line 1527
    .local v1, "sm":Lcom/odinnet/servermonitor/ssh/packets/PacketChannelOpenConfirmation;
    iget v2, v1, Lcom/odinnet/servermonitor/ssh/packets/PacketChannelOpenConfirmation;->recipientChannelID:I

    invoke-direct {p0, v2}, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->getChannel(I)Lcom/odinnet/servermonitor/ssh/channel/Channel;

    move-result-object v0

    .line 1529
    .local v0, "c":Lcom/odinnet/servermonitor/ssh/channel/Channel;
    if-nez v0, :cond_0

    .line 1530
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected SSH_MSG_CHANNEL_OPEN_CONFIRMATION message for non-existent channel "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/odinnet/servermonitor/ssh/packets/PacketChannelOpenConfirmation;->recipientChannelID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1533
    :cond_0
    monitor-enter v0

    .line 1535
    :try_start_0
    iget v2, v0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->state:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 1536
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected SSH_MSG_CHANNEL_OPEN_CONFIRMATION message for channel "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/odinnet/servermonitor/ssh/packets/PacketChannelOpenConfirmation;->recipientChannelID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1544
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1539
    :cond_1
    :try_start_1
    iget v2, v1, Lcom/odinnet/servermonitor/ssh/packets/PacketChannelOpenConfirmation;->senderChannelID:I

    iput v2, v0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->remoteID:I

    .line 1540
    iget v2, v1, Lcom/odinnet/servermonitor/ssh/packets/PacketChannelOpenConfirmation;->initialWindowSize:I

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    iput-wide v2, v0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->remoteWindow:J

    .line 1541
    iget v2, v1, Lcom/odinnet/servermonitor/ssh/packets/PacketChannelOpenConfirmation;->maxPacketSize:I

    iput v2, v0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->remoteMaxPacketSize:I

    .line 1542
    const/4 v2, 0x2

    iput v2, v0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->state:I

    .line 1543
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1544
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1546
    sget-object v2, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    invoke-virtual {v2}, Lcom/odinnet/servermonitor/ssh/log/Logger;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1547
    sget-object v2, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    const/16 v3, 0x32

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got SSH_MSG_CHANNEL_OPEN_CONFIRMATION (channel "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/odinnet/servermonitor/ssh/packets/PacketChannelOpenConfirmation;->recipientChannelID:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / remote: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/odinnet/servermonitor/ssh/packets/PacketChannelOpenConfirmation;->senderChannelID:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/odinnet/servermonitor/ssh/log/Logger;->log(ILjava/lang/String;)V

    .line 1549
    :cond_2
    return-void
.end method

.method public msgChannelOpenFailure([BI)V
    .locals 13
    .param p1, "msg"    # [B
    .param p2, "msglen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1553
    const/4 v9, 0x5

    if-ge p2, v9, :cond_0

    .line 1554
    new-instance v9, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SSH_MSG_CHANNEL_OPEN_FAILURE message has wrong size ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1556
    :cond_0
    new-instance v8, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;

    const/4 v9, 0x0

    invoke-direct {v8, p1, v9, p2}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;-><init>([BII)V

    .line 1558
    .local v8, "tr":Lcom/odinnet/servermonitor/ssh/packets/TypesReader;
    invoke-virtual {v8}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readByte()I

    .line 1559
    invoke-virtual {v8}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readUINT32()I

    move-result v5

    .line 1561
    .local v5, "id":I
    invoke-direct {p0, v5}, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->getChannel(I)Lcom/odinnet/servermonitor/ssh/channel/Channel;

    move-result-object v0

    .line 1563
    .local v0, "c":Lcom/odinnet/servermonitor/ssh/channel/Channel;
    if-nez v0, :cond_1

    .line 1564
    new-instance v9, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unexpected SSH_MSG_CHANNEL_OPEN_FAILURE message for non-existent channel "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1566
    :cond_1
    invoke-virtual {v8}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readUINT32()I

    move-result v6

    .line 1567
    .local v6, "reasonCode":I
    const-string v9, "UTF-8"

    invoke-virtual {v8, v9}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1569
    .local v2, "description":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1571
    .local v7, "reasonCodeSymbolicName":Ljava/lang/String;
    packed-switch v6, :pswitch_data_0

    .line 1586
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "UNKNOWN REASON CODE ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1589
    :goto_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 1590
    .local v3, "descriptionBuffer":Ljava/lang/StringBuffer;
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1592
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    if-ge v4, v9, :cond_3

    .line 1594
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    .line 1596
    .local v1, "cc":C
    const/16 v9, 0x20

    if-lt v1, v9, :cond_2

    const/16 v9, 0x7e

    if-gt v1, v9, :cond_2

    .line 1592
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1574
    .end local v1    # "cc":C
    .end local v3    # "descriptionBuffer":Ljava/lang/StringBuffer;
    .end local v4    # "i":I
    :pswitch_0
    const-string v7, "SSH_OPEN_ADMINISTRATIVELY_PROHIBITED"

    .line 1575
    goto :goto_0

    .line 1577
    :pswitch_1
    const-string v7, "SSH_OPEN_CONNECT_FAILED"

    .line 1578
    goto :goto_0

    .line 1580
    :pswitch_2
    const-string v7, "SSH_OPEN_UNKNOWN_CHANNEL_TYPE"

    .line 1581
    goto :goto_0

    .line 1583
    :pswitch_3
    const-string v7, "SSH_OPEN_RESOURCE_SHORTAGE"

    .line 1584
    goto :goto_0

    .line 1598
    .restart local v1    # "cc":C
    .restart local v3    # "descriptionBuffer":Ljava/lang/StringBuffer;
    .restart local v4    # "i":I
    :cond_2
    const v9, 0xfffd

    invoke-virtual {v3, v4, v9}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    goto :goto_2

    .line 1601
    .end local v1    # "cc":C
    :cond_3
    monitor-enter v0

    .line 1603
    const/4 v9, 0x1

    :try_start_0
    iput-boolean v9, v0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->EOF:Z

    .line 1604
    const/4 v9, 0x4

    iput v9, v0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->state:I

    .line 1605
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "The server refused to open the channel ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\')"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/odinnet/servermonitor/ssh/channel/Channel;->setReasonClosed(Ljava/lang/String;)V

    .line 1607
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1608
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1610
    sget-object v9, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    invoke-virtual {v9}, Lcom/odinnet/servermonitor/ssh/log/Logger;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1611
    sget-object v9, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    const/16 v10, 0x32

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Got SSH_MSG_CHANNEL_OPEN_FAILURE (channel "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/odinnet/servermonitor/ssh/log/Logger;->log(ILjava/lang/String;)V

    .line 1612
    :cond_4
    return-void

    .line 1608
    :catchall_0
    move-exception v9

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v9

    .line 1571
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public msgChannelRequest([BI)V
    .locals 12
    .param p1, "msg"    # [B
    .param p2, "msglen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1345
    new-instance v5, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;

    const/4 v8, 0x0

    invoke-direct {v5, p1, v8, p2}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;-><init>([BII)V

    .line 1347
    .local v5, "tr":Lcom/odinnet/servermonitor/ssh/packets/TypesReader;
    invoke-virtual {v5}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readByte()I

    .line 1348
    invoke-virtual {v5}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readUINT32()I

    move-result v2

    .line 1350
    .local v2, "id":I
    invoke-direct {p0, v2}, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->getChannel(I)Lcom/odinnet/servermonitor/ssh/channel/Channel;

    move-result-object v0

    .line 1352
    .local v0, "c":Lcom/odinnet/servermonitor/ssh/channel/Channel;
    if-nez v0, :cond_0

    .line 1353
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unexpected SSH_MSG_CHANNEL_REQUEST message for non-existent channel "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1355
    :cond_0
    const-string v8, "US-ASCII"

    invoke-virtual {v5, v8}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1356
    .local v6, "type":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readBoolean()Z

    move-result v7

    .line 1358
    .local v7, "wantReply":Z
    sget-object v8, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    invoke-virtual {v8}, Lcom/odinnet/servermonitor/ssh/log/Logger;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1359
    sget-object v8, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    const/16 v9, 0x50

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Got SSH_MSG_CHANNEL_REQUEST (channel "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\')"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/odinnet/servermonitor/ssh/log/Logger;->log(ILjava/lang/String;)V

    .line 1361
    :cond_1
    const-string v8, "exit-status"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1363
    if-eqz v7, :cond_2

    .line 1364
    new-instance v8, Ljava/io/IOException;

    const-string v9, "Badly formatted SSH_MSG_CHANNEL_REQUEST message, \'want reply\' is true"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1366
    :cond_2
    invoke-virtual {v5}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readUINT32()I

    move-result v1

    .line 1368
    .local v1, "exit_status":I
    invoke-virtual {v5}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->remain()I

    move-result v8

    if-eqz v8, :cond_3

    .line 1369
    new-instance v8, Ljava/io/IOException;

    const-string v9, "Badly formatted SSH_MSG_CHANNEL_REQUEST message"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1371
    :cond_3
    monitor-enter v0

    .line 1373
    :try_start_0
    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v8, v0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->exit_status:Ljava/lang/Integer;

    .line 1374
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1375
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1377
    sget-object v8, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    invoke-virtual {v8}, Lcom/odinnet/servermonitor/ssh/log/Logger;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1378
    sget-object v8, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    const/16 v9, 0x32

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Got EXIT STATUS (channel "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", status "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/odinnet/servermonitor/ssh/log/Logger;->log(ILjava/lang/String;)V

    .line 1427
    .end local v1    # "exit_status":I
    :cond_4
    :goto_0
    return-void

    .line 1375
    .restart local v1    # "exit_status":I
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 1383
    .end local v1    # "exit_status":I
    :cond_5
    const-string v8, "exit-signal"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1385
    if-eqz v7, :cond_6

    .line 1386
    new-instance v8, Ljava/io/IOException;

    const-string v9, "Badly formatted SSH_MSG_CHANNEL_REQUEST message, \'want reply\' is true"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1388
    :cond_6
    const-string v8, "US-ASCII"

    invoke-virtual {v5, v8}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1389
    .local v4, "signame":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readBoolean()Z

    .line 1390
    invoke-virtual {v5}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readString()Ljava/lang/String;

    .line 1391
    invoke-virtual {v5}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readString()Ljava/lang/String;

    .line 1393
    invoke-virtual {v5}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->remain()I

    move-result v8

    if-eqz v8, :cond_7

    .line 1394
    new-instance v8, Ljava/io/IOException;

    const-string v9, "Badly formatted SSH_MSG_CHANNEL_REQUEST message"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1396
    :cond_7
    monitor-enter v0

    .line 1398
    :try_start_2
    iput-object v4, v0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->exit_signal:Ljava/lang/String;

    .line 1399
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1400
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1402
    sget-object v8, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    invoke-virtual {v8}, Lcom/odinnet/servermonitor/ssh/log/Logger;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1403
    sget-object v8, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    const/16 v9, 0x32

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Got EXIT SIGNAL (channel "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", signal "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/odinnet/servermonitor/ssh/log/Logger;->log(ILjava/lang/String;)V

    goto :goto_0

    .line 1400
    :catchall_1
    move-exception v8

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v8

    .line 1412
    .end local v4    # "signame":Ljava/lang/String;
    :cond_8
    if-eqz v7, :cond_9

    .line 1414
    const/4 v8, 0x5

    new-array v3, v8, [B

    .line 1416
    .local v3, "reply":[B
    const/4 v8, 0x0

    const/16 v9, 0x64

    aput-byte v9, v3, v8

    .line 1417
    const/4 v8, 0x1

    iget v9, v0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->remoteID:I

    shr-int/lit8 v9, v9, 0x18

    int-to-byte v9, v9

    aput-byte v9, v3, v8

    .line 1418
    const/4 v8, 0x2

    iget v9, v0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->remoteID:I

    shr-int/lit8 v9, v9, 0x10

    int-to-byte v9, v9

    aput-byte v9, v3, v8

    .line 1419
    const/4 v8, 0x3

    iget v9, v0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->remoteID:I

    shr-int/lit8 v9, v9, 0x8

    int-to-byte v9, v9

    aput-byte v9, v3, v8

    .line 1420
    const/4 v8, 0x4

    iget v9, v0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->remoteID:I

    int-to-byte v9, v9

    aput-byte v9, v3, v8

    .line 1422
    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    invoke-virtual {v8, v3}, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->sendAsynchronousMessage([B)V

    .line 1425
    .end local v3    # "reply":[B
    :cond_9
    sget-object v8, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    invoke-virtual {v8}, Lcom/odinnet/servermonitor/ssh/log/Logger;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1426
    sget-object v8, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    const/16 v9, 0x32

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Channel request \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\' is not known, ignoring it"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/odinnet/servermonitor/ssh/log/Logger;->log(ILjava/lang/String;)V

    goto/16 :goto_0
.end method

.method public msgChannelSuccess([BI)V
    .locals 7
    .param p1, "msg"    # [B
    .param p2, "msglen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v6, ")"

    .line 1481
    const/4 v2, 0x5

    if-eq p2, v2, :cond_0

    .line 1482
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SSH_MSG_CHANNEL_SUCCESS message has wrong size ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1484
    :cond_0
    const/4 v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    const/4 v3, 0x2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    const/4 v3, 0x3

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    const/4 v3, 0x4

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    or-int v1, v2, v3

    .line 1486
    .local v1, "id":I
    invoke-direct {p0, v1}, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->getChannel(I)Lcom/odinnet/servermonitor/ssh/channel/Channel;

    move-result-object v0

    .line 1488
    .local v0, "c":Lcom/odinnet/servermonitor/ssh/channel/Channel;
    if-nez v0, :cond_1

    .line 1489
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected SSH_MSG_CHANNEL_SUCCESS message for non-existent channel "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1491
    :cond_1
    monitor-enter v0

    .line 1493
    :try_start_0
    iget v2, v0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->successCounter:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->successCounter:I

    .line 1494
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1495
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1497
    sget-object v2, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    invoke-virtual {v2}, Lcom/odinnet/servermonitor/ssh/log/Logger;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1498
    sget-object v2, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    const/16 v3, 0x50

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got SSH_MSG_CHANNEL_SUCCESS (channel "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/odinnet/servermonitor/ssh/log/Logger;->log(ILjava/lang/String;)V

    .line 1499
    :cond_2
    return-void

    .line 1495
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public msgChannelWindowAdjust([BI)V
    .locals 12
    .param p1, "msg"    # [B
    .param p2, "msglen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide v9, 0xffffffffL

    const-string v11, ")"

    .line 1177
    const/16 v5, 0x9

    if-eq p2, v5, :cond_0

    .line 1178
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SSH_MSG_CHANNEL_WINDOW_ADJUST message has wrong size ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1180
    :cond_0
    const/4 v5, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    const/4 v6, 0x2

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    const/4 v6, 0x3

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    const/4 v6, 0x4

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    or-int v3, v5, v6

    .line 1181
    .local v3, "id":I
    const/4 v5, 0x5

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    const/4 v6, 0x6

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    const/4 v6, 0x7

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    const/16 v6, 0x8

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    or-int v4, v5, v6

    .line 1183
    .local v4, "windowChange":I
    invoke-direct {p0, v3}, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->getChannel(I)Lcom/odinnet/servermonitor/ssh/channel/Channel;

    move-result-object v0

    .line 1185
    .local v0, "c":Lcom/odinnet/servermonitor/ssh/channel/Channel;
    if-nez v0, :cond_1

    .line 1186
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected SSH_MSG_CHANNEL_WINDOW_ADJUST message for non-existent channel "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1188
    :cond_1
    monitor-enter v0

    .line 1190
    const-wide v1, 0xffffffffL

    .line 1192
    .local v1, "huge":J
    :try_start_0
    iget-wide v5, v0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->remoteWindow:J

    int-to-long v7, v4

    and-long/2addr v7, v9

    add-long/2addr v5, v7

    iput-wide v5, v0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->remoteWindow:J

    .line 1196
    iget-wide v5, v0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->remoteWindow:J

    cmp-long v5, v5, v9

    if-lez v5, :cond_2

    .line 1197
    const-wide v5, 0xffffffffL

    iput-wide v5, v0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->remoteWindow:J

    .line 1199
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1200
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1202
    sget-object v5, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    invoke-virtual {v5}, Lcom/odinnet/servermonitor/ssh/log/Logger;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1203
    sget-object v5, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    const/16 v6, 0x50

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Got SSH_MSG_CHANNEL_WINDOW_ADJUST (channel "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/odinnet/servermonitor/ssh/log/Logger;->log(ILjava/lang/String;)V

    .line 1204
    :cond_3
    return-void

    .line 1200
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method public msgGlobalFailure()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1652
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->channels:Ljava/util/Vector;

    monitor-enter v0

    .line 1654
    :try_start_0
    iget v1, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->globalFailedCounter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->globalFailedCounter:I

    .line 1655
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->channels:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1656
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1658
    sget-object v0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    invoke-virtual {v0}, Lcom/odinnet/servermonitor/ssh/log/Logger;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1659
    sget-object v0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    const/16 v1, 0x50

    const-string v2, "Got SSH_MSG_REQUEST_FAILURE"

    invoke-virtual {v0, v1, v2}, Lcom/odinnet/servermonitor/ssh/log/Logger;->log(ILjava/lang/String;)V

    .line 1660
    :cond_0
    return-void

    .line 1656
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public msgGlobalRequest([BI)V
    .locals 8
    .param p1, "msg"    # [B
    .param p2, "msglen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1618
    new-instance v2, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;

    invoke-direct {v2, p1, v5, p2}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;-><init>([BII)V

    .line 1620
    .local v2, "tr":Lcom/odinnet/servermonitor/ssh/packets/TypesReader;
    invoke-virtual {v2}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readByte()I

    .line 1621
    invoke-virtual {v2}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1622
    .local v1, "requestName":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readBoolean()Z

    move-result v3

    .line 1624
    .local v3, "wantReply":Z
    if-eqz v3, :cond_0

    .line 1626
    const/4 v4, 0x1

    new-array v0, v4, [B

    .line 1627
    .local v0, "reply_failure":[B
    const/16 v4, 0x52

    aput-byte v4, v0, v5

    .line 1629
    iget-object v4, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    invoke-virtual {v4, v0}, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->sendAsynchronousMessage([B)V

    .line 1634
    .end local v0    # "reply_failure":[B
    :cond_0
    sget-object v4, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    invoke-virtual {v4}, Lcom/odinnet/servermonitor/ssh/log/Logger;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1635
    sget-object v4, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    const/16 v5, 0x50

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Got SSH_MSG_GLOBAL_REQUEST ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/odinnet/servermonitor/ssh/log/Logger;->log(ILjava/lang/String;)V

    .line 1636
    :cond_1
    return-void
.end method

.method public msgGlobalSuccess()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1640
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->channels:Ljava/util/Vector;

    monitor-enter v0

    .line 1642
    :try_start_0
    iget v1, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->globalSuccessCounter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->globalSuccessCounter:I

    .line 1643
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->channels:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1644
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1646
    sget-object v0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    invoke-virtual {v0}, Lcom/odinnet/servermonitor/ssh/log/Logger;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1647
    sget-object v0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    const/16 v1, 0x50

    const-string v2, "Got SSH_MSG_REQUEST_SUCCESS"

    invoke-virtual {v0, v1, v2}, Lcom/odinnet/servermonitor/ssh/log/Logger;->log(ILjava/lang/String;)V

    .line 1648
    :cond_0
    return-void

    .line 1644
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public openDirectTCPIPChannel(Ljava/lang/String;ILjava/lang/String;I)Lcom/odinnet/servermonitor/ssh/channel/Channel;
    .locals 9
    .param p1, "host_to_connect"    # Ljava/lang/String;
    .param p2, "port_to_connect"    # I
    .param p3, "originator_IP_address"    # Ljava/lang/String;
    .param p4, "originator_port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 582
    new-instance v8, Lcom/odinnet/servermonitor/ssh/channel/Channel;

    invoke-direct {v8, p0}, Lcom/odinnet/servermonitor/ssh/channel/Channel;-><init>(Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;)V

    .line 584
    .local v8, "c":Lcom/odinnet/servermonitor/ssh/channel/Channel;
    monitor-enter v8

    .line 586
    :try_start_0
    invoke-direct {p0, v8}, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->addChannel(Lcom/odinnet/servermonitor/ssh/channel/Channel;)I

    move-result v1

    iput v1, v8, Lcom/odinnet/servermonitor/ssh/channel/Channel;->localID:I

    .line 588
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 590
    new-instance v0, Lcom/odinnet/servermonitor/ssh/packets/PacketOpenDirectTCPIPChannel;

    iget v1, v8, Lcom/odinnet/servermonitor/ssh/channel/Channel;->localID:I

    iget v2, v8, Lcom/odinnet/servermonitor/ssh/channel/Channel;->localWindow:I

    iget v3, v8, Lcom/odinnet/servermonitor/ssh/channel/Channel;->localMaxPacketSize:I

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/odinnet/servermonitor/ssh/packets/PacketOpenDirectTCPIPChannel;-><init>(IIILjava/lang/String;ILjava/lang/String;I)V

    .line 593
    .local v0, "dtc":Lcom/odinnet/servermonitor/ssh/packets/PacketOpenDirectTCPIPChannel;
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    invoke-virtual {v0}, Lcom/odinnet/servermonitor/ssh/packets/PacketOpenDirectTCPIPChannel;->getPayload()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->sendMessage([B)V

    .line 595
    invoke-direct {p0, v8}, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->waitUntilChannelOpen(Lcom/odinnet/servermonitor/ssh/channel/Channel;)V

    .line 597
    return-object v8

    .line 588
    .end local v0    # "dtc":Lcom/odinnet/servermonitor/ssh/packets/PacketOpenDirectTCPIPChannel;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public openSessionChannel()Lcom/odinnet/servermonitor/ssh/channel/Channel;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 602
    new-instance v0, Lcom/odinnet/servermonitor/ssh/channel/Channel;

    invoke-direct {v0, p0}, Lcom/odinnet/servermonitor/ssh/channel/Channel;-><init>(Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;)V

    .line 604
    .local v0, "c":Lcom/odinnet/servermonitor/ssh/channel/Channel;
    monitor-enter v0

    .line 606
    :try_start_0
    invoke-direct {p0, v0}, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->addChannel(Lcom/odinnet/servermonitor/ssh/channel/Channel;)I

    move-result v2

    iput v2, v0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->localID:I

    .line 608
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 610
    sget-object v2, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    invoke-virtual {v2}, Lcom/odinnet/servermonitor/ssh/log/Logger;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 611
    sget-object v2, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    const/16 v3, 0x32

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sending SSH_MSG_CHANNEL_OPEN (Channel "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->localID:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/odinnet/servermonitor/ssh/log/Logger;->log(ILjava/lang/String;)V

    .line 613
    :cond_0
    new-instance v1, Lcom/odinnet/servermonitor/ssh/packets/PacketOpenSessionChannel;

    iget v2, v0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->localID:I

    iget v3, v0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->localWindow:I

    iget v4, v0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->localMaxPacketSize:I

    invoke-direct {v1, v2, v3, v4}, Lcom/odinnet/servermonitor/ssh/packets/PacketOpenSessionChannel;-><init>(III)V

    .line 614
    .local v1, "smo":Lcom/odinnet/servermonitor/ssh/packets/PacketOpenSessionChannel;
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    invoke-virtual {v1}, Lcom/odinnet/servermonitor/ssh/packets/PacketOpenSessionChannel;->getPayload()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->sendMessage([B)V

    .line 616
    invoke-direct {p0, v0}, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->waitUntilChannelOpen(Lcom/odinnet/servermonitor/ssh/channel/Channel;)V

    .line 618
    return-object v0

    .line 608
    .end local v1    # "smo":Lcom/odinnet/servermonitor/ssh/packets/PacketOpenSessionChannel;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public registerThread(Lcom/odinnet/servermonitor/ssh/channel/IChannelWorkerThread;)V
    .locals 3
    .param p1, "thr"    # Lcom/odinnet/servermonitor/ssh/channel/IChannelWorkerThread;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 571
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->listenerThreads:Ljava/util/Vector;

    monitor-enter v0

    .line 573
    :try_start_0
    iget-boolean v1, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->listenerThreadsAllowed:Z

    if-nez v1, :cond_0

    .line 574
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Too late, this connection is closed."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 576
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 575
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->listenerThreads:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 576
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 577
    return-void
.end method

.method public registerX11Cookie(Ljava/lang/String;Lcom/odinnet/servermonitor/ssh/channel/X11ServerData;)V
    .locals 2
    .param p1, "hexFakeCookie"    # Ljava/lang/String;
    .param p2, "data"    # Lcom/odinnet/servermonitor/ssh/channel/X11ServerData;

    .prologue
    .line 204
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->x11_magic_cookies:Ljava/util/HashMap;

    monitor-enter v0

    .line 206
    :try_start_0
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->x11_magic_cookies:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    monitor-exit v0

    .line 208
    return-void

    .line 207
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public requestCancelGlobalForward(I)V
    .locals 7
    .param p1, "bindPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 499
    const/4 v2, 0x0

    .line 501
    .local v2, "rfd":Lcom/odinnet/servermonitor/ssh/channel/RemoteForwardingData;
    iget-object v4, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->remoteForwardings:Ljava/util/HashMap;

    monitor-enter v4

    .line 503
    :try_start_0
    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->remoteForwardings:Ljava/util/HashMap;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/odinnet/servermonitor/ssh/channel/RemoteForwardingData;

    move-object v2, v0

    .line 505
    if-nez v2, :cond_0

    .line 506
    new-instance v3, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sorry, there is no known remote forwarding for remote port "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 507
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 509
    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->channels:Ljava/util/Vector;

    monitor-enter v3

    .line 511
    const/4 v4, 0x0

    :try_start_2
    iput v4, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->globalFailedCounter:I

    iput v4, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->globalSuccessCounter:I

    .line 512
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 514
    new-instance v1, Lcom/odinnet/servermonitor/ssh/packets/PacketGlobalCancelForwardRequest;

    const/4 v3, 0x1

    iget-object v4, v2, Lcom/odinnet/servermonitor/ssh/channel/RemoteForwardingData;->bindAddress:Ljava/lang/String;

    iget v5, v2, Lcom/odinnet/servermonitor/ssh/channel/RemoteForwardingData;->bindPort:I

    invoke-direct {v1, v3, v4, v5}, Lcom/odinnet/servermonitor/ssh/packets/PacketGlobalCancelForwardRequest;-><init>(ZLjava/lang/String;I)V

    .line 516
    .local v1, "pgcf":Lcom/odinnet/servermonitor/ssh/packets/PacketGlobalCancelForwardRequest;
    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    invoke-virtual {v1}, Lcom/odinnet/servermonitor/ssh/packets/PacketGlobalCancelForwardRequest;->getPayload()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->sendMessage([B)V

    .line 518
    sget-object v3, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    invoke-virtual {v3}, Lcom/odinnet/servermonitor/ssh/log/Logger;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 519
    sget-object v3, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    const/16 v4, 0x32

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Requesting cancelation of remote forward (\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/odinnet/servermonitor/ssh/channel/RemoteForwardingData;->bindAddress:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\', "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/odinnet/servermonitor/ssh/channel/RemoteForwardingData;->bindPort:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/odinnet/servermonitor/ssh/log/Logger;->log(ILjava/lang/String;)V

    .line 523
    :cond_1
    :try_start_3
    invoke-direct {p0}, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->waitForGlobalRequestResult()Z

    move-result v3

    if-nez v3, :cond_2

    .line 524
    new-instance v3, Ljava/io/IOException;

    const-string v4, "The server denied the request."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 528
    :catchall_1
    move-exception v3

    iget-object v4, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->remoteForwardings:Ljava/util/HashMap;

    monitor-enter v4

    .line 531
    :try_start_4
    iget-object v5, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->remoteForwardings:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw v3

    .line 512
    .end local v1    # "pgcf":Lcom/odinnet/servermonitor/ssh/packets/PacketGlobalCancelForwardRequest;
    :catchall_2
    move-exception v4

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v4

    .line 528
    .restart local v1    # "pgcf":Lcom/odinnet/servermonitor/ssh/packets/PacketGlobalCancelForwardRequest;
    :cond_2
    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->remoteForwardings:Ljava/util/HashMap;

    monitor-enter v3

    .line 531
    :try_start_6
    iget-object v4, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->remoteForwardings:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    monitor-exit v3

    .line 535
    return-void

    .line 532
    :catchall_3
    move-exception v4

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v4

    :catchall_4
    move-exception v3

    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v3
.end method

.method public requestChannelAgentForwarding(Lcom/odinnet/servermonitor/ssh/channel/Channel;Lcom/odinnet/servermonitor/ssh/AuthAgentCallback;)Z
    .locals 5
    .param p1, "c"    # Lcom/odinnet/servermonitor/ssh/channel/Channel;
    .param p2, "authAgent"    # Lcom/odinnet/servermonitor/ssh/AuthAgentCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 542
    monitor-enter p0

    .line 544
    :try_start_0
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->authAgent:Lcom/odinnet/servermonitor/ssh/AuthAgentCallback;

    if-eqz v1, :cond_0

    .line 545
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Auth agent already exists"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 548
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 547
    :cond_0
    :try_start_1
    iput-object p2, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->authAgent:Lcom/odinnet/servermonitor/ssh/AuthAgentCallback;

    .line 548
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 550
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->channels:Ljava/util/Vector;

    monitor-enter v1

    .line 552
    const/4 v2, 0x0

    :try_start_2
    iput v2, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->globalFailedCounter:I

    iput v2, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->globalSuccessCounter:I

    .line 553
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 555
    sget-object v1, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    invoke-virtual {v1}, Lcom/odinnet/servermonitor/ssh/log/Logger;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 556
    sget-object v1, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    const/16 v2, 0x32

    const-string v3, "Requesting agent forwarding"

    invoke-virtual {v1, v2, v3}, Lcom/odinnet/servermonitor/ssh/log/Logger;->log(ILjava/lang/String;)V

    .line 558
    :cond_1
    new-instance v0, Lcom/odinnet/servermonitor/ssh/packets/PacketChannelAuthAgentReq;

    iget v1, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->remoteID:I

    invoke-direct {v0, v1}, Lcom/odinnet/servermonitor/ssh/packets/PacketChannelAuthAgentReq;-><init>(I)V

    .line 559
    .local v0, "aar":Lcom/odinnet/servermonitor/ssh/packets/PacketChannelAuthAgentReq;
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    invoke-virtual {v0}, Lcom/odinnet/servermonitor/ssh/packets/PacketChannelAuthAgentReq;->getPayload()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->sendMessage([B)V

    .line 561
    invoke-direct {p0, p1}, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->waitForChannelRequestResult(Lcom/odinnet/servermonitor/ssh/channel/Channel;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 562
    const/4 p2, 0x0

    move v1, v4

    .line 566
    :goto_0
    return v1

    .line 553
    .end local v0    # "aar":Lcom/odinnet/servermonitor/ssh/packets/PacketChannelAuthAgentReq;
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 566
    .restart local v0    # "aar":Lcom/odinnet/servermonitor/ssh/packets/PacketChannelAuthAgentReq;
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public requestChannelTrileadPing(Lcom/odinnet/servermonitor/ssh/channel/Channel;)V
    .locals 6
    .param p1, "c"    # Lcom/odinnet/servermonitor/ssh/channel/Channel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v2, "Cannot ping this channel ("

    const-string v2, ")"

    .line 652
    monitor-enter p1

    .line 654
    :try_start_0
    iget v2, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->state:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 655
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot ping this channel ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/odinnet/servermonitor/ssh/channel/Channel;->getReasonClosed()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 660
    :catchall_0
    move-exception v2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 657
    :cond_0
    :try_start_1
    new-instance v1, Lcom/odinnet/servermonitor/ssh/packets/PacketChannelTrileadPing;

    iget v2, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->remoteID:I

    invoke-direct {v1, v2}, Lcom/odinnet/servermonitor/ssh/packets/PacketChannelTrileadPing;-><init>(I)V

    .line 659
    .local v1, "pctp":Lcom/odinnet/servermonitor/ssh/packets/PacketChannelTrileadPing;
    const/4 v2, 0x0

    iput v2, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->failedCounter:I

    iput v2, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->successCounter:I

    .line 660
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 662
    iget-object v2, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->channelSendLock:Ljava/lang/Object;

    monitor-enter v2

    .line 664
    :try_start_2
    iget-boolean v3, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->closeMessageSent:Z

    if-eqz v3, :cond_1

    .line 665
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot ping this channel ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/odinnet/servermonitor/ssh/channel/Channel;->getReasonClosed()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 667
    :catchall_1
    move-exception v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .line 666
    :cond_1
    :try_start_3
    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    invoke-virtual {v1}, Lcom/odinnet/servermonitor/ssh/packets/PacketChannelTrileadPing;->getPayload()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->sendMessage([B)V

    .line 667
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 671
    :try_start_4
    invoke-direct {p0, p1}, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->waitForChannelRequestResult(Lcom/odinnet/servermonitor/ssh/channel/Channel;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 672
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Your server is alive - but buggy. It replied with SSH_MSG_SESSION_SUCCESS when it actually should not."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 676
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 678
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/io/IOException;

    const-string v3, "The ping request failed."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    .end local p0    # "this":Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;
    check-cast p0, Ljava/io/IOException;

    throw p0

    .line 680
    .end local v0    # "e":Ljava/io/IOException;
    .restart local p0    # "this":Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;
    :cond_2
    return-void
.end method

.method public requestExecCommand(Lcom/odinnet/servermonitor/ssh/channel/Channel;Ljava/lang/String;)V
    .locals 6
    .param p1, "c"    # Lcom/odinnet/servermonitor/ssh/channel/Channel;
    .param p2, "cmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v2, "Cannot execute command on this channel ("

    const-string v2, ")"

    .line 813
    monitor-enter p1

    .line 815
    :try_start_0
    iget v2, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->state:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 816
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot execute command on this channel ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/odinnet/servermonitor/ssh/channel/Channel;->getReasonClosed()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 821
    :catchall_0
    move-exception v2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 818
    :cond_0
    :try_start_1
    new-instance v1, Lcom/odinnet/servermonitor/ssh/packets/PacketSessionExecCommand;

    iget v2, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->remoteID:I

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, p2}, Lcom/odinnet/servermonitor/ssh/packets/PacketSessionExecCommand;-><init>(IZLjava/lang/String;)V

    .line 820
    .local v1, "sm":Lcom/odinnet/servermonitor/ssh/packets/PacketSessionExecCommand;
    const/4 v2, 0x0

    iput v2, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->failedCounter:I

    iput v2, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->successCounter:I

    .line 821
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 823
    iget-object v2, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->channelSendLock:Ljava/lang/Object;

    monitor-enter v2

    .line 825
    :try_start_2
    iget-boolean v3, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->closeMessageSent:Z

    if-eqz v3, :cond_1

    .line 826
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot execute command on this channel ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/odinnet/servermonitor/ssh/channel/Channel;->getReasonClosed()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 828
    :catchall_1
    move-exception v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .line 827
    :cond_1
    :try_start_3
    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    invoke-virtual {v1}, Lcom/odinnet/servermonitor/ssh/packets/PacketSessionExecCommand;->getPayload()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->sendMessage([B)V

    .line 828
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 830
    sget-object v2, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    invoke-virtual {v2}, Lcom/odinnet/servermonitor/ssh/log/Logger;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 831
    sget-object v2, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    const/16 v3, 0x32

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Executing command (channel "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->localID:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\')"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/odinnet/servermonitor/ssh/log/Logger;->log(ILjava/lang/String;)V

    .line 835
    :cond_2
    :try_start_4
    invoke-direct {p0, p1}, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->waitForChannelRequestResult(Lcom/odinnet/servermonitor/ssh/channel/Channel;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 836
    new-instance v2, Ljava/io/IOException;

    const-string v3, "The server denied the request."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 838
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 840
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/io/IOException;

    const-string v3, "The execute request failed."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    .end local p0    # "this":Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;
    check-cast p0, Ljava/io/IOException;

    throw p0

    .line 842
    .end local v0    # "e":Ljava/io/IOException;
    .restart local p0    # "this":Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;
    :cond_3
    return-void
.end method

.method public requestGlobalForward(Ljava/lang/String;ILjava/lang/String;I)I
    .locals 8
    .param p1, "bindAddress"    # Ljava/lang/String;
    .param p2, "bindPort"    # I
    .param p3, "targetAddress"    # Ljava/lang/String;
    .param p4, "targetPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 450
    new-instance v3, Lcom/odinnet/servermonitor/ssh/channel/RemoteForwardingData;

    invoke-direct {v3}, Lcom/odinnet/servermonitor/ssh/channel/RemoteForwardingData;-><init>()V

    .line 452
    .local v3, "rfd":Lcom/odinnet/servermonitor/ssh/channel/RemoteForwardingData;
    iput-object p1, v3, Lcom/odinnet/servermonitor/ssh/channel/RemoteForwardingData;->bindAddress:Ljava/lang/String;

    .line 453
    iput p2, v3, Lcom/odinnet/servermonitor/ssh/channel/RemoteForwardingData;->bindPort:I

    .line 454
    iput-object p3, v3, Lcom/odinnet/servermonitor/ssh/channel/RemoteForwardingData;->targetAddress:Ljava/lang/String;

    .line 455
    iput p4, v3, Lcom/odinnet/servermonitor/ssh/channel/RemoteForwardingData;->targetPort:I

    .line 457
    iget-object v4, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->remoteForwardings:Ljava/util/HashMap;

    monitor-enter v4

    .line 459
    :try_start_0
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    .line 461
    .local v1, "key":Ljava/lang/Integer;
    iget-object v5, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->remoteForwardings:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 463
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "There is already a forwarding for remote port "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 467
    .end local v1    # "key":Ljava/lang/Integer;
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 466
    .restart local v1    # "key":Ljava/lang/Integer;
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->remoteForwardings:Ljava/util/HashMap;

    invoke-virtual {v5, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 469
    iget-object v4, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->channels:Ljava/util/Vector;

    monitor-enter v4

    .line 471
    const/4 v5, 0x0

    :try_start_2
    iput v5, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->globalFailedCounter:I

    iput v5, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->globalSuccessCounter:I

    .line 472
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 474
    new-instance v2, Lcom/odinnet/servermonitor/ssh/packets/PacketGlobalForwardRequest;

    const/4 v4, 0x1

    invoke-direct {v2, v4, p1, p2}, Lcom/odinnet/servermonitor/ssh/packets/PacketGlobalForwardRequest;-><init>(ZLjava/lang/String;I)V

    .line 475
    .local v2, "pgf":Lcom/odinnet/servermonitor/ssh/packets/PacketGlobalForwardRequest;
    iget-object v4, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    invoke-virtual {v2}, Lcom/odinnet/servermonitor/ssh/packets/PacketGlobalForwardRequest;->getPayload()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->sendMessage([B)V

    .line 477
    sget-object v4, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    invoke-virtual {v4}, Lcom/odinnet/servermonitor/ssh/log/Logger;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 478
    sget-object v4, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    const/16 v5, 0x32

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Requesting a remote forwarding (\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\', "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/odinnet/servermonitor/ssh/log/Logger;->log(ILjava/lang/String;)V

    .line 482
    :cond_1
    :try_start_3
    invoke-direct {p0}, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->waitForGlobalRequestResult()Z

    move-result v4

    if-nez v4, :cond_2

    .line 483
    new-instance v4, Ljava/io/IOException;

    const-string v5, "The server denied the request (did you enable port forwarding?)"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 485
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 487
    .local v0, "e":Ljava/io/IOException;
    iget-object v4, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->remoteForwardings:Ljava/util/HashMap;

    monitor-enter v4

    .line 489
    :try_start_4
    iget-object v5, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->remoteForwardings:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 491
    throw v0

    .line 472
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "pgf":Lcom/odinnet/servermonitor/ssh/packets/PacketGlobalForwardRequest;
    :catchall_1
    move-exception v5

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v5

    .line 490
    .restart local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "pgf":Lcom/odinnet/servermonitor/ssh/packets/PacketGlobalForwardRequest;
    :catchall_2
    move-exception v5

    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v5

    .line 494
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    return p2
.end method

.method public requestGlobalTrileadPing()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 623
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->channels:Ljava/util/Vector;

    monitor-enter v2

    .line 625
    const/4 v3, 0x0

    :try_start_0
    iput v3, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->globalFailedCounter:I

    iput v3, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->globalSuccessCounter:I

    .line 626
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 628
    new-instance v1, Lcom/odinnet/servermonitor/ssh/packets/PacketGlobalTrileadPing;

    invoke-direct {v1}, Lcom/odinnet/servermonitor/ssh/packets/PacketGlobalTrileadPing;-><init>()V

    .line 630
    .local v1, "pgtp":Lcom/odinnet/servermonitor/ssh/packets/PacketGlobalTrileadPing;
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    invoke-virtual {v1}, Lcom/odinnet/servermonitor/ssh/packets/PacketGlobalTrileadPing;->getPayload()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->sendMessage([B)V

    .line 632
    sget-object v2, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    invoke-virtual {v2}, Lcom/odinnet/servermonitor/ssh/log/Logger;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 633
    sget-object v2, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    const/16 v3, 0x32

    const-string v4, "Sending SSH_MSG_GLOBAL_REQUEST \'trilead-ping\'."

    invoke-virtual {v2, v3, v4}, Lcom/odinnet/servermonitor/ssh/log/Logger;->log(ILjava/lang/String;)V

    .line 637
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->waitForGlobalRequestResult()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 638
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Your server is alive - but buggy. It replied with SSH_MSG_REQUEST_SUCCESS when it actually should not."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 642
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 644
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/io/IOException;

    const-string v3, "The ping request failed."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    .end local p0    # "this":Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;
    check-cast p0, Ljava/io/IOException;

    throw p0

    .line 626
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "pgtp":Lcom/odinnet/servermonitor/ssh/packets/PacketGlobalTrileadPing;
    .restart local p0    # "this":Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 646
    .restart local v1    # "pgtp":Lcom/odinnet/servermonitor/ssh/packets/PacketGlobalTrileadPing;
    :cond_1
    return-void
.end method

.method public requestPTY(Lcom/odinnet/servermonitor/ssh/channel/Channel;Ljava/lang/String;IIII[B)V
    .locals 10
    .param p1, "c"    # Lcom/odinnet/servermonitor/ssh/channel/Channel;
    .param p2, "term"    # Ljava/lang/String;
    .param p3, "term_width_characters"    # I
    .param p4, "term_height_characters"    # I
    .param p5, "term_width_pixels"    # I
    .param p6, "term_height_pixels"    # I
    .param p7, "terminal_modes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 687
    monitor-enter p1

    .line 689
    :try_start_0
    iget v1, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->state:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 690
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot request PTY on this channel ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/odinnet/servermonitor/ssh/channel/Channel;->getReasonClosed()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 696
    :catchall_0
    move-exception v1

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 692
    :cond_0
    :try_start_1
    new-instance v0, Lcom/odinnet/servermonitor/ssh/packets/PacketSessionPtyRequest;

    iget v1, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->remoteID:I

    const/4 v2, 0x1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/odinnet/servermonitor/ssh/packets/PacketSessionPtyRequest;-><init>(IZLjava/lang/String;IIII[B)V

    .line 695
    .local v0, "spr":Lcom/odinnet/servermonitor/ssh/packets/PacketSessionPtyRequest;
    const/4 v1, 0x0

    iput v1, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->failedCounter:I

    iput v1, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->successCounter:I

    .line 696
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 698
    iget-object v1, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->channelSendLock:Ljava/lang/Object;

    monitor-enter v1

    .line 700
    :try_start_2
    iget-boolean v2, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->closeMessageSent:Z

    if-eqz v2, :cond_1

    .line 701
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot request PTY on this channel ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/odinnet/servermonitor/ssh/channel/Channel;->getReasonClosed()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 703
    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 702
    :cond_1
    :try_start_3
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    invoke-virtual {v0}, Lcom/odinnet/servermonitor/ssh/packets/PacketSessionPtyRequest;->getPayload()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->sendMessage([B)V

    .line 703
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 707
    :try_start_4
    invoke-direct {p0, p1}, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->waitForChannelRequestResult(Lcom/odinnet/servermonitor/ssh/channel/Channel;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 708
    new-instance v1, Ljava/io/IOException;

    const-string v2, "The server denied the request."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 710
    :catch_0
    move-exception v1

    move-object v9, v1

    .line 712
    .local v9, "e":Ljava/io/IOException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "PTY request failed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    .end local p0    # "this":Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;
    check-cast p0, Ljava/io/IOException;

    throw p0

    .line 714
    .end local v9    # "e":Ljava/io/IOException;
    .restart local p0    # "this":Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;
    :cond_2
    return-void
.end method

.method public requestShell(Lcom/odinnet/servermonitor/ssh/channel/Channel;)V
    .locals 6
    .param p1, "c"    # Lcom/odinnet/servermonitor/ssh/channel/Channel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v2, "Cannot start shell on this channel ("

    const-string v2, ")"

    .line 848
    monitor-enter p1

    .line 850
    :try_start_0
    iget v2, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->state:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 851
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot start shell on this channel ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/odinnet/servermonitor/ssh/channel/Channel;->getReasonClosed()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 856
    :catchall_0
    move-exception v2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 853
    :cond_0
    :try_start_1
    new-instance v1, Lcom/odinnet/servermonitor/ssh/packets/PacketSessionStartShell;

    iget v2, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->remoteID:I

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/odinnet/servermonitor/ssh/packets/PacketSessionStartShell;-><init>(IZ)V

    .line 855
    .local v1, "sm":Lcom/odinnet/servermonitor/ssh/packets/PacketSessionStartShell;
    const/4 v2, 0x0

    iput v2, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->failedCounter:I

    iput v2, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->successCounter:I

    .line 856
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 858
    iget-object v2, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->channelSendLock:Ljava/lang/Object;

    monitor-enter v2

    .line 860
    :try_start_2
    iget-boolean v3, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->closeMessageSent:Z

    if-eqz v3, :cond_1

    .line 861
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot start shell on this channel ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/odinnet/servermonitor/ssh/channel/Channel;->getReasonClosed()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 863
    :catchall_1
    move-exception v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .line 862
    :cond_1
    :try_start_3
    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    invoke-virtual {v1}, Lcom/odinnet/servermonitor/ssh/packets/PacketSessionStartShell;->getPayload()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->sendMessage([B)V

    .line 863
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 867
    :try_start_4
    invoke-direct {p0, p1}, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->waitForChannelRequestResult(Lcom/odinnet/servermonitor/ssh/channel/Channel;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 868
    new-instance v2, Ljava/io/IOException;

    const-string v3, "The server denied the request."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 870
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 872
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/io/IOException;

    const-string v3, "The shell request failed."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    .end local p0    # "this":Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;
    check-cast p0, Ljava/io/IOException;

    throw p0

    .line 874
    .end local v0    # "e":Ljava/io/IOException;
    .restart local p0    # "this":Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;
    :cond_2
    return-void
.end method

.method public requestSubSystem(Lcom/odinnet/servermonitor/ssh/channel/Channel;Ljava/lang/String;)V
    .locals 6
    .param p1, "c"    # Lcom/odinnet/servermonitor/ssh/channel/Channel;
    .param p2, "subSystemName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v2, "Cannot request subsystem on this channel ("

    const-string v2, ")"

    .line 781
    monitor-enter p1

    .line 783
    :try_start_0
    iget v2, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->state:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 784
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot request subsystem on this channel ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/odinnet/servermonitor/ssh/channel/Channel;->getReasonClosed()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 789
    :catchall_0
    move-exception v2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 786
    :cond_0
    :try_start_1
    new-instance v1, Lcom/odinnet/servermonitor/ssh/packets/PacketSessionSubsystemRequest;

    iget v2, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->remoteID:I

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, p2}, Lcom/odinnet/servermonitor/ssh/packets/PacketSessionSubsystemRequest;-><init>(IZLjava/lang/String;)V

    .line 788
    .local v1, "ssr":Lcom/odinnet/servermonitor/ssh/packets/PacketSessionSubsystemRequest;
    const/4 v2, 0x0

    iput v2, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->failedCounter:I

    iput v2, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->successCounter:I

    .line 789
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 791
    iget-object v2, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->channelSendLock:Ljava/lang/Object;

    monitor-enter v2

    .line 793
    :try_start_2
    iget-boolean v3, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->closeMessageSent:Z

    if-eqz v3, :cond_1

    .line 794
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot request subsystem on this channel ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/odinnet/servermonitor/ssh/channel/Channel;->getReasonClosed()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 796
    :catchall_1
    move-exception v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .line 795
    :cond_1
    :try_start_3
    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    invoke-virtual {v1}, Lcom/odinnet/servermonitor/ssh/packets/PacketSessionSubsystemRequest;->getPayload()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->sendMessage([B)V

    .line 796
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 800
    :try_start_4
    invoke-direct {p0, p1}, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->waitForChannelRequestResult(Lcom/odinnet/servermonitor/ssh/channel/Channel;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 801
    new-instance v2, Ljava/io/IOException;

    const-string v3, "The server denied the request."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 803
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 805
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/io/IOException;

    const-string v3, "The subsystem request failed."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    .end local p0    # "this":Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;
    check-cast p0, Ljava/io/IOException;

    throw p0

    .line 807
    .end local v0    # "e":Ljava/io/IOException;
    .restart local p0    # "this":Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;
    :cond_2
    return-void
.end method

.method public requestX11(Lcom/odinnet/servermonitor/ssh/channel/Channel;ZLjava/lang/String;Ljava/lang/String;I)V
    .locals 9
    .param p1, "c"    # Lcom/odinnet/servermonitor/ssh/channel/Channel;
    .param p2, "singleConnection"    # Z
    .param p3, "x11AuthenticationProtocol"    # Ljava/lang/String;
    .param p4, "x11AuthenticationCookie"    # Ljava/lang/String;
    .param p5, "x11ScreenNumber"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v1, "Cannot request X11 on this channel ("

    const-string v8, ")"

    .line 745
    monitor-enter p1

    .line 747
    :try_start_0
    iget v1, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->state:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 748
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot request X11 on this channel ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/odinnet/servermonitor/ssh/channel/Channel;->getReasonClosed()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 754
    :catchall_0
    move-exception v1

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 750
    :cond_0
    :try_start_1
    new-instance v0, Lcom/odinnet/servermonitor/ssh/packets/PacketSessionX11Request;

    iget v1, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->remoteID:I

    const/4 v2, 0x1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/odinnet/servermonitor/ssh/packets/PacketSessionX11Request;-><init>(IZZLjava/lang/String;Ljava/lang/String;I)V

    .line 753
    .local v0, "psr":Lcom/odinnet/servermonitor/ssh/packets/PacketSessionX11Request;
    const/4 v1, 0x0

    iput v1, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->failedCounter:I

    iput v1, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->successCounter:I

    .line 754
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 756
    iget-object v1, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->channelSendLock:Ljava/lang/Object;

    monitor-enter v1

    .line 758
    :try_start_2
    iget-boolean v2, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->closeMessageSent:Z

    if-eqz v2, :cond_1

    .line 759
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot request X11 on this channel ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/odinnet/servermonitor/ssh/channel/Channel;->getReasonClosed()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 761
    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 760
    :cond_1
    :try_start_3
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    invoke-virtual {v0}, Lcom/odinnet/servermonitor/ssh/packets/PacketSessionX11Request;->getPayload()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->sendMessage([B)V

    .line 761
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 763
    sget-object v1, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    invoke-virtual {v1}, Lcom/odinnet/servermonitor/ssh/log/Logger;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 764
    sget-object v1, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    const/16 v2, 0x32

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requesting X11 forwarding (Channel "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->localID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->remoteID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/odinnet/servermonitor/ssh/log/Logger;->log(ILjava/lang/String;)V

    .line 768
    :cond_2
    :try_start_4
    invoke-direct {p0, p1}, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->waitForChannelRequestResult(Lcom/odinnet/servermonitor/ssh/channel/Channel;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 769
    new-instance v1, Ljava/io/IOException;

    const-string v2, "The server denied the request."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 771
    :catch_0
    move-exception v1

    move-object v7, v1

    .line 773
    .local v7, "e":Ljava/io/IOException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "The X11 request failed."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    .end local p0    # "this":Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;
    check-cast p0, Ljava/io/IOException;

    throw p0

    .line 775
    .end local v7    # "e":Ljava/io/IOException;
    .restart local p0    # "this":Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;
    :cond_3
    return-void
.end method

.method public resizePTY(Lcom/odinnet/servermonitor/ssh/channel/Channel;IIII)V
    .locals 6
    .param p1, "c"    # Lcom/odinnet/servermonitor/ssh/channel/Channel;
    .param p2, "term_width_characters"    # I
    .param p3, "term_height_characters"    # I
    .param p4, "term_width_pixels"    # I
    .param p5, "term_height_pixels"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v1, "Cannot request PTY on this channel ("

    const-string v1, ")"

    .line 721
    monitor-enter p1

    .line 722
    :try_start_0
    iget v1, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->state:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 723
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot request PTY on this channel ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/odinnet/servermonitor/ssh/channel/Channel;->getReasonClosed()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 729
    :catchall_0
    move-exception v1

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 726
    :cond_0
    :try_start_1
    new-instance v0, Lcom/odinnet/servermonitor/ssh/packets/PacketSessionPtyResize;

    iget v1, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->remoteID:I

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/odinnet/servermonitor/ssh/packets/PacketSessionPtyResize;-><init>(IIIII)V

    .line 728
    .local v0, "spr":Lcom/odinnet/servermonitor/ssh/packets/PacketSessionPtyResize;
    const/4 v1, 0x0

    iput v1, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->failedCounter:I

    iput v1, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->successCounter:I

    .line 729
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 731
    iget-object v1, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->channelSendLock:Ljava/lang/Object;

    monitor-enter v1

    .line 732
    :try_start_2
    iget-boolean v2, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->closeMessageSent:Z

    if-eqz v2, :cond_1

    .line 733
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot request PTY on this channel ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/odinnet/servermonitor/ssh/channel/Channel;->getReasonClosed()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 736
    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 735
    :cond_1
    :try_start_3
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    invoke-virtual {v0}, Lcom/odinnet/servermonitor/ssh/packets/PacketSessionPtyResize;->getPayload()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->sendMessage([B)V

    .line 736
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 737
    return-void
.end method

.method public sendData(Lcom/odinnet/servermonitor/ssh/channel/Channel;[BII)V
    .locals 10
    .param p1, "c"    # Lcom/odinnet/servermonitor/ssh/channel/Channel;
    .param p2, "buffer"    # [B
    .param p3, "pos"    # I
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v7, 0x1

    const-string v3, "SSH channel is closed. ("

    const-string v3, ")"

    .line 374
    :goto_0
    if-lez p4, :cond_7

    .line 376
    const/4 v2, 0x0

    .line 379
    .local v2, "thislen":I
    monitor-enter p1

    .line 383
    :goto_1
    :try_start_0
    iget v3, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->state:I

    if-ne v3, v9, :cond_0

    .line 384
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SSH channel is closed. ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/odinnet/servermonitor/ssh/channel/Channel;->getReasonClosed()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 432
    :catchall_0
    move-exception v3

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 386
    :cond_0
    :try_start_1
    iget v3, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->state:I

    if-eq v3, v8, :cond_1

    .line 387
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SSH channel in strange state. ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->state:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 389
    :cond_1
    iget-wide v3, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->remoteWindow:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    .line 403
    iget-wide v3, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->remoteWindow:J

    int-to-long v5, p4

    cmp-long v3, v3, v5

    if-ltz v3, :cond_5

    move v2, p4

    .line 405
    :goto_2
    iget v3, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->remoteMaxPacketSize:I

    iget-object v4, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    invoke-virtual {v4}, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->getPacketOverheadEstimate()I

    move-result v4

    add-int/lit8 v4, v4, 0x9

    sub-int v0, v3, v4

    .line 409
    .local v0, "estimatedMaxDataLen":I
    if-gtz v0, :cond_2

    .line 411
    const/4 v0, 0x1

    .line 414
    :cond_2
    if-le v2, v0, :cond_3

    .line 415
    move v2, v0

    .line 417
    :cond_3
    iget-wide v3, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->remoteWindow:J

    int-to-long v5, v2

    sub-long/2addr v3, v5

    iput-wide v3, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->remoteWindow:J

    .line 419
    add-int/lit8 v3, v2, 0x9

    new-array v1, v3, [B

    .line 421
    .local v1, "msg":[B
    const/4 v3, 0x0

    const/16 v4, 0x5e

    aput-byte v4, v1, v3

    .line 422
    const/4 v3, 0x1

    iget v4, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->remoteID:I

    shr-int/lit8 v4, v4, 0x18

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 423
    const/4 v3, 0x2

    iget v4, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->remoteID:I

    shr-int/lit8 v4, v4, 0x10

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 424
    const/4 v3, 0x3

    iget v4, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->remoteID:I

    shr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 425
    const/4 v3, 0x4

    iget v4, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->remoteID:I

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 426
    const/4 v3, 0x5

    shr-int/lit8 v4, v2, 0x18

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 427
    const/4 v3, 0x6

    shr-int/lit8 v4, v2, 0x10

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 428
    const/4 v3, 0x7

    shr-int/lit8 v4, v2, 0x8

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 429
    const/16 v3, 0x8

    int-to-byte v4, v2

    aput-byte v4, v1, v3

    .line 431
    const/16 v3, 0x9

    invoke-static {p2, p3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 432
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 434
    iget-object v3, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->channelSendLock:Ljava/lang/Object;

    monitor-enter v3

    .line 436
    :try_start_2
    iget-boolean v4, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->closeMessageSent:Z

    if-ne v4, v7, :cond_6

    .line 437
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SSH channel is closed. ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/odinnet/servermonitor/ssh/channel/Channel;->getReasonClosed()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 440
    :catchall_1
    move-exception v4

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    .line 394
    .end local v0    # "estimatedMaxDataLen":I
    .end local v1    # "msg":[B
    :cond_4
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 396
    :catch_0
    move-exception v3

    goto/16 :goto_1

    .line 403
    :cond_5
    :try_start_4
    iget-wide v3, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->remoteWindow:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    long-to-int v3, v3

    move v2, v3

    goto/16 :goto_2

    .line 439
    .restart local v0    # "estimatedMaxDataLen":I
    .restart local v1    # "msg":[B
    :cond_6
    :try_start_5
    iget-object v4, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    invoke-virtual {v4, v1}, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->sendMessage([B)V

    .line 440
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 442
    add-int/2addr p3, v2

    .line 443
    sub-int/2addr p4, v2

    .line 444
    goto/16 :goto_0

    .line 445
    .end local v0    # "estimatedMaxDataLen":I
    .end local v1    # "msg":[B
    .end local v2    # "thislen":I
    :cond_7
    return-void
.end method

.method public sendEOF(Lcom/odinnet/servermonitor/ssh/channel/Channel;)V
    .locals 5
    .param p1, "c"    # Lcom/odinnet/servermonitor/ssh/channel/Channel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 325
    const/4 v1, 0x5

    new-array v0, v1, [B

    .line 327
    .local v0, "msg":[B
    monitor-enter p1

    .line 329
    :try_start_0
    iget v1, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->state:I

    if-eq v1, v2, :cond_1

    .line 330
    monitor-exit p1

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 332
    :cond_1
    const/4 v1, 0x0

    const/16 v2, 0x60

    aput-byte v2, v0, v1

    .line 333
    const/4 v1, 0x1

    iget v2, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->remoteID:I

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 334
    const/4 v1, 0x2

    iget v2, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->remoteID:I

    shr-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 335
    const/4 v1, 0x3

    iget v2, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->remoteID:I

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 336
    const/4 v1, 0x4

    iget v2, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->remoteID:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 337
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 339
    iget-object v1, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->channelSendLock:Ljava/lang/Object;

    monitor-enter v1

    .line 341
    :try_start_1
    iget-boolean v2, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->closeMessageSent:Z

    if-ne v2, v3, :cond_2

    .line 342
    monitor-exit v1

    goto :goto_0

    .line 344
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 337
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 343
    :cond_2
    :try_start_3
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    invoke-virtual {v2, v0}, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->sendMessage([B)V

    .line 344
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 346
    sget-object v1, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    invoke-virtual {v1}, Lcom/odinnet/servermonitor/ssh/log/Logger;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 347
    sget-object v1, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    const/16 v2, 0x32

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sent EOF (Channel "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->localID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->remoteID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/odinnet/servermonitor/ssh/log/Logger;->log(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public sendOpenConfirmation(Lcom/odinnet/servermonitor/ssh/channel/Channel;)V
    .locals 7
    .param p1, "c"    # Lcom/odinnet/servermonitor/ssh/channel/Channel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 352
    const/4 v0, 0x0

    .line 354
    .local v0, "pcoc":Lcom/odinnet/servermonitor/ssh/packets/PacketChannelOpenConfirmation;
    monitor-enter p1

    .line 356
    :try_start_0
    iget v2, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->state:I

    if-eq v2, v6, :cond_0

    .line 357
    monitor-exit p1

    .line 370
    :goto_0
    return-void

    .line 359
    :cond_0
    const/4 v2, 0x2

    iput v2, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->state:I

    .line 361
    new-instance v1, Lcom/odinnet/servermonitor/ssh/packets/PacketChannelOpenConfirmation;

    iget v2, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->remoteID:I

    iget v3, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->localID:I

    iget v4, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->localWindow:I

    iget v5, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->localMaxPacketSize:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/odinnet/servermonitor/ssh/packets/PacketChannelOpenConfirmation;-><init>(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    .end local v0    # "pcoc":Lcom/odinnet/servermonitor/ssh/packets/PacketChannelOpenConfirmation;
    .local v1, "pcoc":Lcom/odinnet/servermonitor/ssh/packets/PacketChannelOpenConfirmation;
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 364
    iget-object v2, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->channelSendLock:Ljava/lang/Object;

    monitor-enter v2

    .line 366
    :try_start_2
    iget-boolean v3, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->closeMessageSent:Z

    if-ne v3, v6, :cond_1

    .line 367
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v0, v1

    .end local v1    # "pcoc":Lcom/odinnet/servermonitor/ssh/packets/PacketChannelOpenConfirmation;
    .restart local v0    # "pcoc":Lcom/odinnet/servermonitor/ssh/packets/PacketChannelOpenConfirmation;
    goto :goto_0

    .line 362
    :catchall_0
    move-exception v2

    :goto_1
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 368
    .end local v0    # "pcoc":Lcom/odinnet/servermonitor/ssh/packets/PacketChannelOpenConfirmation;
    .restart local v1    # "pcoc":Lcom/odinnet/servermonitor/ssh/packets/PacketChannelOpenConfirmation;
    :cond_1
    :try_start_4
    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    invoke-virtual {v1}, Lcom/odinnet/servermonitor/ssh/packets/PacketChannelOpenConfirmation;->getPayload()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->sendMessage([B)V

    .line 369
    monitor-exit v2

    move-object v0, v1

    .line 370
    .end local v1    # "pcoc":Lcom/odinnet/servermonitor/ssh/packets/PacketChannelOpenConfirmation;
    .restart local v0    # "pcoc":Lcom/odinnet/servermonitor/ssh/packets/PacketChannelOpenConfirmation;
    goto :goto_0

    .line 369
    .end local v0    # "pcoc":Lcom/odinnet/servermonitor/ssh/packets/PacketChannelOpenConfirmation;
    .restart local v1    # "pcoc":Lcom/odinnet/servermonitor/ssh/packets/PacketChannelOpenConfirmation;
    :catchall_1
    move-exception v3

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3

    .line 362
    :catchall_2
    move-exception v2

    move-object v0, v1

    .end local v1    # "pcoc":Lcom/odinnet/servermonitor/ssh/packets/PacketChannelOpenConfirmation;
    .restart local v0    # "pcoc":Lcom/odinnet/servermonitor/ssh/packets/PacketChannelOpenConfirmation;
    goto :goto_1
.end method

.method public unRegisterX11Cookie(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "hexFakeCookie"    # Ljava/lang/String;
    .param p2, "killChannels"    # Z

    .prologue
    .line 212
    if-nez p1, :cond_0

    .line 213
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "hexFakeCookie may not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 215
    :cond_0
    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->x11_magic_cookies:Ljava/util/HashMap;

    monitor-enter v3

    .line 217
    :try_start_0
    iget-object v4, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->x11_magic_cookies:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    monitor-exit v3

    .line 220
    if-nez p2, :cond_2

    .line 251
    :cond_1
    return-void

    .line 218
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 223
    :cond_2
    sget-object v3, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    invoke-virtual {v3}, Lcom/odinnet/servermonitor/ssh/log/Logger;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 224
    sget-object v3, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    const/16 v4, 0x32

    const-string v5, "Closing all X11 channels for the given fake cookie"

    invoke-virtual {v3, v4, v5}, Lcom/odinnet/servermonitor/ssh/log/Logger;->log(ILjava/lang/String;)V

    .line 228
    :cond_3
    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->channels:Ljava/util/Vector;

    monitor-enter v3

    .line 230
    :try_start_1
    iget-object v4, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->channels:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    .line 231
    .local v1, "channel_copy":Ljava/util/Vector;
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 233
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 235
    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/odinnet/servermonitor/ssh/channel/Channel;

    .line 237
    .local v0, "c":Lcom/odinnet/servermonitor/ssh/channel/Channel;
    monitor-enter v0

    .line 239
    :try_start_2
    iget-object v3, v0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->hexX11FakeCookie:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 240
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 233
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 231
    .end local v0    # "c":Lcom/odinnet/servermonitor/ssh/channel/Channel;
    .end local v1    # "channel_copy":Ljava/util/Vector;
    .end local v2    # "i":I
    :catchall_1
    move-exception v4

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4

    .line 241
    .restart local v0    # "c":Lcom/odinnet/servermonitor/ssh/channel/Channel;
    .restart local v1    # "channel_copy":Ljava/util/Vector;
    .restart local v2    # "i":I
    :cond_4
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 245
    :try_start_5
    const-string v3, "Closing X11 channel since the corresponding session is closing"

    const/4 v4, 0x1

    invoke-virtual {p0, v0, v3, v4}, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->closeChannel(Lcom/odinnet/servermonitor/ssh/channel/Channel;Ljava/lang/String;Z)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    .line 247
    :catch_0
    move-exception v3

    goto :goto_1

    .line 241
    :catchall_2
    move-exception v3

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v3
.end method

.method public waitForCondition(Lcom/odinnet/servermonitor/ssh/channel/Channel;JI)I
    .locals 10
    .param p1, "c"    # Lcom/odinnet/servermonitor/ssh/channel/Channel;
    .param p2, "timeout"    # J
    .param p4, "condition_mask"    # I

    .prologue
    const-wide/16 v8, 0x0

    .line 935
    const-wide/16 v1, 0x0

    .line 936
    .local v1, "end_time":J
    const/4 v3, 0x0

    .line 938
    .local v3, "end_time_set":Z
    monitor-enter p1

    .line 942
    :goto_0
    const/4 v0, 0x0

    .line 944
    .local v0, "current_cond":I
    :try_start_0
    iget v6, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->stdoutWritepos:I

    iget v7, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->stdoutReadpos:I

    sub-int v5, v6, v7

    .line 945
    .local v5, "stdoutAvail":I
    iget v6, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->stderrWritepos:I

    iget v7, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->stderrReadpos:I

    sub-int v4, v6, v7

    .line 947
    .local v4, "stderrAvail":I
    if-lez v5, :cond_0

    .line 948
    or-int/lit8 v0, v0, 0x4

    .line 950
    :cond_0
    if-lez v4, :cond_1

    .line 951
    or-int/lit8 v0, v0, 0x8

    .line 953
    :cond_1
    iget-boolean v6, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->EOF:Z

    if-eqz v6, :cond_2

    .line 954
    or-int/lit8 v0, v0, 0x10

    .line 956
    :cond_2
    invoke-virtual {p1}, Lcom/odinnet/servermonitor/ssh/channel/Channel;->getExitStatus()Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 957
    or-int/lit8 v0, v0, 0x20

    .line 959
    :cond_3
    invoke-virtual {p1}, Lcom/odinnet/servermonitor/ssh/channel/Channel;->getExitSignal()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 960
    or-int/lit8 v0, v0, 0x40

    .line 962
    :cond_4
    iget v6, p1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->state:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_5

    .line 963
    or-int/lit8 v6, v0, 0x2

    or-int/lit8 v6, v6, 0x10

    monitor-exit p1

    .line 980
    :goto_1
    return v6

    .line 965
    :cond_5
    and-int v6, v0, p4

    if-eqz v6, :cond_6

    .line 966
    monitor-exit p1

    move v6, v0

    goto :goto_1

    .line 968
    :cond_6
    cmp-long v6, p2, v8

    if-lez v6, :cond_7

    .line 970
    if-nez v3, :cond_8

    .line 972
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v6

    add-long v1, v6, p2

    .line 973
    const/4 v3, 0x1

    .line 986
    :cond_7
    cmp-long v6, p2, v8

    if-lez v6, :cond_9

    .line 987
    :try_start_1
    invoke-virtual {p1, p2, p3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 991
    :catch_0
    move-exception v6

    goto :goto_0

    .line 977
    :cond_8
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long p2, v1, v6

    .line 979
    cmp-long v6, p2, v8

    if-gtz v6, :cond_7

    .line 980
    or-int/lit8 v6, v0, 0x1

    monitor-exit p1

    goto :goto_1

    .line 995
    .end local v4    # "stderrAvail":I
    .end local v5    # "stdoutAvail":I
    :catchall_0
    move-exception v6

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 989
    .restart local v4    # "stderrAvail":I
    .restart local v5    # "stdoutAvail":I
    :cond_9
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method
