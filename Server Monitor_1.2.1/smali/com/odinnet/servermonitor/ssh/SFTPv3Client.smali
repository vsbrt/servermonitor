.class public Lcom/odinnet/servermonitor/ssh/SFTPv3Client;
.super Ljava/lang/Object;
.source "SFTPv3Client.java"


# instance fields
.field charsetName:Ljava/lang/String;

.field final conn:Lcom/odinnet/servermonitor/ssh/Connection;

.field final debug:Ljava/io/PrintStream;

.field flag_closed:Z

.field is:Ljava/io/InputStream;

.field next_request_id:I

.field os:Ljava/io/OutputStream;

.field protocol_version:I

.field server_extensions:Ljava/util/HashMap;

.field final sess:Lcom/odinnet/servermonitor/ssh/Session;


# direct methods
.method public constructor <init>(Lcom/odinnet/servermonitor/ssh/Connection;)V
    .locals 1
    .param p1, "conn"    # Lcom/odinnet/servermonitor/ssh/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;-><init>(Lcom/odinnet/servermonitor/ssh/Connection;Ljava/io/PrintStream;)V

    .line 121
    return-void
.end method

.method public constructor <init>(Lcom/odinnet/servermonitor/ssh/Connection;Ljava/io/PrintStream;)V
    .locals 3
    .param p1, "conn"    # Lcom/odinnet/servermonitor/ssh/Connection;
    .param p2, "debug"    # Ljava/io/PrintStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-boolean v0, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->flag_closed:Z

    .line 72
    iput v0, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->protocol_version:I

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->server_extensions:Ljava/util/HashMap;

    .line 75
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->next_request_id:I

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->charsetName:Ljava/lang/String;

    .line 91
    if-nez p1, :cond_0

    .line 92
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot accept null argument!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_0
    iput-object p1, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->conn:Lcom/odinnet/servermonitor/ssh/Connection;

    .line 95
    iput-object p2, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->debug:Ljava/io/PrintStream;

    .line 97
    if-eqz p2, :cond_1

    .line 98
    const-string v0, "Opening session and starting SFTP subsystem."

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 100
    :cond_1
    invoke-virtual {p1}, Lcom/odinnet/servermonitor/ssh/Connection;->openSession()Lcom/odinnet/servermonitor/ssh/Session;

    move-result-object v0

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->sess:Lcom/odinnet/servermonitor/ssh/Session;

    .line 101
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->sess:Lcom/odinnet/servermonitor/ssh/Session;

    const-string v1, "sftp"

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/Session;->startSubSystem(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->sess:Lcom/odinnet/servermonitor/ssh/Session;

    invoke-virtual {v0}, Lcom/odinnet/servermonitor/ssh/Session;->getStdout()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->is:Ljava/io/InputStream;

    .line 104
    new-instance v0, Ljava/io/BufferedOutputStream;

    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->sess:Lcom/odinnet/servermonitor/ssh/Session;

    invoke-virtual {v1}, Lcom/odinnet/servermonitor/ssh/Session;->getStdin()Ljava/io/OutputStream;

    move-result-object v1

    const/16 v2, 0x800

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->os:Ljava/io/OutputStream;

    .line 106
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->is:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->os:Ljava/io/OutputStream;

    if-nez v0, :cond_3

    .line 107
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "There is a problem with the streams of the underlying channel."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_3
    invoke-direct {p0}, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->init()V

    .line 110
    return-void
.end method

.method private final checkHandleValidAndOpen(Lcom/odinnet/servermonitor/ssh/SFTPv3FileHandle;)V
    .locals 2
    .param p1, "handle"    # Lcom/odinnet/servermonitor/ssh/SFTPv3FileHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 175
    iget-object v0, p1, Lcom/odinnet/servermonitor/ssh/SFTPv3FileHandle;->client:Lcom/odinnet/servermonitor/ssh/SFTPv3Client;

    if-eq v0, p0, :cond_0

    .line 176
    new-instance v0, Ljava/io/IOException;

    const-string v1, "The file handle was created with another SFTPv3FileHandle instance."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_0
    iget-boolean v0, p1, Lcom/odinnet/servermonitor/ssh/SFTPv3FileHandle;->isClosed:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 179
    new-instance v0, Ljava/io/IOException;

    const-string v1, "The file handle is closed."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_1
    return-void
.end method

.method private final closeHandle([B)V
    .locals 4
    .param p1, "handle"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 265
    invoke-direct {p0}, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->generateNextRequestID()I

    move-result v0

    .line 267
    .local v0, "req_id":I
    new-instance v1, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;

    invoke-direct {v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;-><init>()V

    .line 268
    .local v1, "tw":Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;
    const/4 v2, 0x0

    array-length v3, p1

    invoke-virtual {v1, p1, v2, v3}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeString([BII)V

    .line 270
    const/4 v2, 0x4

    invoke-virtual {v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->getBytes()[B

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->sendMessage(II[B)V

    .line 272
    invoke-direct {p0, v0}, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->expectStatusOKMessage(I)V

    .line 273
    return-void
.end method

.method private createAttrs(Lcom/odinnet/servermonitor/ssh/SFTPv3FileAttributes;)[B
    .locals 4
    .param p1, "attr"    # Lcom/odinnet/servermonitor/ssh/SFTPv3FileAttributes;

    .prologue
    .line 1112
    new-instance v1, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;

    invoke-direct {v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;-><init>()V

    .line 1114
    .local v1, "tw":Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;
    const/4 v0, 0x0

    .line 1116
    .local v0, "attrFlags":I
    if-nez p1, :cond_1

    .line 1118
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeUINT32(I)V

    .line 1155
    :cond_0
    :goto_0
    invoke-virtual {v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->getBytes()[B

    move-result-object v2

    return-object v2

    .line 1122
    :cond_1
    iget-object v2, p1, Lcom/odinnet/servermonitor/ssh/SFTPv3FileAttributes;->size:Ljava/lang/Long;

    if-eqz v2, :cond_2

    .line 1123
    or-int/lit8 v0, v0, 0x1

    .line 1125
    :cond_2
    iget-object v2, p1, Lcom/odinnet/servermonitor/ssh/SFTPv3FileAttributes;->uid:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    iget-object v2, p1, Lcom/odinnet/servermonitor/ssh/SFTPv3FileAttributes;->gid:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    .line 1126
    or-int/lit8 v0, v0, 0x2

    .line 1128
    :cond_3
    iget-object v2, p1, Lcom/odinnet/servermonitor/ssh/SFTPv3FileAttributes;->permissions:Ljava/lang/Integer;

    if-eqz v2, :cond_4

    .line 1129
    or-int/lit8 v0, v0, 0x4

    .line 1131
    :cond_4
    iget-object v2, p1, Lcom/odinnet/servermonitor/ssh/SFTPv3FileAttributes;->atime:Ljava/lang/Long;

    if-eqz v2, :cond_5

    iget-object v2, p1, Lcom/odinnet/servermonitor/ssh/SFTPv3FileAttributes;->mtime:Ljava/lang/Long;

    if-eqz v2, :cond_5

    .line 1132
    or-int/lit8 v0, v0, 0x8

    .line 1134
    :cond_5
    invoke-virtual {v1, v0}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeUINT32(I)V

    .line 1136
    iget-object v2, p1, Lcom/odinnet/servermonitor/ssh/SFTPv3FileAttributes;->size:Ljava/lang/Long;

    if-eqz v2, :cond_6

    .line 1137
    iget-object v2, p1, Lcom/odinnet/servermonitor/ssh/SFTPv3FileAttributes;->size:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeUINT64(J)V

    .line 1139
    :cond_6
    iget-object v2, p1, Lcom/odinnet/servermonitor/ssh/SFTPv3FileAttributes;->uid:Ljava/lang/Integer;

    if-eqz v2, :cond_7

    iget-object v2, p1, Lcom/odinnet/servermonitor/ssh/SFTPv3FileAttributes;->gid:Ljava/lang/Integer;

    if-eqz v2, :cond_7

    .line 1141
    iget-object v2, p1, Lcom/odinnet/servermonitor/ssh/SFTPv3FileAttributes;->uid:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeUINT32(I)V

    .line 1142
    iget-object v2, p1, Lcom/odinnet/servermonitor/ssh/SFTPv3FileAttributes;->gid:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeUINT32(I)V

    .line 1145
    :cond_7
    iget-object v2, p1, Lcom/odinnet/servermonitor/ssh/SFTPv3FileAttributes;->permissions:Ljava/lang/Integer;

    if-eqz v2, :cond_8

    .line 1146
    iget-object v2, p1, Lcom/odinnet/servermonitor/ssh/SFTPv3FileAttributes;->permissions:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeUINT32(I)V

    .line 1148
    :cond_8
    iget-object v2, p1, Lcom/odinnet/servermonitor/ssh/SFTPv3FileAttributes;->atime:Ljava/lang/Long;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/odinnet/servermonitor/ssh/SFTPv3FileAttributes;->mtime:Ljava/lang/Long;

    if-eqz v2, :cond_0

    .line 1150
    iget-object v2, p1, Lcom/odinnet/servermonitor/ssh/SFTPv3FileAttributes;->atime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeUINT32(I)V

    .line 1151
    iget-object v2, p1, Lcom/odinnet/servermonitor/ssh/SFTPv3FileAttributes;->mtime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeUINT32(I)V

    goto :goto_0
.end method

.method private final expandString([BII)Ljava/lang/String;
    .locals 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 828
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 830
    .local v2, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_1

    .line 832
    add-int v3, p2, v1

    aget-byte v3, p1, v3

    and-int/lit16 v0, v3, 0xff

    .line 834
    .local v0, "c":I
    const/16 v3, 0x20

    if-lt v0, v3, :cond_0

    const/16 v3, 0x7e

    if-gt v0, v3, :cond_0

    .line 836
    int-to-char v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 830
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 840
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "{0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 844
    .end local v0    # "c":I
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private expectStatusOKMessage(I)V
    .locals 8
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 532
    const v5, 0x84d0

    invoke-direct {p0, v5}, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->receiveMessage(I)[B

    move-result-object v2

    .line 534
    .local v2, "resp":[B
    iget-object v5, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz v5, :cond_0

    .line 536
    iget-object v5, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->debug:Ljava/io/PrintStream;

    const-string v6, "Got REPLY."

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 537
    iget-object v5, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->debug:Ljava/io/PrintStream;

    invoke-virtual {v5}, Ljava/io/PrintStream;->flush()V

    .line 540
    :cond_0
    new-instance v4, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;

    invoke-direct {v4, v2}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;-><init>([B)V

    .line 542
    .local v4, "tr":Lcom/odinnet/servermonitor/ssh/packets/TypesReader;
    invoke-virtual {v4}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readByte()I

    move-result v3

    .line 544
    .local v3, "t":I
    invoke-virtual {v4}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readUINT32()I

    move-result v1

    .line 545
    .local v1, "rep_id":I
    if-eq v1, p1, :cond_1

    .line 546
    new-instance v5, Ljava/io/IOException;

    const-string v6, "The server sent an invalid id field."

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 548
    :cond_1
    const/16 v5, 0x65

    if-eq v3, v5, :cond_2

    .line 549
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The SFTP server sent an unexpected packet type ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 551
    :cond_2
    invoke-virtual {v4}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readUINT32()I

    move-result v0

    .line 553
    .local v0, "errorCode":I
    if-nez v0, :cond_3

    .line 554
    return-void

    .line 556
    :cond_3
    new-instance v5, Lcom/odinnet/servermonitor/ssh/SFTPException;

    invoke-virtual {v4}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Lcom/odinnet/servermonitor/ssh/SFTPException;-><init>(Ljava/lang/String;I)V

    throw v5
.end method

.method private final generateNextRequestID()I
    .locals 2

    .prologue
    .line 257
    monitor-enter p0

    .line 259
    :try_start_0
    iget v0, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->next_request_id:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->next_request_id:I

    monitor-exit p0

    return v0

    .line 260
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private init()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x0

    .line 851
    const/4 v0, 0x3

    .line 853
    .local v0, "client_version":I
    iget-object v6, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz v6, :cond_0

    .line 854
    iget-object v6, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->debug:Ljava/io/PrintStream;

    const-string v7, "Sending SSH_FXP_INIT (3)..."

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 856
    :cond_0
    new-instance v3, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;

    invoke-direct {v3}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;-><init>()V

    .line 857
    .local v3, "tw":Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;
    invoke-virtual {v3, v10}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeUINT32(I)V

    .line 858
    const/4 v6, 0x1

    invoke-virtual {v3}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->getBytes()[B

    move-result-object v7

    invoke-direct {p0, v6, v9, v7}, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->sendMessage(II[B)V

    .line 862
    iget-object v6, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz v6, :cond_1

    .line 863
    iget-object v6, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->debug:Ljava/io/PrintStream;

    const-string v7, "Waiting for SSH_FXP_VERSION..."

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 865
    :cond_1
    new-instance v2, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;

    const v6, 0x84d0

    invoke-direct {p0, v6}, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->receiveMessage(I)[B

    move-result-object v6

    invoke-direct {v2, v6}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;-><init>([B)V

    .line 867
    .local v2, "tr":Lcom/odinnet/servermonitor/ssh/packets/TypesReader;
    invoke-virtual {v2}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readByte()I

    move-result v4

    .line 869
    .local v4, "type":I
    const/4 v6, 0x2

    if-eq v4, v6, :cond_2

    .line 871
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The server did not send a SSH_FXP_VERSION packet (got "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 874
    :cond_2
    invoke-virtual {v2}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readUINT32()I

    move-result v6

    iput v6, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->protocol_version:I

    .line 876
    iget-object v6, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz v6, :cond_3

    .line 877
    iget-object v6, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->debug:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SSH_FXP_VERSION: protocol_version = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->protocol_version:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 879
    :cond_3
    iget v6, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->protocol_version:I

    if-eq v6, v10, :cond_4

    .line 880
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Server version "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->protocol_version:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is currently not supported"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 884
    :cond_4
    :goto_0
    invoke-virtual {v2}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->remain()I

    move-result v6

    if-eqz v6, :cond_5

    .line 886
    invoke-virtual {v2}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object v1

    .line 887
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readByteString()[B

    move-result-object v5

    .line 888
    .local v5, "value":[B
    iget-object v6, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->server_extensions:Ljava/util/HashMap;

    invoke-virtual {v6, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 890
    iget-object v6, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz v6, :cond_4

    .line 891
    iget-object v6, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->debug:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SSH_FXP_VERSION: extension: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " = \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v5

    invoke-direct {p0, v5, v9, v8}, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->expandString([BII)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 894
    .end local v1    # "name":Ljava/lang/String;
    .end local v5    # "value":[B
    :cond_5
    return-void
.end method

.method private final openDirectory(Ljava/lang/String;)[B
    .locals 12
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 782
    invoke-direct {p0}, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->generateNextRequestID()I

    move-result v4

    .line 784
    .local v4, "req_id":I
    new-instance v8, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;

    invoke-direct {v8}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;-><init>()V

    .line 785
    .local v8, "tw":Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;
    iget-object v9, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->charsetName:Ljava/lang/String;

    invoke-virtual {v8, p1, v9}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    iget-object v9, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz v9, :cond_0

    .line 789
    iget-object v9, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->debug:Ljava/io/PrintStream;

    const-string v10, "Sending SSH_FXP_OPENDIR..."

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 790
    iget-object v9, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->debug:Ljava/io/PrintStream;

    invoke-virtual {v9}, Ljava/io/PrintStream;->flush()V

    .line 793
    :cond_0
    const/16 v9, 0xb

    invoke-virtual {v8}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->getBytes()[B

    move-result-object v10

    invoke-direct {p0, v9, v4, v10}, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->sendMessage(II[B)V

    .line 795
    const v9, 0x84d0

    invoke-direct {p0, v9}, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->receiveMessage(I)[B

    move-result-object v5

    .line 797
    .local v5, "resp":[B
    new-instance v7, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;

    invoke-direct {v7, v5}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;-><init>([B)V

    .line 799
    .local v7, "tr":Lcom/odinnet/servermonitor/ssh/packets/TypesReader;
    invoke-virtual {v7}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readByte()I

    move-result v6

    .line 801
    .local v6, "t":I
    invoke-virtual {v7}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readUINT32()I

    move-result v3

    .line 802
    .local v3, "rep_id":I
    if-eq v3, v4, :cond_1

    .line 803
    new-instance v9, Ljava/io/IOException;

    const-string v10, "The server sent an invalid id field."

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 805
    :cond_1
    const/16 v9, 0x66

    if-ne v6, v9, :cond_3

    .line 807
    iget-object v9, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz v9, :cond_2

    .line 809
    iget-object v9, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->debug:Ljava/io/PrintStream;

    const-string v10, "Got SSH_FXP_HANDLE."

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 810
    iget-object v9, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->debug:Ljava/io/PrintStream;

    invoke-virtual {v9}, Ljava/io/PrintStream;->flush()V

    .line 813
    :cond_2
    invoke-virtual {v7}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readByteString()[B

    move-result-object v2

    .line 814
    .local v2, "handle":[B
    return-object v2

    .line 817
    .end local v2    # "handle":[B
    :cond_3
    const/16 v9, 0x65

    if-eq v6, v9, :cond_4

    .line 818
    new-instance v9, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "The SFTP server sent an unexpected packet type ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 820
    :cond_4
    invoke-virtual {v7}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readUINT32()I

    move-result v0

    .line 821
    .local v0, "errorCode":I
    invoke-virtual {v7}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object v1

    .line 823
    .local v1, "errorMessage":Ljava/lang/String;
    new-instance v9, Lcom/odinnet/servermonitor/ssh/SFTPException;

    invoke-direct {v9, v1, v0}, Lcom/odinnet/servermonitor/ssh/SFTPException;-><init>(Ljava/lang/String;I)V

    throw v9
.end method

.method private openFile(Ljava/lang/String;ILcom/odinnet/servermonitor/ssh/SFTPv3FileAttributes;)Lcom/odinnet/servermonitor/ssh/SFTPv3FileHandle;
    .locals 11
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "attr"    # Lcom/odinnet/servermonitor/ssh/SFTPv3FileAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1160
    invoke-direct {p0}, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->generateNextRequestID()I

    move-result v3

    .line 1162
    .local v3, "req_id":I
    new-instance v7, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;

    invoke-direct {v7}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;-><init>()V

    .line 1163
    .local v7, "tw":Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;
    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->charsetName:Ljava/lang/String;

    invoke-virtual {v7, p1, v8}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1164
    invoke-virtual {v7, p2}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeUINT32(I)V

    .line 1165
    invoke-direct {p0, p3}, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->createAttrs(Lcom/odinnet/servermonitor/ssh/SFTPv3FileAttributes;)[B

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeBytes([B)V

    .line 1167
    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz v8, :cond_0

    .line 1169
    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->debug:Ljava/io/PrintStream;

    const-string v9, "Sending SSH_FXP_OPEN..."

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1170
    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->debug:Ljava/io/PrintStream;

    invoke-virtual {v8}, Ljava/io/PrintStream;->flush()V

    .line 1173
    :cond_0
    const/4 v8, 0x3

    invoke-virtual {v7}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->getBytes()[B

    move-result-object v9

    invoke-direct {p0, v8, v3, v9}, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->sendMessage(II[B)V

    .line 1175
    const v8, 0x84d0

    invoke-direct {p0, v8}, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->receiveMessage(I)[B

    move-result-object v4

    .line 1177
    .local v4, "resp":[B
    new-instance v6, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;

    invoke-direct {v6, v4}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;-><init>([B)V

    .line 1179
    .local v6, "tr":Lcom/odinnet/servermonitor/ssh/packets/TypesReader;
    invoke-virtual {v6}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readByte()I

    move-result v5

    .line 1181
    .local v5, "t":I
    invoke-virtual {v6}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readUINT32()I

    move-result v2

    .line 1182
    .local v2, "rep_id":I
    if-eq v2, v3, :cond_1

    .line 1183
    new-instance v8, Ljava/io/IOException;

    const-string v9, "The server sent an invalid id field."

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1185
    :cond_1
    const/16 v8, 0x66

    if-ne v5, v8, :cond_3

    .line 1187
    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz v8, :cond_2

    .line 1189
    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->debug:Ljava/io/PrintStream;

    const-string v9, "Got SSH_FXP_HANDLE."

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1190
    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->debug:Ljava/io/PrintStream;

    invoke-virtual {v8}, Ljava/io/PrintStream;->flush()V

    .line 1193
    :cond_2
    new-instance v8, Lcom/odinnet/servermonitor/ssh/SFTPv3FileHandle;

    invoke-virtual {v6}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readByteString()[B

    move-result-object v9

    invoke-direct {v8, p0, v9}, Lcom/odinnet/servermonitor/ssh/SFTPv3FileHandle;-><init>(Lcom/odinnet/servermonitor/ssh/SFTPv3Client;[B)V

    return-object v8

    .line 1196
    :cond_3
    const/16 v8, 0x65

    if-eq v5, v8, :cond_4

    .line 1197
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "The SFTP server sent an unexpected packet type ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1199
    :cond_4
    invoke-virtual {v6}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readUINT32()I

    move-result v0

    .line 1200
    .local v0, "errorCode":I
    invoke-virtual {v6}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1202
    .local v1, "errorMessage":Ljava/lang/String;
    new-instance v8, Lcom/odinnet/servermonitor/ssh/SFTPException;

    invoke-direct {v8, v1, v0}, Lcom/odinnet/servermonitor/ssh/SFTPException;-><init>(Ljava/lang/String;I)V

    throw v8
.end method

.method private readAttrs(Lcom/odinnet/servermonitor/ssh/packets/TypesReader;)Lcom/odinnet/servermonitor/ssh/SFTPv3FileAttributes;
    .locals 8
    .param p1, "tr"    # Lcom/odinnet/servermonitor/ssh/packets/TypesReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide v6, 0xffffffffL

    .line 292
    new-instance v1, Lcom/odinnet/servermonitor/ssh/SFTPv3FileAttributes;

    invoke-direct {v1}, Lcom/odinnet/servermonitor/ssh/SFTPv3FileAttributes;-><init>()V

    .line 294
    .local v1, "fa":Lcom/odinnet/servermonitor/ssh/SFTPv3FileAttributes;
    invoke-virtual {p1}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readUINT32()I

    move-result v2

    .line 296
    .local v2, "flags":I
    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_1

    .line 298
    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz v3, :cond_0

    .line 299
    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->debug:Ljava/io/PrintStream;

    const-string v4, "SSH_FILEXFER_ATTR_SIZE"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 300
    :cond_0
    new-instance v3, Ljava/lang/Long;

    invoke-virtual {p1}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readUINT64()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/lang/Long;-><init>(J)V

    iput-object v3, v1, Lcom/odinnet/servermonitor/ssh/SFTPv3FileAttributes;->size:Ljava/lang/Long;

    .line 303
    :cond_1
    and-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_3

    .line 305
    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz v3, :cond_2

    .line 306
    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->debug:Ljava/io/PrintStream;

    const-string v4, "SSH_FILEXFER_ATTR_V3_UIDGID"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 307
    :cond_2
    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {p1}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readUINT32()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    iput-object v3, v1, Lcom/odinnet/servermonitor/ssh/SFTPv3FileAttributes;->uid:Ljava/lang/Integer;

    .line 308
    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {p1}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readUINT32()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    iput-object v3, v1, Lcom/odinnet/servermonitor/ssh/SFTPv3FileAttributes;->gid:Ljava/lang/Integer;

    .line 311
    :cond_3
    and-int/lit8 v3, v2, 0x4

    if-eqz v3, :cond_5

    .line 313
    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz v3, :cond_4

    .line 314
    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->debug:Ljava/io/PrintStream;

    const-string v4, "SSH_FILEXFER_ATTR_PERMISSIONS"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 315
    :cond_4
    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {p1}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readUINT32()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    iput-object v3, v1, Lcom/odinnet/servermonitor/ssh/SFTPv3FileAttributes;->permissions:Ljava/lang/Integer;

    .line 318
    :cond_5
    and-int/lit8 v3, v2, 0x8

    if-eqz v3, :cond_7

    .line 320
    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz v3, :cond_6

    .line 321
    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->debug:Ljava/io/PrintStream;

    const-string v4, "SSH_FILEXFER_ATTR_V3_ACMODTIME"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 322
    :cond_6
    new-instance v3, Ljava/lang/Long;

    invoke-virtual {p1}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readUINT32()I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    invoke-direct {v3, v4, v5}, Ljava/lang/Long;-><init>(J)V

    iput-object v3, v1, Lcom/odinnet/servermonitor/ssh/SFTPv3FileAttributes;->atime:Ljava/lang/Long;

    .line 323
    new-instance v3, Ljava/lang/Long;

    invoke-virtual {p1}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readUINT32()I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    invoke-direct {v3, v4, v5}, Ljava/lang/Long;-><init>(J)V

    iput-object v3, v1, Lcom/odinnet/servermonitor/ssh/SFTPv3FileAttributes;->mtime:Ljava/lang/Long;

    .line 327
    :cond_7
    const/high16 v3, -0x80000000

    and-int/2addr v3, v2

    if-eqz v3, :cond_9

    .line 329
    invoke-virtual {p1}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readUINT32()I

    move-result v0

    .line 331
    .local v0, "count":I
    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz v3, :cond_8

    .line 332
    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->debug:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SSH_FILEXFER_ATTR_EXTENDED ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 336
    :cond_8
    :goto_0
    if-lez v0, :cond_9

    .line 338
    invoke-virtual {p1}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readByteString()[B

    .line 339
    invoke-virtual {p1}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readByteString()[B

    .line 340
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 344
    .end local v0    # "count":I
    :cond_9
    return-object v1
.end method

.method private final readBytes([BII)V
    .locals 3
    .param p1, "buff"    # [B
    .param p2, "pos"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 214
    :goto_0
    if-lez p3, :cond_3

    .line 216
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->is:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 217
    .local v0, "count":I
    if-gez v0, :cond_0

    .line 218
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unexpected end of sftp stream."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 219
    :cond_0
    if-eqz v0, :cond_1

    if-le v0, p3, :cond_2

    .line 220
    :cond_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Underlying stream implementation is bogus!"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 221
    :cond_2
    sub-int/2addr p3, v0

    .line 222
    add-int/2addr p2, v0

    .line 223
    goto :goto_0

    .line 224
    .end local v0    # "count":I
    :cond_3
    return-void
.end method

.method private final receiveMessage(I)[B
    .locals 6
    .param p1, "maxlen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v5, 0x0

    .line 239
    new-array v2, v3, [B

    .line 241
    .local v2, "msglen":[B
    invoke-direct {p0, v2, v5, v3}, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->readBytes([BII)V

    .line 243
    aget-byte v3, v2, v5

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    const/4 v4, 0x1

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    const/4 v4, 0x2

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    const/4 v4, 0x3

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    or-int v0, v3, v4

    .line 245
    .local v0, "len":I
    if-gt v0, p1, :cond_0

    if-gtz v0, :cond_1

    .line 246
    :cond_0
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal sftp packet len: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 248
    :cond_1
    new-array v1, v0, [B

    .line 250
    .local v1, "msg":[B
    invoke-direct {p0, v1, v5, v0}, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->readBytes([BII)V

    .line 252
    return-object v1
.end method

.method private final scanDirectory([B)Ljava/util/Vector;
    .locals 13
    .param p1, "handle"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 708
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 712
    .local v3, "files":Ljava/util/Vector;
    :cond_0
    invoke-direct {p0}, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->generateNextRequestID()I

    move-result v5

    .line 714
    .local v5, "req_id":I
    new-instance v9, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;

    invoke-direct {v9}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;-><init>()V

    .line 715
    .local v9, "tw":Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;
    const/4 v10, 0x0

    array-length v11, p1

    invoke-virtual {v9, p1, v10, v11}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeString([BII)V

    .line 717
    iget-object v10, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz v10, :cond_1

    .line 719
    iget-object v10, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->debug:Ljava/io/PrintStream;

    const-string v11, "Sending SSH_FXP_READDIR..."

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 720
    iget-object v10, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->debug:Ljava/io/PrintStream;

    invoke-virtual {v10}, Ljava/io/PrintStream;->flush()V

    .line 723
    :cond_1
    const/16 v10, 0xc

    invoke-virtual {v9}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->getBytes()[B

    move-result-object v11

    invoke-direct {p0, v10, v5, v11}, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->sendMessage(II[B)V

    .line 728
    const/high16 v10, 0x10000

    invoke-direct {p0, v10}, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->receiveMessage(I)[B

    move-result-object v6

    .line 730
    .local v6, "resp":[B
    iget-object v10, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz v10, :cond_2

    .line 732
    iget-object v10, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->debug:Ljava/io/PrintStream;

    const-string v11, "Got REPLY."

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 733
    iget-object v10, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->debug:Ljava/io/PrintStream;

    invoke-virtual {v10}, Ljava/io/PrintStream;->flush()V

    .line 736
    :cond_2
    new-instance v8, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;

    invoke-direct {v8, v6}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;-><init>([B)V

    .line 738
    .local v8, "tr":Lcom/odinnet/servermonitor/ssh/packets/TypesReader;
    invoke-virtual {v8}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readByte()I

    move-result v7

    .line 740
    .local v7, "t":I
    invoke-virtual {v8}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readUINT32()I

    move-result v4

    .line 741
    .local v4, "rep_id":I
    if-eq v4, v5, :cond_3

    .line 742
    new-instance v10, Ljava/io/IOException;

    const-string v11, "The server sent an invalid id field."

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 744
    :cond_3
    const/16 v10, 0x68

    if-ne v7, v10, :cond_6

    .line 746
    invoke-virtual {v8}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readUINT32()I

    move-result v0

    .line 748
    .local v0, "count":I
    iget-object v10, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz v10, :cond_4

    .line 749
    iget-object v10, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->debug:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Parsing "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " name entries..."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 751
    :cond_4
    :goto_0
    if-lez v0, :cond_0

    .line 753
    new-instance v1, Lcom/odinnet/servermonitor/ssh/SFTPv3DirectoryEntry;

    invoke-direct {v1}, Lcom/odinnet/servermonitor/ssh/SFTPv3DirectoryEntry;-><init>()V

    .line 755
    .local v1, "dirEnt":Lcom/odinnet/servermonitor/ssh/SFTPv3DirectoryEntry;
    iget-object v10, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->charsetName:Ljava/lang/String;

    invoke-virtual {v8, v10}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Lcom/odinnet/servermonitor/ssh/SFTPv3DirectoryEntry;->filename:Ljava/lang/String;

    .line 756
    iget-object v10, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->charsetName:Ljava/lang/String;

    invoke-virtual {v8, v10}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Lcom/odinnet/servermonitor/ssh/SFTPv3DirectoryEntry;->longEntry:Ljava/lang/String;

    .line 758
    invoke-direct {p0, v8}, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->readAttrs(Lcom/odinnet/servermonitor/ssh/packets/TypesReader;)Lcom/odinnet/servermonitor/ssh/SFTPv3FileAttributes;

    move-result-object v10

    iput-object v10, v1, Lcom/odinnet/servermonitor/ssh/SFTPv3DirectoryEntry;->attributes:Lcom/odinnet/servermonitor/ssh/SFTPv3FileAttributes;

    .line 759
    invoke-virtual {v3, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 761
    iget-object v10, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz v10, :cond_5

    .line 762
    iget-object v10, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->debug:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "File: \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v1, Lcom/odinnet/servermonitor/ssh/SFTPv3DirectoryEntry;->filename:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 763
    :cond_5
    add-int/lit8 v0, v0, -0x1

    .line 764
    goto :goto_0

    .line 768
    .end local v0    # "count":I
    .end local v1    # "dirEnt":Lcom/odinnet/servermonitor/ssh/SFTPv3DirectoryEntry;
    :cond_6
    const/16 v10, 0x65

    if-eq v7, v10, :cond_7

    .line 769
    new-instance v10, Ljava/io/IOException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "The SFTP server sent an unexpected packet type ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 771
    :cond_7
    invoke-virtual {v8}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readUINT32()I

    move-result v2

    .line 773
    .local v2, "errorCode":I
    const/4 v10, 0x1

    if-ne v2, v10, :cond_8

    .line 774
    return-object v3

    .line 776
    :cond_8
    new-instance v10, Lcom/odinnet/servermonitor/ssh/SFTPException;

    invoke-virtual {v8}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11, v2}, Lcom/odinnet/servermonitor/ssh/SFTPException;-><init>(Ljava/lang/String;I)V

    throw v10
.end method

.method private final sendMessage(II[B)V
    .locals 6
    .param p1, "type"    # I
    .param p2, "requestId"    # I
    .param p3, "msg"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 209
    const/4 v4, 0x0

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->sendMessage(II[BII)V

    .line 210
    return-void
.end method

.method private final sendMessage(II[BII)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "requestId"    # I
    .param p3, "msg"    # [B
    .param p4, "off"    # I
    .param p5, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 184
    add-int/lit8 v0, p5, 0x1

    .line 186
    .local v0, "msglen":I
    if-eq p1, v3, :cond_0

    .line 187
    add-int/lit8 v0, v0, 0x4

    .line 189
    :cond_0
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->os:Ljava/io/OutputStream;

    shr-int/lit8 v2, v0, 0x18

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 190
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->os:Ljava/io/OutputStream;

    shr-int/lit8 v2, v0, 0x10

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 191
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->os:Ljava/io/OutputStream;

    shr-int/lit8 v2, v0, 0x8

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 192
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->os:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 193
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->os:Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write(I)V

    .line 195
    if-eq p1, v3, :cond_1

    .line 197
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->os:Ljava/io/OutputStream;

    shr-int/lit8 v2, p2, 0x18

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 198
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->os:Ljava/io/OutputStream;

    shr-int/lit8 v2, p2, 0x10

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 199
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->os:Ljava/io/OutputStream;

    shr-int/lit8 v2, p2, 0x8

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 200
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->os:Ljava/io/OutputStream;

    invoke-virtual {v1, p2}, Ljava/io/OutputStream;->write(I)V

    .line 203
    :cond_1
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->os:Ljava/io/OutputStream;

    invoke-virtual {v1, p3, p4, p5}, Ljava/io/OutputStream;->write([BII)V

    .line 204
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->os:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 205
    return-void
.end method

.method private statBoth(Ljava/lang/String;I)Lcom/odinnet/servermonitor/ssh/SFTPv3FileAttributes;
    .locals 10
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "statMethod"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 402
    invoke-direct {p0}, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->generateNextRequestID()I

    move-result v2

    .line 404
    .local v2, "req_id":I
    new-instance v6, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;

    invoke-direct {v6}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;-><init>()V

    .line 405
    .local v6, "tw":Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;
    iget-object v7, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->charsetName:Ljava/lang/String;

    invoke-virtual {v6, p1, v7}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    iget-object v7, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz v7, :cond_0

    .line 409
    iget-object v7, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->debug:Ljava/io/PrintStream;

    const-string v8, "Sending SSH_FXP_STAT/SSH_FXP_LSTAT..."

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 410
    iget-object v7, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->debug:Ljava/io/PrintStream;

    invoke-virtual {v7}, Ljava/io/PrintStream;->flush()V

    .line 413
    :cond_0
    invoke-virtual {v6}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->getBytes()[B

    move-result-object v7

    invoke-direct {p0, p2, v2, v7}, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->sendMessage(II[B)V

    .line 415
    const v7, 0x84d0

    invoke-direct {p0, v7}, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->receiveMessage(I)[B

    move-result-object v3

    .line 417
    .local v3, "resp":[B
    iget-object v7, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz v7, :cond_1

    .line 419
    iget-object v7, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->debug:Ljava/io/PrintStream;

    const-string v8, "Got REPLY."

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 420
    iget-object v7, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->debug:Ljava/io/PrintStream;

    invoke-virtual {v7}, Ljava/io/PrintStream;->flush()V

    .line 423
    :cond_1
    new-instance v5, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;

    invoke-direct {v5, v3}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;-><init>([B)V

    .line 425
    .local v5, "tr":Lcom/odinnet/servermonitor/ssh/packets/TypesReader;
    invoke-virtual {v5}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readByte()I

    move-result v4

    .line 427
    .local v4, "t":I
    invoke-virtual {v5}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readUINT32()I

    move-result v1

    .line 428
    .local v1, "rep_id":I
    if-eq v1, v2, :cond_2

    .line 429
    new-instance v7, Ljava/io/IOException;

    const-string v8, "The server sent an invalid id field."

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 431
    :cond_2
    const/16 v7, 0x69

    if-ne v4, v7, :cond_3

    .line 433
    invoke-direct {p0, v5}, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->readAttrs(Lcom/odinnet/servermonitor/ssh/packets/TypesReader;)Lcom/odinnet/servermonitor/ssh/SFTPv3FileAttributes;

    move-result-object v7

    return-object v7

    .line 436
    :cond_3
    const/16 v7, 0x65

    if-eq v4, v7, :cond_4

    .line 437
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The SFTP server sent an unexpected packet type ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 439
    :cond_4
    invoke-virtual {v5}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readUINT32()I

    move-result v0

    .line 441
    .local v0, "errorCode":I
    new-instance v7, Lcom/odinnet/servermonitor/ssh/SFTPException;

    invoke-virtual {v5}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v0}, Lcom/odinnet/servermonitor/ssh/SFTPException;-><init>(Ljava/lang/String;I)V

    throw v7
.end method


# virtual methods
.method public canonicalPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 659
    invoke-direct {p0}, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->generateNextRequestID()I

    move-result v3

    .line 661
    .local v3, "req_id":I
    new-instance v7, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;

    invoke-direct {v7}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;-><init>()V

    .line 662
    .local v7, "tw":Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;
    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->charsetName:Ljava/lang/String;

    invoke-virtual {v7, p1, v8}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz v8, :cond_0

    .line 666
    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->debug:Ljava/io/PrintStream;

    const-string v9, "Sending SSH_FXP_REALPATH..."

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 667
    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->debug:Ljava/io/PrintStream;

    invoke-virtual {v8}, Ljava/io/PrintStream;->flush()V

    .line 670
    :cond_0
    const/16 v8, 0x10

    invoke-virtual {v7}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->getBytes()[B

    move-result-object v9

    invoke-direct {p0, v8, v3, v9}, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->sendMessage(II[B)V

    .line 672
    const v8, 0x84d0

    invoke-direct {p0, v8}, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->receiveMessage(I)[B

    move-result-object v4

    .line 674
    .local v4, "resp":[B
    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz v8, :cond_1

    .line 676
    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->debug:Ljava/io/PrintStream;

    const-string v9, "Got REPLY."

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 677
    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->debug:Ljava/io/PrintStream;

    invoke-virtual {v8}, Ljava/io/PrintStream;->flush()V

    .line 680
    :cond_1
    new-instance v6, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;

    invoke-direct {v6, v4}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;-><init>([B)V

    .line 682
    .local v6, "tr":Lcom/odinnet/servermonitor/ssh/packets/TypesReader;
    invoke-virtual {v6}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readByte()I

    move-result v5

    .line 684
    .local v5, "t":I
    invoke-virtual {v6}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readUINT32()I

    move-result v2

    .line 685
    .local v2, "rep_id":I
    if-eq v2, v3, :cond_2

    .line 686
    new-instance v8, Ljava/io/IOException;

    const-string v9, "The server sent an invalid id field."

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 688
    :cond_2
    const/16 v8, 0x68

    if-ne v5, v8, :cond_4

    .line 690
    invoke-virtual {v6}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readUINT32()I

    move-result v0

    .line 692
    .local v0, "count":I
    const/4 v8, 0x1

    if-eq v0, v8, :cond_3

    .line 693
    new-instance v8, Ljava/io/IOException;

    const-string v9, "The server sent an invalid SSH_FXP_NAME packet."

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 695
    :cond_3
    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->charsetName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 698
    .end local v0    # "count":I
    :cond_4
    const/16 v8, 0x65

    if-eq v5, v8, :cond_5

    .line 699
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "The SFTP server sent an unexpected packet type ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 701
    :cond_5
    invoke-virtual {v6}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readUINT32()I

    move-result v1

    .line 703
    .local v1, "errorCode":I
    new-instance v8, Lcom/odinnet/servermonitor/ssh/SFTPException;

    invoke-virtual {v6}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v1}, Lcom/odinnet/servermonitor/ssh/SFTPException;-><init>(Ljava/lang/String;I)V

    throw v8
.end method

.method public close()V
    .locals 1

    .prologue
    .line 918
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->sess:Lcom/odinnet/servermonitor/ssh/Session;

    invoke-virtual {v0}, Lcom/odinnet/servermonitor/ssh/Session;->close()V

    .line 919
    return-void
.end method

.method public closeFile(Lcom/odinnet/servermonitor/ssh/SFTPv3FileHandle;)V
    .locals 2
    .param p1, "handle"    # Lcom/odinnet/servermonitor/ssh/SFTPv3FileHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1373
    if-nez p1, :cond_0

    .line 1374
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the handle argument may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1378
    :cond_0
    :try_start_0
    iget-boolean v0, p1, Lcom/odinnet/servermonitor/ssh/SFTPv3FileHandle;->isClosed:Z

    if-nez v0, :cond_1

    .line 1380
    iget-object v0, p1, Lcom/odinnet/servermonitor/ssh/SFTPv3FileHandle;->fileHandle:[B

    invoke-direct {p0, v0}, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->closeHandle([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1385
    :cond_1
    iput-boolean v1, p1, Lcom/odinnet/servermonitor/ssh/SFTPv3FileHandle;->isClosed:Z

    .line 1387
    return-void

    .line 1385
    :catchall_0
    move-exception v0

    iput-boolean v1, p1, Lcom/odinnet/servermonitor/ssh/SFTPv3FileHandle;->isClosed:Z

    throw v0
.end method

.method public createFile(Ljava/lang/String;)Lcom/odinnet/servermonitor/ssh/SFTPv3FileHandle;
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1056
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->createFile(Ljava/lang/String;Lcom/odinnet/servermonitor/ssh/SFTPv3FileAttributes;)Lcom/odinnet/servermonitor/ssh/SFTPv3FileHandle;

    move-result-object v0

    return-object v0
.end method

.method public createFile(Ljava/lang/String;Lcom/odinnet/servermonitor/ssh/SFTPv3FileAttributes;)Lcom/odinnet/servermonitor/ssh/SFTPv3FileHandle;
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "attr"    # Lcom/odinnet/servermonitor/ssh/SFTPv3FileAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1075
    const/16 v0, 0xb

    invoke-direct {p0, p1, v0, p2}, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->openFile(Ljava/lang/String;ILcom/odinnet/servermonitor/ssh/SFTPv3FileAttributes;)Lcom/odinnet/servermonitor/ssh/SFTPv3FileHandle;

    move-result-object v0

    return-object v0
.end method

.method public createFileTruncate(Ljava/lang/String;)Lcom/odinnet/servermonitor/ssh/SFTPv3FileHandle;
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1088
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->createFileTruncate(Ljava/lang/String;Lcom/odinnet/servermonitor/ssh/SFTPv3FileAttributes;)Lcom/odinnet/servermonitor/ssh/SFTPv3FileHandle;

    move-result-object v0

    return-object v0
.end method

.method public createFileTruncate(Ljava/lang/String;Lcom/odinnet/servermonitor/ssh/SFTPv3FileAttributes;)Lcom/odinnet/servermonitor/ssh/SFTPv3FileHandle;
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "attr"    # Lcom/odinnet/servermonitor/ssh/SFTPv3FileAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1107
    const/16 v0, 0x1b

    invoke-direct {p0, p1, v0, p2}, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->openFile(Ljava/lang/String;ILcom/odinnet/servermonitor/ssh/SFTPv3FileAttributes;)Lcom/odinnet/servermonitor/ssh/SFTPv3FileHandle;

    move-result-object v0

    return-object v0
.end method

.method public createSymlink(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 627
    invoke-direct {p0}, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->generateNextRequestID()I

    move-result v0

    .line 633
    .local v0, "req_id":I
    new-instance v1, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;

    invoke-direct {v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;-><init>()V

    .line 634
    .local v1, "tw":Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->charsetName:Ljava/lang/String;

    invoke-virtual {v1, p2, v2}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->charsetName:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz v2, :cond_0

    .line 639
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->debug:Ljava/io/PrintStream;

    const-string v3, "Sending SSH_FXP_SYMLINK..."

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 640
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->debug:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/io/PrintStream;->flush()V

    .line 643
    :cond_0
    const/16 v2, 0x14

    invoke-virtual {v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->getBytes()[B

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->sendMessage(II[B)V

    .line 645
    invoke-direct {p0, v0}, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->expectStatusOKMessage(I)V

    .line 646
    return-void
.end method

.method public fsetstat(Lcom/odinnet/servermonitor/ssh/SFTPv3FileHandle;Lcom/odinnet/servermonitor/ssh/SFTPv3FileAttributes;)V
    .locals 5
    .param p1, "handle"    # Lcom/odinnet/servermonitor/ssh/SFTPv3FileHandle;
    .param p2, "attr"    # Lcom/odinnet/servermonitor/ssh/SFTPv3FileAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 598
    invoke-direct {p0, p1}, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->checkHandleValidAndOpen(Lcom/odinnet/servermonitor/ssh/SFTPv3FileHandle;)V

    .line 600
    invoke-direct {p0}, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->generateNextRequestID()I

    move-result v0

    .line 602
    .local v0, "req_id":I
    new-instance v1, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;

    invoke-direct {v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;-><init>()V

    .line 603
    .local v1, "tw":Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;
    iget-object v2, p1, Lcom/odinnet/servermonitor/ssh/SFTPv3FileHandle;->fileHandle:[B

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/odinnet/servermonitor/ssh/SFTPv3FileHandle;->fileHandle:[B

    array-length v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeString([BII)V

    .line 604
    invoke-direct {p0, p2}, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->createAttrs(Lcom/odinnet/servermonitor/ssh/SFTPv3FileAttributes;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeBytes([B)V

    .line 606
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz v2, :cond_0

    .line 608
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->debug:Ljava/io/PrintStream;

    const-string v3, "Sending SSH_FXP_FSETSTAT..."

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 609
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->debug:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/io/PrintStream;->flush()V

    .line 612
    :cond_0
    const/16 v2, 0xa

    invoke-virtual {v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->getBytes()[B

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->sendMessage(II[B)V

    .line 614
    invoke-direct {p0, v0}, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->expectStatusOKMessage(I)V

    .line 615
    return-void
.end method

.method public fstat(Lcom/odinnet/servermonitor/ssh/SFTPv3FileHandle;)Lcom/odinnet/servermonitor/ssh/SFTPv3FileAttributes;
    .locals 10
    .param p1, "handle"    # Lcom/odinnet/servermonitor/ssh/SFTPv3FileHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 356
    invoke-direct {p0, p1}, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->checkHandleValidAndOpen(Lcom/odinnet/servermonitor/ssh/SFTPv3FileHandle;)V

    .line 358
    invoke-direct {p0}, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->generateNextRequestID()I

    move-result v2

    .line 360
    .local v2, "req_id":I
    new-instance v6, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;

    invoke-direct {v6}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;-><init>()V

    .line 361
    .local v6, "tw":Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;
    iget-object v7, p1, Lcom/odinnet/servermonitor/ssh/SFTPv3FileHandle;->fileHandle:[B

    const/4 v8, 0x0

    iget-object v9, p1, Lcom/odinnet/servermonitor/ssh/SFTPv3FileHandle;->fileHandle:[B

    array-length v9, v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeString([BII)V

    .line 363
    iget-object v7, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz v7, :cond_0

    .line 365
    iget-object v7, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->debug:Ljava/io/PrintStream;

    const-string v8, "Sending SSH_FXP_FSTAT..."

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 366
    iget-object v7, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->debug:Ljava/io/PrintStream;

    invoke-virtual {v7}, Ljava/io/PrintStream;->flush()V

    .line 369
    :cond_0
    const/16 v7, 0x8

    invoke-virtual {v6}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->getBytes()[B

    move-result-object v8

    invoke-direct {p0, v7, v2, v8}, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->sendMessage(II[B)V

    .line 371
    const v7, 0x84d0

    invoke-direct {p0, v7}, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->receiveMessage(I)[B

    move-result-object v3

    .line 373
    .local v3, "resp":[B
    iget-object v7, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz v7, :cond_1

    .line 375
    iget-object v7, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->debug:Ljava/io/PrintStream;

    const-string v8, "Got REPLY."

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 376
    iget-object v7, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->debug:Ljava/io/PrintStream;

    invoke-virtual {v7}, Ljava/io/PrintStream;->flush()V

    .line 379
    :cond_1
    new-instance v5, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;

    invoke-direct {v5, v3}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;-><init>([B)V

    .line 381
    .local v5, "tr":Lcom/odinnet/servermonitor/ssh/packets/TypesReader;
    invoke-virtual {v5}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readByte()I

    move-result v4

    .line 383
    .local v4, "t":I
    invoke-virtual {v5}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readUINT32()I

    move-result v1

    .line 384
    .local v1, "rep_id":I
    if-eq v1, v2, :cond_2

    .line 385
    new-instance v7, Ljava/io/IOException;

    const-string v8, "The server sent an invalid id field."

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 387
    :cond_2
    const/16 v7, 0x69

    if-ne v4, v7, :cond_3

    .line 389
    invoke-direct {p0, v5}, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->readAttrs(Lcom/odinnet/servermonitor/ssh/packets/TypesReader;)Lcom/odinnet/servermonitor/ssh/SFTPv3FileAttributes;

    move-result-object v7

    return-object v7

    .line 392
    :cond_3
    const/16 v7, 0x65

    if-eq v4, v7, :cond_4

    .line 393
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The SFTP server sent an unexpected packet type ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 395
    :cond_4
    invoke-virtual {v5}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readUINT32()I

    move-result v0

    .line 397
    .local v0, "errorCode":I
    new-instance v7, Lcom/odinnet/servermonitor/ssh/SFTPException;

    invoke-virtual {v5}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v0}, Lcom/odinnet/servermonitor/ssh/SFTPException;-><init>(Ljava/lang/String;I)V

    throw v7
.end method

.method public getCharset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->charsetName:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocolVersion()I
    .locals 1

    .prologue
    .line 904
    iget v0, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->protocol_version:I

    return v0
.end method

.method public ls(Ljava/lang/String;)Ljava/util/Vector;
    .locals 2
    .param p1, "dirName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 930
    invoke-direct {p0, p1}, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->openDirectory(Ljava/lang/String;)[B

    move-result-object v0

    .line 931
    .local v0, "handle":[B
    invoke-direct {p0, v0}, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->scanDirectory([B)Ljava/util/Vector;

    move-result-object v1

    .line 932
    .local v1, "result":Ljava/util/Vector;
    invoke-direct {p0, v0}, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->closeHandle([B)V

    .line 933
    return-object v1
.end method

.method public lstat(Ljava/lang/String;)Lcom/odinnet/servermonitor/ssh/SFTPv3FileAttributes;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 471
    const/4 v0, 0x7

    invoke-direct {p0, p1, v0}, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->statBoth(Ljava/lang/String;I)Lcom/odinnet/servermonitor/ssh/SFTPv3FileAttributes;

    move-result-object v0

    return-object v0
.end method

.method public mkdir(Ljava/lang/String;I)V
    .locals 4
    .param p1, "dirName"    # Ljava/lang/String;
    .param p2, "posixPermissions"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 947
    invoke-direct {p0}, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->generateNextRequestID()I

    move-result v0

    .line 949
    .local v0, "req_id":I
    new-instance v1, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;

    invoke-direct {v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;-><init>()V

    .line 950
    .local v1, "tw":Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->charsetName:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeUINT32(I)V

    .line 952
    invoke-virtual {v1, p2}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeUINT32(I)V

    .line 954
    const/16 v2, 0xe

    invoke-virtual {v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->getBytes()[B

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->sendMessage(II[B)V

    .line 956
    invoke-direct {p0, v0}, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->expectStatusOKMessage(I)V

    .line 957
    return-void
.end method

.method public mv(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "oldPath"    # Ljava/lang/String;
    .param p2, "newPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1004
    invoke-direct {p0}, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->generateNextRequestID()I

    move-result v0

    .line 1006
    .local v0, "req_id":I
    new-instance v1, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;

    invoke-direct {v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;-><init>()V

    .line 1007
    .local v1, "tw":Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->charsetName:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1008
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->charsetName:Ljava/lang/String;

    invoke-virtual {v1, p2, v2}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1010
    const/16 v2, 0x12

    invoke-virtual {v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->getBytes()[B

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->sendMessage(II[B)V

    .line 1012
    invoke-direct {p0, v0}, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->expectStatusOKMessage(I)V

    .line 1013
    return-void
.end method

.method public openFileRO(Ljava/lang/String;)Lcom/odinnet/servermonitor/ssh/SFTPv3FileHandle;
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1024
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->openFile(Ljava/lang/String;ILcom/odinnet/servermonitor/ssh/SFTPv3FileAttributes;)Lcom/odinnet/servermonitor/ssh/SFTPv3FileHandle;

    move-result-object v0

    return-object v0
.end method

.method public openFileRW(Ljava/lang/String;)Lcom/odinnet/servermonitor/ssh/SFTPv3FileHandle;
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1036
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->openFile(Ljava/lang/String;ILcom/odinnet/servermonitor/ssh/SFTPv3FileAttributes;)Lcom/odinnet/servermonitor/ssh/SFTPv3FileHandle;

    move-result-object v0

    return-object v0
.end method

.method public read(Lcom/odinnet/servermonitor/ssh/SFTPv3FileHandle;J[BII)I
    .locals 16
    .param p1, "handle"    # Lcom/odinnet/servermonitor/ssh/SFTPv3FileHandle;
    .param p2, "fileOffset"    # J
    .param p4, "dst"    # [B
    .param p5, "dstoff"    # I
    .param p6, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1230
    invoke-direct/range {p0 .. p1}, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->checkHandleValidAndOpen(Lcom/odinnet/servermonitor/ssh/SFTPv3FileHandle;)V

    .line 1232
    const v13, 0x8000

    move/from16 v0, p6

    move v1, v13

    if-gt v0, v1, :cond_0

    if-gtz p6, :cond_1

    .line 1233
    :cond_0
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v14, "invalid len argument"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 1235
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->generateNextRequestID()I

    move-result v8

    .line 1237
    .local v8, "req_id":I
    new-instance v12, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;

    invoke-direct {v12}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;-><init>()V

    .line 1238
    .local v12, "tw":Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/SFTPv3FileHandle;->fileHandle:[B

    move-object v13, v0

    const/4 v14, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/SFTPv3FileHandle;->fileHandle:[B

    move-object v15, v0

    array-length v15, v15

    invoke-virtual {v12, v13, v14, v15}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeString([BII)V

    .line 1239
    move-object v0, v12

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeUINT64(J)V

    .line 1240
    move-object v0, v12

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeUINT32(I)V

    .line 1242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->debug:Ljava/io/PrintStream;

    move-object v13, v0

    if-eqz v13, :cond_2

    .line 1244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->debug:Ljava/io/PrintStream;

    move-object v13, v0

    const-string v14, "Sending SSH_FXP_READ..."

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->debug:Ljava/io/PrintStream;

    move-object v13, v0

    invoke-virtual {v13}, Ljava/io/PrintStream;->flush()V

    .line 1248
    :cond_2
    const/4 v13, 0x5

    invoke-virtual {v12}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->getBytes()[B

    move-result-object v14

    move-object/from16 v0, p0

    move v1, v13

    move v2, v8

    move-object v3, v14

    invoke-direct {v0, v1, v2, v3}, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->sendMessage(II[B)V

    .line 1250
    const v13, 0x84d0

    move-object/from16 v0, p0

    move v1, v13

    invoke-direct {v0, v1}, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->receiveMessage(I)[B

    move-result-object v9

    .line 1252
    .local v9, "resp":[B
    new-instance v11, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;

    invoke-direct {v11, v9}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;-><init>([B)V

    .line 1254
    .local v11, "tr":Lcom/odinnet/servermonitor/ssh/packets/TypesReader;
    invoke-virtual {v11}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readByte()I

    move-result v10

    .line 1256
    .local v10, "t":I
    invoke-virtual {v11}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readUINT32()I

    move-result v7

    .line 1257
    .local v7, "rep_id":I
    if-eq v7, v8, :cond_3

    .line 1258
    new-instance v13, Ljava/io/IOException;

    const-string v14, "The server sent an invalid id field."

    invoke-direct {v13, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 1260
    :cond_3
    const/16 v13, 0x67

    if-ne v10, v13, :cond_7

    .line 1262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->debug:Ljava/io/PrintStream;

    move-object v13, v0

    if-eqz v13, :cond_4

    .line 1264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->debug:Ljava/io/PrintStream;

    move-object v13, v0

    const-string v14, "Got SSH_FXP_DATA..."

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->debug:Ljava/io/PrintStream;

    move-object v13, v0

    invoke-virtual {v13}, Ljava/io/PrintStream;->flush()V

    .line 1268
    :cond_4
    invoke-virtual {v11}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readUINT32()I

    move-result v6

    .line 1270
    .local v6, "readLen":I
    if-ltz v6, :cond_5

    move v0, v6

    move/from16 v1, p6

    if-le v0, v1, :cond_6

    .line 1271
    :cond_5
    new-instance v13, Ljava/io/IOException;

    const-string v14, "The server sent an invalid length field."

    invoke-direct {v13, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 1273
    :cond_6
    move-object v0, v11

    move-object/from16 v1, p4

    move/from16 v2, p5

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readBytes([BII)V

    move v13, v6

    .line 1291
    .end local v6    # "readLen":I
    :goto_0
    return v13

    .line 1278
    :cond_7
    const/16 v13, 0x65

    if-eq v10, v13, :cond_8

    .line 1279
    new-instance v13, Ljava/io/IOException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "The SFTP server sent an unexpected packet type ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 1281
    :cond_8
    invoke-virtual {v11}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readUINT32()I

    move-result v4

    .line 1283
    .local v4, "errorCode":I
    const/4 v13, 0x1

    if-ne v4, v13, :cond_a

    .line 1285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->debug:Ljava/io/PrintStream;

    move-object v13, v0

    if-eqz v13, :cond_9

    .line 1287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->debug:Ljava/io/PrintStream;

    move-object v13, v0

    const-string v14, "Got SSH_FX_EOF."

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->debug:Ljava/io/PrintStream;

    move-object v13, v0

    invoke-virtual {v13}, Ljava/io/PrintStream;->flush()V

    .line 1291
    :cond_9
    const/4 v13, -0x1

    goto :goto_0

    .line 1294
    :cond_a
    invoke-virtual {v11}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1296
    .local v5, "errorMessage":Ljava/lang/String;
    new-instance v13, Lcom/odinnet/servermonitor/ssh/SFTPException;

    invoke-direct {v13, v5, v4}, Lcom/odinnet/servermonitor/ssh/SFTPException;-><init>(Ljava/lang/String;I)V

    throw v13
.end method

.method public readLink(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 483
    invoke-direct {p0}, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->generateNextRequestID()I

    move-result v3

    .line 485
    .local v3, "req_id":I
    new-instance v7, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;

    invoke-direct {v7}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;-><init>()V

    .line 486
    .local v7, "tw":Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;
    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->charsetName:Ljava/lang/String;

    invoke-virtual {v7, p1, v8}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz v8, :cond_0

    .line 490
    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->debug:Ljava/io/PrintStream;

    const-string v9, "Sending SSH_FXP_READLINK..."

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 491
    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->debug:Ljava/io/PrintStream;

    invoke-virtual {v8}, Ljava/io/PrintStream;->flush()V

    .line 494
    :cond_0
    const/16 v8, 0x13

    invoke-virtual {v7}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->getBytes()[B

    move-result-object v9

    invoke-direct {p0, v8, v3, v9}, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->sendMessage(II[B)V

    .line 496
    const v8, 0x84d0

    invoke-direct {p0, v8}, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->receiveMessage(I)[B

    move-result-object v4

    .line 498
    .local v4, "resp":[B
    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz v8, :cond_1

    .line 500
    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->debug:Ljava/io/PrintStream;

    const-string v9, "Got REPLY."

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 501
    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->debug:Ljava/io/PrintStream;

    invoke-virtual {v8}, Ljava/io/PrintStream;->flush()V

    .line 504
    :cond_1
    new-instance v6, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;

    invoke-direct {v6, v4}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;-><init>([B)V

    .line 506
    .local v6, "tr":Lcom/odinnet/servermonitor/ssh/packets/TypesReader;
    invoke-virtual {v6}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readByte()I

    move-result v5

    .line 508
    .local v5, "t":I
    invoke-virtual {v6}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readUINT32()I

    move-result v2

    .line 509
    .local v2, "rep_id":I
    if-eq v2, v3, :cond_2

    .line 510
    new-instance v8, Ljava/io/IOException;

    const-string v9, "The server sent an invalid id field."

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 512
    :cond_2
    const/16 v8, 0x68

    if-ne v5, v8, :cond_4

    .line 514
    invoke-virtual {v6}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readUINT32()I

    move-result v0

    .line 516
    .local v0, "count":I
    const/4 v8, 0x1

    if-eq v0, v8, :cond_3

    .line 517
    new-instance v8, Ljava/io/IOException;

    const-string v9, "The server sent an invalid SSH_FXP_NAME packet."

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 519
    :cond_3
    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->charsetName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 522
    .end local v0    # "count":I
    :cond_4
    const/16 v8, 0x65

    if-eq v5, v8, :cond_5

    .line 523
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "The SFTP server sent an unexpected packet type ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 525
    :cond_5
    invoke-virtual {v6}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readUINT32()I

    move-result v1

    .line 527
    .local v1, "errorCode":I
    new-instance v8, Lcom/odinnet/servermonitor/ssh/SFTPException;

    invoke-virtual {v6}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v1}, Lcom/odinnet/servermonitor/ssh/SFTPException;-><init>(Ljava/lang/String;I)V

    throw v8
.end method

.method public rm(Ljava/lang/String;)V
    .locals 4
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 967
    invoke-direct {p0}, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->generateNextRequestID()I

    move-result v0

    .line 969
    .local v0, "req_id":I
    new-instance v1, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;

    invoke-direct {v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;-><init>()V

    .line 970
    .local v1, "tw":Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->charsetName:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    const/16 v2, 0xd

    invoke-virtual {v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->getBytes()[B

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->sendMessage(II[B)V

    .line 974
    invoke-direct {p0, v0}, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->expectStatusOKMessage(I)V

    .line 975
    return-void
.end method

.method public rmdir(Ljava/lang/String;)V
    .locals 4
    .param p1, "dirName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 985
    invoke-direct {p0}, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->generateNextRequestID()I

    move-result v0

    .line 987
    .local v0, "req_id":I
    new-instance v1, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;

    invoke-direct {v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;-><init>()V

    .line 988
    .local v1, "tw":Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->charsetName:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    const/16 v2, 0xf

    invoke-virtual {v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->getBytes()[B

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->sendMessage(II[B)V

    .line 992
    invoke-direct {p0, v0}, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->expectStatusOKMessage(I)V

    .line 993
    return-void
.end method

.method public setCharset(Ljava/lang/String;)V
    .locals 3
    .param p1, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    if-nez p1, :cond_0

    .line 146
    iput-object p1, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->charsetName:Ljava/lang/String;

    .line 159
    :goto_0
    return-void

    .line 152
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    iput-object p1, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->charsetName:Ljava/lang/String;

    goto :goto_0

    .line 154
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "This charset is not supported"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    .end local p0    # "this":Lcom/odinnet/servermonitor/ssh/SFTPv3Client;
    check-cast p0, Ljava/io/IOException;

    throw p0
.end method

.method public setstat(Ljava/lang/String;Lcom/odinnet/servermonitor/ssh/SFTPv3FileAttributes;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "attr"    # Lcom/odinnet/servermonitor/ssh/SFTPv3FileAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 570
    invoke-direct {p0}, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->generateNextRequestID()I

    move-result v0

    .line 572
    .local v0, "req_id":I
    new-instance v1, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;

    invoke-direct {v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;-><init>()V

    .line 573
    .local v1, "tw":Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->charsetName:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    invoke-direct {p0, p2}, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->createAttrs(Lcom/odinnet/servermonitor/ssh/SFTPv3FileAttributes;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeBytes([B)V

    .line 576
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz v2, :cond_0

    .line 578
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->debug:Ljava/io/PrintStream;

    const-string v3, "Sending SSH_FXP_SETSTAT..."

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 579
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->debug:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/io/PrintStream;->flush()V

    .line 582
    :cond_0
    const/16 v2, 0x9

    invoke-virtual {v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->getBytes()[B

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->sendMessage(II[B)V

    .line 584
    invoke-direct {p0, v0}, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->expectStatusOKMessage(I)V

    .line 585
    return-void
.end method

.method public stat(Ljava/lang/String;)Lcom/odinnet/servermonitor/ssh/SFTPv3FileAttributes;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 456
    const/16 v0, 0x11

    invoke-direct {p0, p1, v0}, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->statBoth(Ljava/lang/String;I)Lcom/odinnet/servermonitor/ssh/SFTPv3FileAttributes;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/odinnet/servermonitor/ssh/SFTPv3FileHandle;J[BII)V
    .locals 16
    .param p1, "handle"    # Lcom/odinnet/servermonitor/ssh/SFTPv3FileHandle;
    .param p2, "fileOffset"    # J
    .param p4, "src"    # [B
    .param p5, "srcoff"    # I
    .param p6, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1312
    invoke-direct/range {p0 .. p1}, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->checkHandleValidAndOpen(Lcom/odinnet/servermonitor/ssh/SFTPv3FileHandle;)V

    .line 1314
    :cond_0
    if-lez p6, :cond_5

    .line 1316
    move/from16 v12, p6

    .line 1318
    .local v12, "writeRequestLen":I
    const v13, 0x8000

    if-le v12, v13, :cond_1

    .line 1319
    const v12, 0x8000

    .line 1321
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->generateNextRequestID()I

    move-result v7

    .line 1323
    .local v7, "req_id":I
    new-instance v11, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;

    invoke-direct {v11}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;-><init>()V

    .line 1324
    .local v11, "tw":Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/SFTPv3FileHandle;->fileHandle:[B

    move-object v13, v0

    const/4 v14, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/SFTPv3FileHandle;->fileHandle:[B

    move-object v15, v0

    array-length v15, v15

    invoke-virtual {v11, v13, v14, v15}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeString([BII)V

    .line 1325
    move-object v0, v11

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeUINT64(J)V

    .line 1326
    move-object v0, v11

    move-object/from16 v1, p4

    move/from16 v2, p5

    move v3, v12

    invoke-virtual {v0, v1, v2, v3}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeString([BII)V

    .line 1328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->debug:Ljava/io/PrintStream;

    move-object v13, v0

    if-eqz v13, :cond_2

    .line 1330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->debug:Ljava/io/PrintStream;

    move-object v13, v0

    const-string v14, "Sending SSH_FXP_WRITE..."

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->debug:Ljava/io/PrintStream;

    move-object v13, v0

    invoke-virtual {v13}, Ljava/io/PrintStream;->flush()V

    .line 1334
    :cond_2
    const/4 v13, 0x6

    invoke-virtual {v11}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->getBytes()[B

    move-result-object v14

    move-object/from16 v0, p0

    move v1, v13

    move v2, v7

    move-object v3, v14

    invoke-direct {v0, v1, v2, v3}, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->sendMessage(II[B)V

    .line 1336
    int-to-long v13, v12

    add-long p2, p2, v13

    .line 1338
    add-int p5, p5, v12

    .line 1339
    sub-int p6, p6, v12

    .line 1341
    const v13, 0x84d0

    move-object/from16 v0, p0

    move v1, v13

    invoke-direct {v0, v1}, Lcom/odinnet/servermonitor/ssh/SFTPv3Client;->receiveMessage(I)[B

    move-result-object v8

    .line 1343
    .local v8, "resp":[B
    new-instance v10, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;

    invoke-direct {v10, v8}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;-><init>([B)V

    .line 1345
    .local v10, "tr":Lcom/odinnet/servermonitor/ssh/packets/TypesReader;
    invoke-virtual {v10}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readByte()I

    move-result v9

    .line 1347
    .local v9, "t":I
    invoke-virtual {v10}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readUINT32()I

    move-result v6

    .line 1348
    .local v6, "rep_id":I
    if-eq v6, v7, :cond_3

    .line 1349
    new-instance v13, Ljava/io/IOException;

    const-string v14, "The server sent an invalid id field."

    invoke-direct {v13, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 1351
    :cond_3
    const/16 v13, 0x65

    if-eq v9, v13, :cond_4

    .line 1352
    new-instance v13, Ljava/io/IOException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "The SFTP server sent an unexpected packet type ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 1354
    :cond_4
    invoke-virtual {v10}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readUINT32()I

    move-result v4

    .line 1356
    .local v4, "errorCode":I
    if-eqz v4, :cond_0

    .line 1359
    invoke-virtual {v10}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1361
    .local v5, "errorMessage":Ljava/lang/String;
    new-instance v13, Lcom/odinnet/servermonitor/ssh/SFTPException;

    invoke-direct {v13, v5, v4}, Lcom/odinnet/servermonitor/ssh/SFTPException;-><init>(Ljava/lang/String;I)V

    throw v13

    .line 1363
    .end local v4    # "errorCode":I
    .end local v5    # "errorMessage":Ljava/lang/String;
    .end local v6    # "rep_id":I
    .end local v7    # "req_id":I
    .end local v8    # "resp":[B
    .end local v9    # "t":I
    .end local v10    # "tr":Lcom/odinnet/servermonitor/ssh/packets/TypesReader;
    .end local v11    # "tw":Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;
    .end local v12    # "writeRequestLen":I
    :cond_5
    return-void
.end method
