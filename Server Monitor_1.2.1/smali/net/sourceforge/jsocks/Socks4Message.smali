.class public Lnet/sourceforge/jsocks/Socks4Message;
.super Lnet/sourceforge/jsocks/ProxyMessage;
.source "Socks4Message.java"


# static fields
.field public static final REPLY_BAD_IDENTD:I = 0x5d

.field public static final REPLY_NO_CONNECT:I = 0x5c

.field public static final REPLY_OK:I = 0x5a

.field public static final REPLY_REJECTED:I = 0x5b

.field public static final REQUEST_BIND:I = 0x2

.field public static final REQUEST_CONNECT:I = 0x1

.field static final SOCKS_VERSION:I = 0x4

.field static final replyMessage:[Ljava/lang/String;


# instance fields
.field private msgBytes:[B

.field private msgLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 155
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Request Granted"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Request Rejected or Failed"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Failed request, can\'t connect to Identd"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Failed request, bad user name"

    aput-object v2, v0, v1

    sput-object v0, Lnet/sourceforge/jsocks/Socks4Message;->replyMessage:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "cmd"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 22
    invoke-direct {p0, p1, v2, v1}, Lnet/sourceforge/jsocks/ProxyMessage;-><init>(ILjava/net/InetAddress;I)V

    .line 23
    iput-object v2, p0, Lnet/sourceforge/jsocks/Socks4Message;->user:Ljava/lang/String;

    .line 25
    iput v0, p0, Lnet/sourceforge/jsocks/Socks4Message;->msgLength:I

    .line 26
    new-array v0, v0, [B

    iput-object v0, p0, Lnet/sourceforge/jsocks/Socks4Message;->msgBytes:[B

    .line 28
    iget-object v0, p0, Lnet/sourceforge/jsocks/Socks4Message;->msgBytes:[B

    aput-byte v1, v0, v1

    .line 29
    iget-object v0, p0, Lnet/sourceforge/jsocks/Socks4Message;->msgBytes:[B

    const/4 v1, 0x1

    iget v2, p0, Lnet/sourceforge/jsocks/Socks4Message;->command:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 30
    return-void
.end method

.method public constructor <init>(IILjava/net/InetAddress;ILjava/lang/String;)V
    .locals 9
    .param p1, "version"    # I
    .param p2, "cmd"    # I
    .param p3, "ip"    # Ljava/net/InetAddress;
    .param p4, "port"    # I
    .param p5, "user"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v4, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 51
    invoke-direct {p0, p2, p3, p4}, Lnet/sourceforge/jsocks/ProxyMessage;-><init>(ILjava/net/InetAddress;I)V

    .line 52
    iput-object p5, p0, Lnet/sourceforge/jsocks/Socks4Message;->user:Ljava/lang/String;

    .line 53
    iput p1, p0, Lnet/sourceforge/jsocks/Socks4Message;->version:I

    .line 55
    if-nez p5, :cond_1

    const/16 v2, 0x8

    :goto_0
    iput v2, p0, Lnet/sourceforge/jsocks/Socks4Message;->msgLength:I

    .line 56
    iget v2, p0, Lnet/sourceforge/jsocks/Socks4Message;->msgLength:I

    new-array v2, v2, [B

    iput-object v2, p0, Lnet/sourceforge/jsocks/Socks4Message;->msgBytes:[B

    .line 58
    iget-object v2, p0, Lnet/sourceforge/jsocks/Socks4Message;->msgBytes:[B

    int-to-byte v3, p1

    aput-byte v3, v2, v5

    .line 59
    iget-object v2, p0, Lnet/sourceforge/jsocks/Socks4Message;->msgBytes:[B

    iget v3, p0, Lnet/sourceforge/jsocks/Socks4Message;->command:I

    int-to-byte v3, v3

    aput-byte v3, v2, v6

    .line 60
    iget-object v2, p0, Lnet/sourceforge/jsocks/Socks4Message;->msgBytes:[B

    shr-int/lit8 v3, p4, 0x8

    int-to-byte v3, v3

    aput-byte v3, v2, v7

    .line 61
    iget-object v2, p0, Lnet/sourceforge/jsocks/Socks4Message;->msgBytes:[B

    int-to-byte v3, p4

    aput-byte v3, v2, v8

    .line 65
    if-eqz p3, :cond_2

    .line 66
    invoke-virtual {p3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 71
    .local v0, "addr":[B
    :goto_1
    iget-object v2, p0, Lnet/sourceforge/jsocks/Socks4Message;->msgBytes:[B

    invoke-static {v0, v5, v2, v4, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    if-eqz p5, :cond_0

    .line 74
    invoke-virtual {p5}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 75
    .local v1, "buf":[B
    iget-object v2, p0, Lnet/sourceforge/jsocks/Socks4Message;->msgBytes:[B

    const/16 v3, 0x8

    array-length v4, v1

    invoke-static {v1, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 76
    iget-object v2, p0, Lnet/sourceforge/jsocks/Socks4Message;->msgBytes:[B

    iget-object v3, p0, Lnet/sourceforge/jsocks/Socks4Message;->msgBytes:[B

    array-length v3, v3

    sub-int/2addr v3, v6

    aput-byte v5, v2, v3

    .line 78
    .end local v1    # "buf":[B
    :cond_0
    return-void

    .line 55
    .end local v0    # "addr":[B
    :cond_1
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x9

    goto :goto_0

    .line 68
    :cond_2
    new-array v0, v4, [B

    .line 69
    .restart local v0    # "addr":[B
    aput-byte v5, v0, v8

    aput-byte v5, v0, v7

    aput-byte v5, v0, v6

    aput-byte v5, v0, v5

    goto :goto_1
.end method

.method public constructor <init>(ILjava/net/InetAddress;I)V
    .locals 6
    .param p1, "cmd"    # I
    .param p2, "ip"    # Ljava/net/InetAddress;
    .param p3, "port"    # I

    .prologue
    .line 36
    const/4 v1, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lnet/sourceforge/jsocks/Socks4Message;-><init>(IILjava/net/InetAddress;ILjava/lang/String;)V

    .line 37
    return-void
.end method

.method public constructor <init>(ILjava/net/InetAddress;ILjava/lang/String;)V
    .locals 6
    .param p1, "cmd"    # I
    .param p2, "ip"    # Ljava/net/InetAddress;
    .param p3, "port"    # I
    .param p4, "user"    # Ljava/lang/String;

    .prologue
    .line 43
    const/4 v1, 0x4

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lnet/sourceforge/jsocks/Socks4Message;-><init>(IILjava/net/InetAddress;ILjava/lang/String;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "clientMode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    invoke-direct {p0}, Lnet/sourceforge/jsocks/ProxyMessage;-><init>()V

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sourceforge/jsocks/Socks4Message;->msgBytes:[B

    .line 88
    invoke-virtual {p0, p1, p2}, Lnet/sourceforge/jsocks/Socks4Message;->read(Ljava/io/InputStream;Z)V

    .line 89
    return-void
.end method

.method static bytes2IP([B)Ljava/net/InetAddress;
    .locals 3
    .param p0, "addr"    # [B

    .prologue
    .line 145
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lnet/sourceforge/jsocks/Socks4Message;->bytes2IPV4([BI)Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "s":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 149
    :goto_0
    return-object v2

    .line 148
    :catch_0
    move-exception v1

    .line 149
    .local v1, "uh_ex":Ljava/net/UnknownHostException;
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public read(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lnet/sourceforge/jsocks/Socks4Message;->read(Ljava/io/InputStream;Z)V

    .line 94
    return-void
.end method

.method public read(Ljava/io/InputStream;Z)V
    .locals 9
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "clientMode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/16 v8, 0x5a

    .line 98
    const/4 v4, 0x0

    .line 99
    .local v4, "mode4a":Z
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 100
    .local v2, "d_in":Ljava/io/DataInputStream;
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v6

    iput v6, p0, Lnet/sourceforge/jsocks/Socks4Message;->version:I

    .line 101
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v6

    iput v6, p0, Lnet/sourceforge/jsocks/Socks4Message;->command:I

    .line 102
    if-eqz p2, :cond_1

    iget v6, p0, Lnet/sourceforge/jsocks/Socks4Message;->command:I

    if-eq v6, v8, :cond_1

    .line 104
    iget v6, p0, Lnet/sourceforge/jsocks/Socks4Message;->command:I

    if-le v6, v8, :cond_0

    iget v6, p0, Lnet/sourceforge/jsocks/Socks4Message;->command:I

    const/16 v7, 0x5d

    if-ge v6, v7, :cond_0

    .line 105
    sget-object v6, Lnet/sourceforge/jsocks/Socks4Message;->replyMessage:[Ljava/lang/String;

    iget v7, p0, Lnet/sourceforge/jsocks/Socks4Message;->command:I

    sub-int/2addr v7, v8

    aget-object v3, v6, v7

    .line 108
    .local v3, "errMsg":Ljava/lang/String;
    :goto_0
    new-instance v6, Lnet/sourceforge/jsocks/SocksException;

    iget v7, p0, Lnet/sourceforge/jsocks/Socks4Message;->command:I

    invoke-direct {v6, v7, v3}, Lnet/sourceforge/jsocks/SocksException;-><init>(ILjava/lang/String;)V

    throw v6

    .line 107
    .end local v3    # "errMsg":Ljava/lang/String;
    :cond_0
    const-string v3, "Unknown Reply Code"

    .restart local v3    # "errMsg":Ljava/lang/String;
    goto :goto_0

    .line 110
    .end local v3    # "errMsg":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v6

    iput v6, p0, Lnet/sourceforge/jsocks/Socks4Message;->port:I

    .line 111
    const/4 v6, 0x4

    new-array v0, v6, [B

    .line 112
    .local v0, "addr":[B
    invoke-virtual {v2, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 113
    aget-byte v6, v0, v7

    if-nez v6, :cond_2

    const/4 v6, 0x1

    aget-byte v6, v0, v6

    if-nez v6, :cond_2

    const/4 v6, 0x2

    aget-byte v6, v0, v6

    if-nez v6, :cond_2

    const/4 v6, 0x3

    aget-byte v6, v0, v6

    if-eqz v6, :cond_2

    .line 114
    const/4 v4, 0x1

    .line 119
    :goto_1
    if-nez p2, :cond_5

    .line 120
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .local v5, "sb":Ljava/lang/StringBuilder;
    :goto_2
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .local v1, "b":I
    if-eqz v1, :cond_3

    .line 123
    int-to-char v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 116
    .end local v1    # "b":I
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    invoke-static {v0}, Lnet/sourceforge/jsocks/Socks4Message;->bytes2IP([B)Ljava/net/InetAddress;

    move-result-object v6

    iput-object v6, p0, Lnet/sourceforge/jsocks/Socks4Message;->ip:Ljava/net/InetAddress;

    .line 117
    iget-object v6, p0, Lnet/sourceforge/jsocks/Socks4Message;->ip:Ljava/net/InetAddress;

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lnet/sourceforge/jsocks/Socks4Message;->host:Ljava/lang/String;

    goto :goto_1

    .line 124
    .restart local v1    # "b":I
    .restart local v5    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lnet/sourceforge/jsocks/Socks4Message;->user:Ljava/lang/String;

    .line 125
    if-eqz v4, :cond_5

    .line 126
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 127
    :goto_3
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    if-eqz v1, :cond_4

    .line 128
    int-to-char v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 129
    :cond_4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lnet/sourceforge/jsocks/Socks4Message;->host:Ljava/lang/String;

    .line 132
    .end local v1    # "b":I
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    :cond_5
    return-void
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 6
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    iget-object v1, p0, Lnet/sourceforge/jsocks/Socks4Message;->msgBytes:[B

    if-nez v1, :cond_0

    .line 136
    new-instance v0, Lnet/sourceforge/jsocks/Socks4Message;

    iget v1, p0, Lnet/sourceforge/jsocks/Socks4Message;->version:I

    iget v2, p0, Lnet/sourceforge/jsocks/Socks4Message;->command:I

    iget-object v3, p0, Lnet/sourceforge/jsocks/Socks4Message;->ip:Ljava/net/InetAddress;

    iget v4, p0, Lnet/sourceforge/jsocks/Socks4Message;->port:I

    iget-object v5, p0, Lnet/sourceforge/jsocks/Socks4Message;->user:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lnet/sourceforge/jsocks/Socks4Message;-><init>(IILjava/net/InetAddress;ILjava/lang/String;)V

    .line 137
    .local v0, "msg":Lnet/sourceforge/jsocks/Socks4Message;
    iget-object v1, v0, Lnet/sourceforge/jsocks/Socks4Message;->msgBytes:[B

    iput-object v1, p0, Lnet/sourceforge/jsocks/Socks4Message;->msgBytes:[B

    .line 138
    iget v1, v0, Lnet/sourceforge/jsocks/Socks4Message;->msgLength:I

    iput v1, p0, Lnet/sourceforge/jsocks/Socks4Message;->msgLength:I

    .line 140
    .end local v0    # "msg":Lnet/sourceforge/jsocks/Socks4Message;
    :cond_0
    iget-object v1, p0, Lnet/sourceforge/jsocks/Socks4Message;->msgBytes:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 141
    return-void
.end method
