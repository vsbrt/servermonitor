.class public Lcom/odinnet/servermonitor/ssh/transport/ClientServerHello;
.super Ljava/lang/Object;
.source "ClientServerHello.java"


# instance fields
.field client_line:Ljava/lang/String;

.field server_line:Ljava/lang/String;

.field server_versioncomment:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 8
    .param p1, "bi"    # Ljava/io/InputStream;
    .param p2, "bo"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v7, "SSH-"

    const-string v6, "ISO-8859-1"

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const-string v3, "SSH-2.0-TrileadSSH2Java_213"

    iput-object v3, p0, Lcom/odinnet/servermonitor/ssh/transport/ClientServerHello;->client_line:Ljava/lang/String;

    .line 61
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/odinnet/servermonitor/ssh/transport/ClientServerHello;->client_line:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ISO-8859-1"

    invoke-virtual {v3, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 62
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 64
    const/16 v3, 0x200

    new-array v2, v3, [B

    .line 66
    .local v2, "serverVersion":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v3, 0x32

    if-ge v0, v3, :cond_0

    .line 68
    invoke-static {p1, v2}, Lcom/odinnet/servermonitor/ssh/transport/ClientServerHello;->readLineRN(Ljava/io/InputStream;[B)I

    move-result v1

    .line 70
    .local v1, "len":I
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "ISO-8859-1"

    invoke-direct {v3, v2, v4, v1, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v3, p0, Lcom/odinnet/servermonitor/ssh/transport/ClientServerHello;->server_line:Ljava/lang/String;

    .line 72
    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/transport/ClientServerHello;->server_line:Ljava/lang/String;

    const-string v4, "SSH-"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 76
    .end local v1    # "len":I
    :cond_0
    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/transport/ClientServerHello;->server_line:Ljava/lang/String;

    const-string v4, "SSH-"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 77
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Malformed server identification string. There was no line starting with \'SSH-\' amongst the first 50 lines."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 66
    .restart local v1    # "len":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    .end local v1    # "len":I
    :cond_2
    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/transport/ClientServerHello;->server_line:Ljava/lang/String;

    const-string v4, "SSH-1.99-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 81
    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/transport/ClientServerHello;->server_line:Ljava/lang/String;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/odinnet/servermonitor/ssh/transport/ClientServerHello;->server_versioncomment:Ljava/lang/String;

    .line 86
    :goto_1
    return-void

    .line 82
    :cond_3
    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/transport/ClientServerHello;->server_line:Ljava/lang/String;

    const-string v4, "SSH-2.0-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 83
    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/transport/ClientServerHello;->server_line:Ljava/lang/String;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/odinnet/servermonitor/ssh/transport/ClientServerHello;->server_versioncomment:Ljava/lang/String;

    goto :goto_1

    .line 85
    :cond_4
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Server uses incompatible protocol, it is not SSH-2 compatible."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static final readLineRN(Ljava/io/InputStream;[B)I
    .locals 7
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26
    const/4 v3, 0x0

    .line 27
    .local v3, "pos":I
    const/4 v2, 0x0

    .line 28
    .local v2, "need10":Z
    const/4 v1, 0x0

    .line 31
    .local v1, "len":I
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 32
    .local v0, "c":I
    const/4 v5, -0x1

    if-ne v0, v5, :cond_0

    .line 33
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Premature connection close"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 35
    :cond_0
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "pos":I
    .local v4, "pos":I
    int-to-byte v5, v0

    aput-byte v5, p1, v3

    .line 37
    const/16 v5, 0xd

    if-ne v0, v5, :cond_1

    .line 39
    const/4 v2, 0x1

    move v3, v4

    .line 40
    .end local v4    # "pos":I
    .restart local v3    # "pos":I
    goto :goto_0

    .line 43
    .end local v3    # "pos":I
    .restart local v4    # "pos":I
    :cond_1
    const/16 v5, 0xa

    if-ne v0, v5, :cond_2

    .line 54
    return v1

    .line 46
    :cond_2
    const/4 v5, 0x1

    if-ne v2, v5, :cond_3

    .line 47
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Malformed line sent by the server, the line does not end correctly."

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 49
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 50
    array-length v5, p1

    if-lt v4, v5, :cond_4

    .line 51
    new-instance v5, Ljava/io/IOException;

    const-string v6, "The server sent a too long line."

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_4
    move v3, v4

    .line 52
    .end local v4    # "pos":I
    .restart local v3    # "pos":I
    goto :goto_0
.end method


# virtual methods
.method public getClientString()[B
    .locals 4

    .prologue
    .line 97
    :try_start_0
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/transport/ClientServerHello;->client_line:Ljava/lang/String;

    const-string v3, "ISO-8859-1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 104
    .local v1, "result":[B
    :goto_0
    return-object v1

    .line 99
    .end local v1    # "result":[B
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 101
    .local v0, "ign":Ljava/io/UnsupportedEncodingException;
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/transport/ClientServerHello;->client_line:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .restart local v1    # "result":[B
    goto :goto_0
.end method

.method public getServerString()[B
    .locals 4

    .prologue
    .line 116
    :try_start_0
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/transport/ClientServerHello;->server_line:Ljava/lang/String;

    const-string v3, "ISO-8859-1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 123
    .local v1, "result":[B
    :goto_0
    return-object v1

    .line 118
    .end local v1    # "result":[B
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 120
    .local v0, "ign":Ljava/io/UnsupportedEncodingException;
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/transport/ClientServerHello;->server_line:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .restart local v1    # "result":[B
    goto :goto_0
.end method
