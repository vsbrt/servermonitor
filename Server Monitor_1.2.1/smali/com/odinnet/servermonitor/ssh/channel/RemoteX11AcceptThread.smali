.class public Lcom/odinnet/servermonitor/ssh/channel/RemoteX11AcceptThread;
.super Ljava/lang/Thread;
.source "RemoteX11AcceptThread.java"


# static fields
.field private static final log:Lcom/odinnet/servermonitor/ssh/log/Logger;


# instance fields
.field c:Lcom/odinnet/servermonitor/ssh/channel/Channel;

.field remoteOriginatorAddress:Ljava/lang/String;

.field remoteOriginatorPort:I

.field s:Ljava/net/Socket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/odinnet/servermonitor/ssh/channel/RemoteX11AcceptThread;

    invoke-static {v0}, Lcom/odinnet/servermonitor/ssh/log/Logger;->getLogger(Ljava/lang/Class;)Lcom/odinnet/servermonitor/ssh/log/Logger;

    move-result-object v0

    sput-object v0, Lcom/odinnet/servermonitor/ssh/channel/RemoteX11AcceptThread;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/odinnet/servermonitor/ssh/channel/Channel;Ljava/lang/String;I)V
    .locals 0
    .param p1, "c"    # Lcom/odinnet/servermonitor/ssh/channel/Channel;
    .param p2, "remoteOriginatorAddress"    # Ljava/lang/String;
    .param p3, "remoteOriginatorPort"    # I

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/odinnet/servermonitor/ssh/channel/RemoteX11AcceptThread;->c:Lcom/odinnet/servermonitor/ssh/channel/Channel;

    .line 32
    iput-object p2, p0, Lcom/odinnet/servermonitor/ssh/channel/RemoteX11AcceptThread;->remoteOriginatorAddress:Ljava/lang/String;

    .line 33
    iput p3, p0, Lcom/odinnet/servermonitor/ssh/channel/RemoteX11AcceptThread;->remoteOriginatorPort:I

    .line 34
    return-void
.end method


