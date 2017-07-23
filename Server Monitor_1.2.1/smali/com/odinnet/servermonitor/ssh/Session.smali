.class public Lcom/odinnet/servermonitor/ssh/Session;
.super Ljava/lang/Object;
.source "Session.java"


# instance fields
.field cm:Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;

.field cn:Lcom/odinnet/servermonitor/ssh/channel/Channel;

.field flag_closed:Z

.field flag_execution_started:Z

.field flag_pty_requested:Z

.field flag_x11_requested:Z

.field final rnd:Ljava/security/SecureRandom;

.field x11FakeCookie:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;Ljava/security/SecureRandom;)V
    .locals 1
    .param p1, "cm"    # Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;
    .param p2, "rnd"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-boolean v0, p0, Lcom/odinnet/servermonitor/ssh/Session;->flag_pty_requested:Z

    .line 29
    iput-boolean v0, p0, Lcom/odinnet/servermonitor/ssh/Session;->flag_x11_requested:Z

    .line 30
    iput-boolean v0, p0, Lcom/odinnet/servermonitor/ssh/Session;->flag_execution_started:Z

    .line 31
    iput-boolean v0, p0, Lcom/odinnet/servermonitor/ssh/Session;->flag_closed:Z

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/Session;->x11FakeCookie:Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lcom/odinnet/servermonitor/ssh/Session;->cm:Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;

    .line 40
    invoke-virtual {p1}, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->openSessionChannel()Lcom/odinnet/servermonitor/ssh/channel/Channel;

    move-result-object v0

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/Session;->cn:Lcom/odinnet/servermonitor/ssh/channel/Channel;

    .line 41
    iput-object p2, p0, Lcom/odinnet/servermonitor/ssh/Session;->rnd:Ljava/security/SecureRandom;

    .line 42
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .prologue
    .line 511
    monitor-enter p0

    .line 513
    :try_start_0
    iget-boolean v0, p0, Lcom/odinnet/servermonitor/ssh/Session;->flag_closed:Z

    if-eqz v0, :cond_0

    .line 514
    monitor-exit p0

    .line 529
    :goto_0
    return-void

    .line 516
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/odinnet/servermonitor/ssh/Session;->flag_closed:Z

    .line 518
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/Session;->x11FakeCookie:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 519
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/Session;->cm:Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;

    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/Session;->x11FakeCookie:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->unRegisterX11Cookie(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 523
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/Session;->cm:Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;

    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/Session;->cn:Lcom/odinnet/servermonitor/ssh/channel/Channel;

    const-string v2, "Closed due to user request"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->closeChannel(Lcom/odinnet/servermonitor/ssh/channel/Channel;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 528
    :goto_1
    :try_start_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 525
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public execCommand(Ljava/lang/String;)V
    .locals 2
    .param p1, "cmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 264
    if-nez p1, :cond_0

    .line 265
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cmd argument may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 267
    :cond_0
    monitor-enter p0

    .line 270
    :try_start_0
    iget-boolean v0, p0, Lcom/odinnet/servermonitor/ssh/Session;->flag_closed:Z

    if-eqz v0, :cond_1

    .line 271
    new-instance v0, Ljava/io/IOException;

    const-string v1, "This session is closed."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 277
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 273
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/odinnet/servermonitor/ssh/Session;->flag_execution_started:Z

    if-eqz v0, :cond_2

    .line 274
    new-instance v0, Ljava/io/IOException;

    const-string v1, "A remote execution has already started."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 276
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/odinnet/servermonitor/ssh/Session;->flag_execution_started:Z

    .line 277
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 279
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/Session;->cm:Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;

    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/Session;->cn:Lcom/odinnet/servermonitor/ssh/channel/Channel;

    invoke-virtual {v0, v1, p1}, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->requestExecCommand(Lcom/odinnet/servermonitor/ssh/channel/Channel;Ljava/lang/String;)V

    .line 280
    return-void
.end method

.method public getExitSignal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/Session;->cn:Lcom/odinnet/servermonitor/ssh/channel/Channel;

    invoke-virtual {v0}, Lcom/odinnet/servermonitor/ssh/channel/Channel;->getExitSignal()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExitStatus()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/Session;->cn:Lcom/odinnet/servermonitor/ssh/channel/Channel;

    invoke-virtual {v0}, Lcom/odinnet/servermonitor/ssh/channel/Channel;->getExitStatus()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getStderr()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/Session;->cn:Lcom/odinnet/servermonitor/ssh/channel/Channel;

    invoke-virtual {v0}, Lcom/odinnet/servermonitor/ssh/channel/Channel;->getStderrStream()Lcom/odinnet/servermonitor/ssh/channel/ChannelInputStream;

    move-result-object v0

    return-object v0
.end method

.method public getStdin()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/Session;->cn:Lcom/odinnet/servermonitor/ssh/channel/Channel;

    invoke-virtual {v0}, Lcom/odinnet/servermonitor/ssh/channel/Channel;->getStdinStream()Lcom/odinnet/servermonitor/ssh/channel/ChannelOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public getStdout()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/Session;->cn:Lcom/odinnet/servermonitor/ssh/channel/Channel;

    invoke-virtual {v0}, Lcom/odinnet/servermonitor/ssh/channel/Channel;->getStdoutStream()Lcom/odinnet/servermonitor/ssh/channel/ChannelInputStream;

    move-result-object v0

    return-object v0
.end method

.method public ping()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 344
    monitor-enter p0

    .line 350
    :try_start_0
    iget-boolean v0, p0, Lcom/odinnet/servermonitor/ssh/Session;->flag_closed:Z

    if-eqz v0, :cond_0

    .line 351
    new-instance v0, Ljava/io/IOException;

    const-string v1, "This session is closed."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 352
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 354
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/Session;->cm:Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;

    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/Session;->cn:Lcom/odinnet/servermonitor/ssh/channel/Channel;

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->requestChannelTrileadPing(Lcom/odinnet/servermonitor/ssh/channel/Channel;)V

    .line 355
    return-void
.end method

.method public declared-synchronized requestAuthAgentForwarding(Lcom/odinnet/servermonitor/ssh/AuthAgentCallback;)Z
    .locals 2
    .param p1, "agent"    # Lcom/odinnet/servermonitor/ssh/AuthAgentCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 365
    monitor-enter p0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 371
    :try_start_1
    iget-boolean v0, p0, Lcom/odinnet/servermonitor/ssh/Session;->flag_closed:Z

    if-eqz v0, :cond_0

    .line 372
    new-instance v0, Ljava/io/IOException;

    const-string v1, "This session is closed."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 373
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 365
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 373
    :cond_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 375
    :try_start_4
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/Session;->cm:Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;

    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/Session;->cn:Lcom/odinnet/servermonitor/ssh/channel/Channel;

    invoke-virtual {v0, v1, p1}, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->requestChannelAgentForwarding(Lcom/odinnet/servermonitor/ssh/channel/Channel;Lcom/odinnet/servermonitor/ssh/AuthAgentCallback;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v0

    monitor-exit p0

    return v0
.end method

.method public requestDumbPTY()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 52
    const-string v1, "dumb"

    const/4 v6, 0x0

    move-object v0, p0

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/odinnet/servermonitor/ssh/Session;->requestPTY(Ljava/lang/String;IIII[B)V

    .line 53
    return-void
.end method

.method public requestPTY(Ljava/lang/String;)V
    .locals 7
    .param p1, "term"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 63
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/odinnet/servermonitor/ssh/Session;->requestPTY(Ljava/lang/String;IIII[B)V

    .line 64
    return-void
.end method

.method public requestPTY(Ljava/lang/String;IIII[B)V
    .locals 8
    .param p1, "term"    # Ljava/lang/String;
    .param p2, "term_width_characters"    # I
    .param p3, "term_height_characters"    # I
    .param p4, "term_width_pixels"    # I
    .param p5, "term_height_pixels"    # I
    .param p6, "terminal_modes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 102
    if-nez p1, :cond_0

    .line 103
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "TERM cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_0
    if-eqz p6, :cond_1

    array-length v0, p6

    if-lez v0, :cond_1

    .line 107
    array-length v0, p6

    sub-int/2addr v0, v1

    aget-byte v0, p6, v0

    if-eqz v0, :cond_2

    .line 108
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Illegal terminal modes description, does not end in zero byte"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_1
    new-array p6, v1, [B

    .end local p6    # "terminal_modes":[B
    aput-byte v2, p6, v2

    .line 113
    .restart local p6    # "terminal_modes":[B
    :cond_2
    monitor-enter p0

    .line 116
    :try_start_0
    iget-boolean v0, p0, Lcom/odinnet/servermonitor/ssh/Session;->flag_closed:Z

    if-eqz v0, :cond_3

    .line 117
    new-instance v0, Ljava/io/IOException;

    const-string v1, "This session is closed."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 119
    :cond_3
    :try_start_1
    iget-boolean v0, p0, Lcom/odinnet/servermonitor/ssh/Session;->flag_pty_requested:Z

    if-eqz v0, :cond_4

    .line 120
    new-instance v0, Ljava/io/IOException;

    const-string v1, "A PTY was already requested."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_4
    iget-boolean v0, p0, Lcom/odinnet/servermonitor/ssh/Session;->flag_execution_started:Z

    if-eqz v0, :cond_5

    .line 123
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot request PTY at this stage anymore, a remote execution has already started."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/odinnet/servermonitor/ssh/Session;->flag_pty_requested:Z

    .line 127
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/Session;->cm:Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;

    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/Session;->cn:Lcom/odinnet/servermonitor/ssh/channel/Channel;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->requestPTY(Lcom/odinnet/servermonitor/ssh/channel/Channel;Ljava/lang/String;IIII[B)V

    .line 131
    return-void
.end method

.method public requestX11Forwarding(Ljava/lang/String;I[BZ)V
    .locals 11
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "cookie"    # [B
    .param p4, "singleConnection"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    if-nez p1, :cond_0

    .line 183
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "hostname argument may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_0
    monitor-enter p0

    .line 188
    :try_start_0
    iget-boolean v0, p0, Lcom/odinnet/servermonitor/ssh/Session;->flag_closed:Z

    if-eqz v0, :cond_1

    .line 189
    new-instance v0, Ljava/io/IOException;

    const-string v1, "This session is closed."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 191
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/odinnet/servermonitor/ssh/Session;->flag_x11_requested:Z

    if-eqz v0, :cond_2

    .line 192
    new-instance v0, Ljava/io/IOException;

    const-string v1, "X11 forwarding was already requested."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_2
    iget-boolean v0, p0, Lcom/odinnet/servermonitor/ssh/Session;->flag_execution_started:Z

    if-eqz v0, :cond_3

    .line 195
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot request X11 forwarding at this stage anymore, a remote execution has already started."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/odinnet/servermonitor/ssh/Session;->flag_x11_requested:Z

    .line 199
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 203
    new-instance v10, Lcom/odinnet/servermonitor/ssh/channel/X11ServerData;

    invoke-direct {v10}, Lcom/odinnet/servermonitor/ssh/channel/X11ServerData;-><init>()V

    .line 205
    .local v10, "x11data":Lcom/odinnet/servermonitor/ssh/channel/X11ServerData;
    iput-object p1, v10, Lcom/odinnet/servermonitor/ssh/channel/X11ServerData;->hostname:Ljava/lang/String;

    .line 206
    iput p2, v10, Lcom/odinnet/servermonitor/ssh/channel/X11ServerData;->port:I

    .line 207
    iput-object p3, v10, Lcom/odinnet/servermonitor/ssh/channel/X11ServerData;->x11_magic_cookie:[B

    .line 211
    const/16 v0, 0x10

    new-array v7, v0, [B

    .line 218
    .local v7, "fakeCookie":[B
    :cond_4
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/Session;->rnd:Ljava/security/SecureRandom;

    invoke-virtual {v0, v7}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 222
    new-instance v9, Ljava/lang/StringBuffer;

    const/16 v0, 0x20

    invoke-direct {v9, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 223
    .local v9, "tmp":Ljava/lang/StringBuffer;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    array-length v0, v7

    if-ge v8, v0, :cond_6

    .line 225
    aget-byte v0, v7, v8

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    .line 226
    .local v6, "digit2":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    move-object v0, v6

    :goto_1
    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 223
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 226
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 228
    .end local v6    # "digit2":Ljava/lang/String;
    :cond_6
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 232
    .local v4, "hexEncodedFakeCookie":Ljava/lang/String;
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/Session;->cm:Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;

    invoke-virtual {v0, v4}, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->checkX11Cookie(Ljava/lang/String;)Lcom/odinnet/servermonitor/ssh/channel/X11ServerData;

    move-result-object v0

    if-nez v0, :cond_4

    .line 238
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/Session;->cm:Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;

    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/Session;->cn:Lcom/odinnet/servermonitor/ssh/channel/Channel;

    const-string v3, "MIT-MAGIC-COOKIE-1"

    const/4 v5, 0x0

    move v2, p4

    invoke-virtual/range {v0 .. v5}, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->requestX11(Lcom/odinnet/servermonitor/ssh/channel/Channel;ZLjava/lang/String;Ljava/lang/String;I)V

    .line 243
    monitor-enter p0

    .line 245
    :try_start_2
    iget-boolean v0, p0, Lcom/odinnet/servermonitor/ssh/Session;->flag_closed:Z

    if-nez v0, :cond_7

    .line 247
    iput-object v4, p0, Lcom/odinnet/servermonitor/ssh/Session;->x11FakeCookie:Ljava/lang/String;

    .line 248
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/Session;->cm:Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;

    invoke-virtual {v0, v4, v10}, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->registerX11Cookie(Ljava/lang/String;Lcom/odinnet/servermonitor/ssh/channel/X11ServerData;)V

    .line 250
    :cond_7
    monitor-exit p0

    .line 253
    return-void

    .line 250
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public resizePTY(IIII)V
    .locals 6
    .param p1, "term_width_characters"    # I
    .param p2, "term_height_characters"    # I
    .param p3, "term_width_pixels"    # I
    .param p4, "term_height_pixels"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    monitor-enter p0

    .line 156
    :try_start_0
    iget-boolean v0, p0, Lcom/odinnet/servermonitor/ssh/Session;->flag_closed:Z

    if-eqz v0, :cond_0

    .line 157
    new-instance v0, Ljava/io/IOException;

    const-string v1, "This session is closed."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/Session;->cm:Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;

    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/Session;->cn:Lcom/odinnet/servermonitor/ssh/channel/Channel;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->resizePTY(Lcom/odinnet/servermonitor/ssh/channel/Channel;IIII)V

    .line 161
    return-void
.end method

.method public startShell()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 289
    monitor-enter p0

    .line 292
    :try_start_0
    iget-boolean v0, p0, Lcom/odinnet/servermonitor/ssh/Session;->flag_closed:Z

    if-eqz v0, :cond_0

    .line 293
    new-instance v0, Ljava/io/IOException;

    const-string v1, "This session is closed."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 299
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 295
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/odinnet/servermonitor/ssh/Session;->flag_execution_started:Z

    if-eqz v0, :cond_1

    .line 296
    new-instance v0, Ljava/io/IOException;

    const-string v1, "A remote execution has already started."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 298
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/odinnet/servermonitor/ssh/Session;->flag_execution_started:Z

    .line 299
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 301
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/Session;->cm:Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;

    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/Session;->cn:Lcom/odinnet/servermonitor/ssh/channel/Channel;

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->requestShell(Lcom/odinnet/servermonitor/ssh/channel/Channel;)V

    .line 302
    return-void
.end method

.method public startSubSystem(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 313
    if-nez p1, :cond_0

    .line 314
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name argument may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 316
    :cond_0
    monitor-enter p0

    .line 319
    :try_start_0
    iget-boolean v0, p0, Lcom/odinnet/servermonitor/ssh/Session;->flag_closed:Z

    if-eqz v0, :cond_1

    .line 320
    new-instance v0, Ljava/io/IOException;

    const-string v1, "This session is closed."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 322
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/odinnet/servermonitor/ssh/Session;->flag_execution_started:Z

    if-eqz v0, :cond_2

    .line 323
    new-instance v0, Ljava/io/IOException;

    const-string v1, "A remote execution has already started."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 325
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/odinnet/servermonitor/ssh/Session;->flag_execution_started:Z

    .line 326
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 328
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/Session;->cm:Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;

    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/Session;->cn:Lcom/odinnet/servermonitor/ssh/channel/Channel;

    invoke-virtual {v0, v1, p1}, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->requestSubSystem(Lcom/odinnet/servermonitor/ssh/channel/Channel;Ljava/lang/String;)V

    .line 329
    return-void
.end method

.method public waitForCondition(IJ)I
    .locals 2
    .param p1, "condition_set"    # I
    .param p2, "timeout"    # J

    .prologue
    .line 465
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    .line 466
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout must be non-negative!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/Session;->cm:Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;

    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/Session;->cn:Lcom/odinnet/servermonitor/ssh/channel/Channel;

    invoke-virtual {v0, v1, p2, p3, p1}, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->waitForCondition(Lcom/odinnet/servermonitor/ssh/channel/Channel;JI)I

    move-result v0

    return v0
.end method

.method public waitUntilDataAvailable(J)I
    .locals 4
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 419
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-gez v1, :cond_0

    .line 420
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "timeout must not be negative!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 422
    :cond_0
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/Session;->cm:Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;

    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/Session;->cn:Lcom/odinnet/servermonitor/ssh/channel/Channel;

    const/16 v3, 0x1c

    invoke-virtual {v1, v2, p1, p2, v3}, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->waitForCondition(Lcom/odinnet/servermonitor/ssh/channel/Channel;JI)I

    move-result v0

    .line 425
    .local v0, "conditions":I
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1

    .line 426
    const/4 v1, -0x1

    .line 434
    :goto_0
    return v1

    .line 428
    :cond_1
    and-int/lit8 v1, v0, 0xc

    if-eqz v1, :cond_2

    .line 429
    const/4 v1, 0x1

    goto :goto_0

    .line 433
    :cond_2
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_3

    .line 434
    const/4 v1, 0x0

    goto :goto_0

    .line 436
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected condition result ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
