.class public Lcom/odinnet/servermonitor/ssh/channel/Channel;
.super Ljava/lang/Object;
.source "Channel.java"


# static fields
.field static final CHANNEL_BUFFER_SIZE:I = 0x7530

.field static final STATE_CLOSED:I = 0x4

.field static final STATE_OPEN:I = 0x2

.field static final STATE_OPENING:I = 0x1


# instance fields
.field EOF:Z

.field final channelSendLock:Ljava/lang/Object;

.field closeMessageRecv:Z

.field closeMessageSent:Z

.field final cm:Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;

.field exit_signal:Ljava/lang/String;

.field exit_status:Ljava/lang/Integer;

.field failedCounter:I

.field hexX11FakeCookie:Ljava/lang/String;

.field localID:I

.field localMaxPacketSize:I

.field localWindow:I

.field final msgWindowAdjust:[B

.field private reasonClosed:Ljava/lang/String;

.field private final reasonClosedLock:Ljava/lang/Object;

.field remoteID:I

.field remoteMaxPacketSize:I

.field remoteWindow:J

.field state:I

.field final stderrBuffer:[B

.field stderrReadpos:I

.field final stderrStream:Lcom/odinnet/servermonitor/ssh/channel/ChannelInputStream;

.field stderrWritepos:I

.field final stdinStream:Lcom/odinnet/servermonitor/ssh/channel/ChannelOutputStream;

.field final stdoutBuffer:[B

.field stdoutReadpos:I

.field final stdoutStream:Lcom/odinnet/servermonitor/ssh/channel/ChannelInputStream;

.field stdoutWritepos:I

.field successCounter:I


# direct methods
.method public constructor <init>(Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;)V
    .locals 6
    .param p1, "cm"    # Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;

    .prologue
    const/4 v5, 0x1

    const/16 v4, 0x7530

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput v3, p0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->localID:I

    .line 66
    iput v3, p0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->remoteID:I

    .line 91
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->channelSendLock:Ljava/lang/Object;

    .line 92
    iput-boolean v2, p0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->closeMessageSent:Z

    .line 99
    const/16 v0, 0x9

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->msgWindowAdjust:[B

    .line 104
    iput v5, p0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->state:I

    .line 106
    iput-boolean v2, p0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->closeMessageRecv:Z

    .line 111
    iput v2, p0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->successCounter:I

    .line 112
    iput v2, p0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->failedCounter:I

    .line 114
    iput v2, p0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->localWindow:I

    .line 115
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->remoteWindow:J

    .line 117
    iput v3, p0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->localMaxPacketSize:I

    .line 118
    iput v3, p0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->remoteMaxPacketSize:I

    .line 120
    new-array v0, v4, [B

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->stdoutBuffer:[B

    .line 121
    new-array v0, v4, [B

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->stderrBuffer:[B

    .line 123
    iput v2, p0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->stdoutReadpos:I

    .line 124
    iput v2, p0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->stdoutWritepos:I

    .line 125
    iput v2, p0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->stderrReadpos:I

    .line 126
    iput v2, p0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->stderrWritepos:I

    .line 128
    iput-boolean v2, p0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->EOF:Z

    .line 143
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->reasonClosedLock:Ljava/lang/Object;

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->reasonClosed:Ljava/lang/String;

    .line 148
    iput-object p1, p0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->cm:Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;

    .line 150
    iput v4, p0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->localWindow:I

    .line 151
    const v0, 0x84b8

    iput v0, p0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->localMaxPacketSize:I

    .line 153
    new-instance v0, Lcom/odinnet/servermonitor/ssh/channel/ChannelOutputStream;

    invoke-direct {v0, p0}, Lcom/odinnet/servermonitor/ssh/channel/ChannelOutputStream;-><init>(Lcom/odinnet/servermonitor/ssh/channel/Channel;)V

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->stdinStream:Lcom/odinnet/servermonitor/ssh/channel/ChannelOutputStream;

    .line 154
    new-instance v0, Lcom/odinnet/servermonitor/ssh/channel/ChannelInputStream;

    invoke-direct {v0, p0, v2}, Lcom/odinnet/servermonitor/ssh/channel/ChannelInputStream;-><init>(Lcom/odinnet/servermonitor/ssh/channel/Channel;Z)V

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->stdoutStream:Lcom/odinnet/servermonitor/ssh/channel/ChannelInputStream;

    .line 155
    new-instance v0, Lcom/odinnet/servermonitor/ssh/channel/ChannelInputStream;

    invoke-direct {v0, p0, v5}, Lcom/odinnet/servermonitor/ssh/channel/ChannelInputStream;-><init>(Lcom/odinnet/servermonitor/ssh/channel/Channel;Z)V

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->stderrStream:Lcom/odinnet/servermonitor/ssh/channel/ChannelInputStream;

    .line 156
    return-void
.end method


# virtual methods
.method public getExitSignal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    monitor-enter p0

    .line 179
    :try_start_0
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->exit_signal:Ljava/lang/String;

    monitor-exit p0

    return-object v0

    .line 180
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getExitStatus()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 185
    monitor-enter p0

    .line 187
    :try_start_0
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->exit_status:Ljava/lang/Integer;

    monitor-exit p0

    return-object v0

    .line 188
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getReasonClosed()Ljava/lang/String;
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->reasonClosedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 195
    :try_start_0
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->reasonClosed:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 196
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getStderrStream()Lcom/odinnet/servermonitor/ssh/channel/ChannelInputStream;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->stderrStream:Lcom/odinnet/servermonitor/ssh/channel/ChannelInputStream;

    return-object v0
.end method

.method public getStdinStream()Lcom/odinnet/servermonitor/ssh/channel/ChannelOutputStream;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->stdinStream:Lcom/odinnet/servermonitor/ssh/channel/ChannelOutputStream;

    return-object v0
.end method

.method public getStdoutStream()Lcom/odinnet/servermonitor/ssh/channel/ChannelInputStream;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->stdoutStream:Lcom/odinnet/servermonitor/ssh/channel/ChannelInputStream;

    return-object v0
.end method

.method public setReasonClosed(Ljava/lang/String;)V
    .locals 2
    .param p1, "reasonClosed"    # Ljava/lang/String;

    .prologue
    .line 201
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->reasonClosedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 203
    :try_start_0
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->reasonClosed:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 204
    iput-object p1, p0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->reasonClosed:Ljava/lang/String;

    .line 205
    :cond_0
    monitor-exit v0

    .line 206
    return-void

    .line 205
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