# virtual methods
.method public run()V
    .locals 34

    .prologue
    .line 42
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/channel/RemoteX11AcceptThread;->c:Lcom/odinnet/servermonitor/ssh/channel/Channel;

    move-object v5, v0

    iget-object v5, v5, Lcom/odinnet/servermonitor/ssh/channel/Channel;->cm:Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/channel/RemoteX11AcceptThread;->c:Lcom/odinnet/servermonitor/ssh/channel/Channel;

    move-object v6, v0

    invoke-virtual {v5, v6}, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->sendOpenConfirmation(Lcom/odinnet/servermonitor/ssh/channel/Channel;)V

    .line 46
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/channel/RemoteX11AcceptThread;->c:Lcom/odinnet/servermonitor/ssh/channel/Channel;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/odinnet/servermonitor/ssh/channel/Channel;->getStdinStream()Lcom/odinnet/servermonitor/ssh/channel/ChannelOutputStream;

    move-result-object v15

    .line 47
    .local v15, "remote_os":Ljava/io/OutputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/channel/RemoteX11AcceptThread;->c:Lcom/odinnet/servermonitor/ssh/channel/Channel;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/odinnet/servermonitor/ssh/channel/Channel;->getStdoutStream()Lcom/odinnet/servermonitor/ssh/channel/ChannelInputStream;

    move-result-object v8

    .line 81
    .local v8, "remote_is":Ljava/io/InputStream;
    const/4 v5, 0x6

    move v0, v5

    new-array v0, v0, [B

    move-object/from16 v27, v0

    .line 83
    .local v27, "header":[B
    move-object v0, v8

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, 0x6

    if-eq v5, v6, :cond_1

    .line 84
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Unexpected EOF on X11 startup!"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    .end local v8    # "remote_is":Ljava/io/InputStream;
    .end local v15    # "remote_os":Ljava/io/OutputStream;
    .end local v27    # "header":[B
    :catch_0
    move-exception v5

    move-object/from16 v25, v5

    .line 221
    .local v25, "e":Ljava/io/IOException;
    sget-object v5, Lcom/odinnet/servermonitor/ssh/channel/RemoteX11AcceptThread;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    const/16 v6, 0x32

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IOException in X11 proxy code: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v25 .. v25}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/odinnet/servermonitor/ssh/log/Logger;->log(ILjava/lang/String;)V

    .line 225
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/channel/RemoteX11AcceptThread;->c:Lcom/odinnet/servermonitor/ssh/channel/Channel;

    move-object v5, v0

    iget-object v5, v5, Lcom/odinnet/servermonitor/ssh/channel/Channel;->cm:Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/channel/RemoteX11AcceptThread;->c:Lcom/odinnet/servermonitor/ssh/channel/Channel;

    move-object v6, v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IOException in X11 proxy code ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v25 .. v25}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v7, v8}, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->closeChannel(Lcom/odinnet/servermonitor/ssh/channel/Channel;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 232
    :goto_0
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/channel/RemoteX11AcceptThread;->s:Ljava/net/Socket;

    move-object v5, v0

    if-eqz v5, :cond_0

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/channel/RemoteX11AcceptThread;->s:Ljava/net/Socket;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 239
    .end local v25    # "e":Ljava/io/IOException;
    :cond_0
    :goto_1
    return-void

    .line 86
    .restart local v8    # "remote_is":Ljava/io/InputStream;
    .restart local v15    # "remote_os":Ljava/io/OutputStream;
    .restart local v27    # "header":[B
    :cond_1
    const/4 v5, 0x0

    :try_start_3
    aget-byte v5, v27, v5

    const/16 v6, 0x42

    if-eq v5, v6, :cond_2

    const/4 v5, 0x0

    aget-byte v5, v27, v5

    const/16 v6, 0x6c

    if-eq v5, v6, :cond_2

    .line 87
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Unknown endian format in X11 message!"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 91
    :cond_2
    const/4 v5, 0x0

    aget-byte v5, v27, v5

    const/16 v6, 0x42

    if-ne v5, v6, :cond_3

    const/4 v5, 0x0

    move/from16 v30, v5

    .line 95
    .local v30, "idxMSB":I
    :goto_2
    const/4 v5, 0x6

    move v0, v5

    new-array v0, v0, [B

    move-object/from16 v23, v0

    .line 97
    .local v23, "auth_buff":[B
    move-object v0, v8

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, 0x6

    if-eq v5, v6, :cond_4

    .line 98
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Unexpected EOF on X11 startup!"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 91
    .end local v23    # "auth_buff":[B
    .end local v30    # "idxMSB":I
    :cond_3
    const/4 v5, 0x1

    move/from16 v30, v5

    goto :goto_2

    .line 100
    .restart local v23    # "auth_buff":[B
    .restart local v30    # "idxMSB":I
    :cond_4
    aget-byte v5, v23, v30

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    const/4 v6, 0x1

    sub-int v6, v6, v30

    aget-byte v6, v23, v6

    and-int/lit16 v6, v6, 0xff

    or-int v21, v5, v6

    .line 101
    .local v21, "authProtocolNameLength":I
    add-int/lit8 v5, v30, 0x2

    aget-byte v5, v23, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    const/4 v6, 0x3

    sub-int v6, v6, v30

    aget-byte v6, v23, v6

    and-int/lit16 v6, v6, 0xff

    or-int v18, v5, v6

    .line 103
    .local v18, "authProtocolDataLength":I
    const/16 v5, 0x100

    move/from16 v0, v21

    move v1, v5

    if-gt v0, v1, :cond_5

    const/16 v5, 0x100

    move/from16 v0, v18

    move v1, v5

    if-le v0, v1, :cond_6

    .line 104
    :cond_5
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Buggy X11 authorization data"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 106
    :cond_6
    const/4 v5, 0x4

    rem-int/lit8 v6, v21, 0x4

    sub-int/2addr v5, v6

    rem-int/lit8 v22, v5, 0x4

    .line 107
    .local v22, "authProtocolNamePadding":I
    const/4 v5, 0x4

    rem-int/lit8 v6, v18, 0x4

    sub-int/2addr v5, v6

    rem-int/lit8 v19, v5, 0x4

    .line 109
    .local v19, "authProtocolDataPadding":I
    move/from16 v0, v21

    new-array v0, v0, [B

    move-object/from16 v20, v0

    .line 110
    .local v20, "authProtocolName":[B
    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v17, v0

    .line 112
    .local v17, "authProtocolData":[B
    const/4 v5, 0x4

    move v0, v5

    new-array v0, v0, [B

    move-object/from16 v31, v0

    .line 114
    .local v31, "paddingBuffer":[B
    move-object v0, v8

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v5

    move v0, v5

    move/from16 v1, v21

    if-eq v0, v1, :cond_7

    .line 115
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Unexpected EOF on X11 startup! (authProtocolName)"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 117
    :cond_7
    const/4 v5, 0x0

    move-object v0, v8

    move-object/from16 v1, v31

    move v2, v5

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    move v0, v5

    move/from16 v1, v22

    if-eq v0, v1, :cond_8

    .line 118
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Unexpected EOF on X11 startup! (authProtocolNamePadding)"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 120
    :cond_8
    move-object v0, v8

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v5

    move v0, v5

    move/from16 v1, v18

    if-eq v0, v1, :cond_9

    .line 121
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Unexpected EOF on X11 startup! (authProtocolData)"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 123
    :cond_9
    const/4 v5, 0x0

    move-object v0, v8

    move-object/from16 v1, v31

    move v2, v5

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    move v0, v5

    move/from16 v1, v19

    if-eq v0, v1, :cond_a

    .line 124
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Unexpected EOF on X11 startup! (authProtocolDataPadding)"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 126
    :cond_a
    const-string v5, "MIT-MAGIC-COOKIE-1"

    new-instance v6, Ljava/lang/String;

    const-string v7, "ISO-8859-1"

    move-object v0, v6

    move-object/from16 v1, v20

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 127
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Unknown X11 authorization protocol!"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 129
    :cond_b
    const/16 v5, 0x10

    move/from16 v0, v18

    move v1, v5

    if-eq v0, v1, :cond_c

    .line 130
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Wrong data length for X11 authorization data!"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 132
    :cond_c
    new-instance v33, Ljava/lang/StringBuffer;

    const/16 v5, 0x20

    move-object/from16 v0, v33

    move v1, v5

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 133
    .local v33, "tmp":Ljava/lang/StringBuffer;
    const/16 v29, 0x0

    .local v29, "i":I
    :goto_3
    move-object/from16 v0, v17

    array-length v0, v0

    move v5, v0

    move/from16 v0, v29

    move v1, v5

    if-ge v0, v1, :cond_e

    .line 135
    aget-byte v5, v17, v29

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v24

    .line 136
    .local v24, "digit2":Ljava/lang/String;
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_d

    move-object/from16 v5, v24

    :goto_4
    move-object/from16 v0, v33

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    add-int/lit8 v29, v29, 0x1

    goto :goto_3

    .line 136
    :cond_d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    .line 138
    .end local v24    # "digit2":Ljava/lang/String;
    :cond_e
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v28

    .line 144
    .local v28, "hexEncodedFakeCookie":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/channel/RemoteX11AcceptThread;->c:Lcom/odinnet/servermonitor/ssh/channel/Channel;

    move-object v5, v0

    monitor-enter v5
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 147
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/channel/RemoteX11AcceptThread;->c:Lcom/odinnet/servermonitor/ssh/channel/Channel;

    move-object v6, v0

    move-object/from16 v0, v28

    move-object v1, v6

    iput-object v0, v1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->hexX11FakeCookie:Ljava/lang/String;

    .line 148
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 152
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/channel/RemoteX11AcceptThread;->c:Lcom/odinnet/servermonitor/ssh/channel/Channel;

    move-object v5, v0

    iget-object v5, v5, Lcom/odinnet/servermonitor/ssh/channel/Channel;->cm:Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;

    move-object v0, v5

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->checkX11Cookie(Ljava/lang/String;)Lcom/odinnet/servermonitor/ssh/channel/X11ServerData;

    move-result-object v32

    .line 154
    .local v32, "sd":Lcom/odinnet/servermonitor/ssh/channel/X11ServerData;
    if-nez v32, :cond_f

    .line 155
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Invalid X11 cookie received."

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 148
    .end local v32    # "sd":Lcom/odinnet/servermonitor/ssh/channel/X11ServerData;
    :catchall_0
    move-exception v6

    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v6

    .line 162
    .restart local v32    # "sd":Lcom/odinnet/servermonitor/ssh/channel/X11ServerData;
    :cond_f
    new-instance v5, Ljava/net/Socket;

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/channel/X11ServerData;->hostname:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/odinnet/servermonitor/ssh/channel/X11ServerData;->port:I

    move v7, v0

    invoke-direct {v5, v6, v7}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/odinnet/servermonitor/ssh/channel/RemoteX11AcceptThread;->s:Ljava/net/Socket;

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/channel/RemoteX11AcceptThread;->s:Ljava/net/Socket;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    .line 165
    .local v9, "x11_os":Ljava/io/OutputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/channel/RemoteX11AcceptThread;->s:Ljava/net/Socket;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v14

    .line 169
    .local v14, "x11_is":Ljava/io/InputStream;
    move-object v0, v9

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 171
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/channel/X11ServerData;->x11_magic_cookie:[B

    move-object v5, v0

    if-nez v5, :cond_10

    .line 173
    const/4 v5, 0x6

    move v0, v5

    new-array v0, v0, [B

    move-object/from16 v26, v0

    .line 175
    .local v26, "emptyAuthData":[B
    move-object v0, v9

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 190
    .end local v26    # "emptyAuthData":[B
    :goto_5
    invoke-virtual {v9}, Ljava/io/OutputStream;->flush()V

    .line 194
    new-instance v4, Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/channel/RemoteX11AcceptThread;->c:Lcom/odinnet/servermonitor/ssh/channel/Channel;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v10, "RemoteToX11"

    invoke-direct/range {v4 .. v10}, Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;-><init>(Lcom/odinnet/servermonitor/ssh/channel/Channel;Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;Ljava/net/Socket;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 195
    .local v4, "r2l":Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;
    new-instance v10, Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/channel/RemoteX11AcceptThread;->c:Lcom/odinnet/servermonitor/ssh/channel/Channel;

    move-object v11, v0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string v16, "X11ToRemote"

    invoke-direct/range {v10 .. v16}, Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;-><init>(Lcom/odinnet/servermonitor/ssh/channel/Channel;Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;Ljava/net/Socket;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 199
    .local v10, "l2r":Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;->setDaemon(Z)V

    .line 200
    invoke-virtual {v4}, Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;->start()V

    .line 201
    invoke-virtual {v10}, Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;->run()V

    .line 203
    :goto_6
    invoke-virtual {v4}, Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;->isAlive()Z
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    move-result v5

    if-eqz v5, :cond_12

    .line 207
    :try_start_8
    invoke-virtual {v4}, Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;->join()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_6

    .line 209
    :catch_1
    move-exception v5

    goto :goto_6

    .line 179
    .end local v4    # "r2l":Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;
    .end local v10    # "l2r":Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;
    :cond_10
    :try_start_9
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/channel/X11ServerData;->x11_magic_cookie:[B

    move-object v5, v0

    array-length v5, v5

    const/16 v6, 0x10

    if-eq v5, v6, :cond_11

    .line 180
    new-instance v5, Ljava/io/IOException;

    const-string v6, "The real X11 cookie has an invalid length!"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 183
    :cond_11
    move-object v0, v9

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 184
    move-object v0, v9

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 185
    const/4 v5, 0x0

    move-object v0, v9

    move-object/from16 v1, v31

    move v2, v5

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 186
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/channel/X11ServerData;->x11_magic_cookie:[B

    move-object v5, v0

    invoke-virtual {v9, v5}, Ljava/io/OutputStream;->write([B)V

    .line 187
    const/4 v5, 0x0

    move-object v0, v9

    move-object/from16 v1, v31

    move v2, v5

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_5

    .line 216
    .restart local v4    # "r2l":Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;
    .restart local v10    # "l2r":Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/channel/RemoteX11AcceptThread;->c:Lcom/odinnet/servermonitor/ssh/channel/Channel;

    move-object v5, v0

    iget-object v5, v5, Lcom/odinnet/servermonitor/ssh/channel/Channel;->cm:Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/channel/RemoteX11AcceptThread;->c:Lcom/odinnet/servermonitor/ssh/channel/Channel;

    move-object v6, v0

    const-string v7, "EOF on both X11 streams reached."

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v7, v8}, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->closeChannel(Lcom/odinnet/servermonitor/ssh/channel/Channel;Ljava/lang/String;Z)V

    .line 217
    .end local v8    # "remote_is":Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/channel/RemoteX11AcceptThread;->s:Ljava/net/Socket;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/net/Socket;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_1

    .line 235
    .end local v4    # "r2l":Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;
    .end local v9    # "x11_os":Ljava/io/OutputStream;
    .end local v10    # "l2r":Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;
    .end local v14    # "x11_is":Ljava/io/InputStream;
    .end local v15    # "remote_os":Ljava/io/OutputStream;
    .end local v17    # "authProtocolData":[B
    .end local v18    # "authProtocolDataLength":I
    .end local v19    # "authProtocolDataPadding":I
    .end local v20    # "authProtocolName":[B
    .end local v21    # "authProtocolNameLength":I
    .end local v22    # "authProtocolNamePadding":I
    .end local v23    # "auth_buff":[B
    .end local v27    # "header":[B
    .end local v28    # "hexEncodedFakeCookie":Ljava/lang/String;
    .end local v29    # "i":I
    .end local v30    # "idxMSB":I
    .end local v31    # "paddingBuffer":[B
    .end local v32    # "sd":Lcom/odinnet/servermonitor/ssh/channel/X11ServerData;
    .end local v33    # "tmp":Ljava/lang/StringBuffer;
    .restart local v25    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v5

    goto/16 :goto_1

    .line 227
    :catch_3
    move-exception v5

    goto/16 :goto_0
.end method
