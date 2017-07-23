.class public Lnet/sourceforge/jsocks/Socks5Message;
.super Lnet/sourceforge/jsocks/ProxyMessage;
.source "Socks5Message.java"


# static fields
.field public static final SOCKS_ATYP_DOMAINNAME:I = 0x3

.field public static final SOCKS_ATYP_IPV4:I = 0x1

.field public static final SOCKS_ATYP_IPV6:I = 0x4

.field public static final SOCKS_IPV6_LENGTH:I = 0x10

.field public static final SOCKS_VERSION:I = 0x5

.field static doResolveIP:Z


# instance fields
.field public addrType:I

.field data:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 290
    const/4 v0, 0x1

    sput-boolean v0, Lnet/sourceforge/jsocks/Socks5Message;->doResolveIP:Z

    return-void
.end method

.method public constructor <init>(I)V
    .locals 4
    .param p1, "cmd"    # I

    .prologue
    const/4 v3, 0x0

    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v3}, Lnet/sourceforge/jsocks/ProxyMessage;-><init>(ILjava/net/InetAddress;I)V

    .line 26
    const/4 v0, 0x3

    new-array v0, v0, [B

    iput-object v0, p0, Lnet/sourceforge/jsocks/Socks5Message;->data:[B

    .line 27
    iget-object v0, p0, Lnet/sourceforge/jsocks/Socks5Message;->data:[B

    const/4 v1, 0x5

    aput-byte v1, v0, v3

    .line 28
    iget-object v0, p0, Lnet/sourceforge/jsocks/Socks5Message;->data:[B

    const/4 v1, 0x1

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 29
    iget-object v0, p0, Lnet/sourceforge/jsocks/Socks5Message;->data:[B

    const/4 v1, 0x2

    aput-byte v3, v0, v1

    .line 30
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 8
    .param p1, "cmd"    # I
    .param p2, "hostName"    # Ljava/lang/String;
    .param p3, "port"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x5

    const/4 v3, 0x3

    const/4 v4, 0x0

    .line 75
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, p3}, Lnet/sourceforge/jsocks/ProxyMessage;-><init>(ILjava/net/InetAddress;I)V

    .line 76
    iput-object p2, p0, Lnet/sourceforge/jsocks/Socks5Message;->host:Ljava/lang/String;

    .line 77
    iput v5, p0, Lnet/sourceforge/jsocks/Socks5Message;->version:I

    .line 81
    iput v3, p0, Lnet/sourceforge/jsocks/Socks5Message;->addrType:I

    .line 82
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 84
    .local v0, "addr":[B
    array-length v1, v0

    add-int/lit8 v1, v1, 0x7

    new-array v1, v1, [B

    iput-object v1, p0, Lnet/sourceforge/jsocks/Socks5Message;->data:[B

    .line 85
    iget-object v1, p0, Lnet/sourceforge/jsocks/Socks5Message;->data:[B

    aput-byte v5, v1, v4

    .line 86
    iget-object v1, p0, Lnet/sourceforge/jsocks/Socks5Message;->data:[B

    iget v2, p0, Lnet/sourceforge/jsocks/Socks5Message;->command:I

    int-to-byte v2, v2

    aput-byte v2, v1, v6

    .line 87
    iget-object v1, p0, Lnet/sourceforge/jsocks/Socks5Message;->data:[B

    aput-byte v4, v1, v7

    .line 88
    iget-object v1, p0, Lnet/sourceforge/jsocks/Socks5Message;->data:[B

    aput-byte v3, v1, v3

    .line 89
    iget-object v1, p0, Lnet/sourceforge/jsocks/Socks5Message;->data:[B

    const/4 v2, 0x4

    array-length v3, v0

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 92
    iget-object v1, p0, Lnet/sourceforge/jsocks/Socks5Message;->data:[B

    array-length v2, v0

    invoke-static {v0, v4, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 94
    iget-object v1, p0, Lnet/sourceforge/jsocks/Socks5Message;->data:[B

    iget-object v2, p0, Lnet/sourceforge/jsocks/Socks5Message;->data:[B

    array-length v2, v2

    sub-int/2addr v2, v7

    shr-int/lit8 v3, p3, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 95
    iget-object v1, p0, Lnet/sourceforge/jsocks/Socks5Message;->data:[B

    iget-object v2, p0, Lnet/sourceforge/jsocks/Socks5Message;->data:[B

    array-length v2, v2

    sub-int/2addr v2, v6

    int-to-byte v3, p3

    aput-byte v3, v1, v2

    .line 96
    return-void
.end method

.method public constructor <init>(ILjava/net/InetAddress;I)V
    .locals 8
    .param p1, "cmd"    # I
    .param p2, "ip"    # Ljava/net/InetAddress;
    .param p3, "port"    # I

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lnet/sourceforge/jsocks/ProxyMessage;-><init>(ILjava/net/InetAddress;I)V

    .line 40
    if-nez p2, :cond_0

    const-string v1, "0.0.0.0"

    :goto_0
    iput-object v1, p0, Lnet/sourceforge/jsocks/Socks5Message;->host:Ljava/lang/String;

    .line 41
    const/4 v1, 0x5

    iput v1, p0, Lnet/sourceforge/jsocks/Socks5Message;->version:I

    .line 45
    if-nez p2, :cond_1

    .line 46
    new-array v0, v5, [B

    .line 47
    .local v0, "addr":[B
    aput-byte v3, v0, v7

    aput-byte v3, v0, v6

    aput-byte v3, v0, v4

    aput-byte v3, v0, v3

    .line 51
    :goto_1
    array-length v1, v0

    if-ne v1, v5, :cond_2

    move v1, v4

    :goto_2
    iput v1, p0, Lnet/sourceforge/jsocks/Socks5Message;->addrType:I

    .line 54
    array-length v1, v0

    add-int/lit8 v1, v1, 0x6

    new-array v1, v1, [B

    iput-object v1, p0, Lnet/sourceforge/jsocks/Socks5Message;->data:[B

    .line 55
    iget-object v1, p0, Lnet/sourceforge/jsocks/Socks5Message;->data:[B

    const/4 v2, 0x5

    aput-byte v2, v1, v3

    .line 56
    iget-object v1, p0, Lnet/sourceforge/jsocks/Socks5Message;->data:[B

    iget v2, p0, Lnet/sourceforge/jsocks/Socks5Message;->command:I

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    .line 57
    iget-object v1, p0, Lnet/sourceforge/jsocks/Socks5Message;->data:[B

    aput-byte v3, v1, v6

    .line 58
    iget-object v1, p0, Lnet/sourceforge/jsocks/Socks5Message;->data:[B

    iget v2, p0, Lnet/sourceforge/jsocks/Socks5Message;->addrType:I

    int-to-byte v2, v2

    aput-byte v2, v1, v7

    .line 61
    iget-object v1, p0, Lnet/sourceforge/jsocks/Socks5Message;->data:[B

    array-length v2, v0

    invoke-static {v0, v3, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    iget-object v1, p0, Lnet/sourceforge/jsocks/Socks5Message;->data:[B

    iget-object v2, p0, Lnet/sourceforge/jsocks/Socks5Message;->data:[B

    array-length v2, v2

    sub-int/2addr v2, v6

    shr-int/lit8 v3, p3, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 64
    iget-object v1, p0, Lnet/sourceforge/jsocks/Socks5Message;->data:[B

    iget-object v2, p0, Lnet/sourceforge/jsocks/Socks5Message;->data:[B

    array-length v2, v2

    sub-int/2addr v2, v4

    int-to-byte v3, p3

    aput-byte v3, v1, v2

    .line 65
    return-void

    .line 40
    .end local v0    # "addr":[B
    :cond_0
    invoke-virtual {p2}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {p2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .restart local v0    # "addr":[B
    goto :goto_1

    :cond_2
    move v1, v5

    .line 51
    goto :goto_2
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/jsocks/SocksException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lnet/sourceforge/jsocks/Socks5Message;-><init>(Ljava/io/InputStream;Z)V

    .line 109
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "clientMode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/jsocks/SocksException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    invoke-direct {p0}, Lnet/sourceforge/jsocks/ProxyMessage;-><init>()V

    .line 123
    invoke-virtual {p0, p1, p2}, Lnet/sourceforge/jsocks/Socks5Message;->read(Ljava/io/InputStream;Z)V

    .line 124
    return-void
.end method

.method public static resolveIP()Z
    .locals 1

    .prologue
    .line 258
    sget-boolean v0, Lnet/sourceforge/jsocks/Socks5Message;->doResolveIP:Z

    return v0
.end method

.method public static resolveIP(Z)Z
    .locals 1
    .param p0, "doResolve"    # Z

    .prologue
    .line 268
    sget-boolean v0, Lnet/sourceforge/jsocks/Socks5Message;->doResolveIP:Z

    .line 269
    .local v0, "old":Z
    sput-boolean p0, Lnet/sourceforge/jsocks/Socks5Message;->doResolveIP:Z

    .line 270
    return v0
.end method


# virtual methods
.method public getInetAddress()Ljava/net/InetAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 233
    iget-object v0, p0, Lnet/sourceforge/jsocks/Socks5Message;->ip:Ljava/net/InetAddress;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/jsocks/Socks5Message;->ip:Ljava/net/InetAddress;

    .line 235
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/jsocks/Socks5Message;->host:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lnet/sourceforge/jsocks/Socks5Message;->ip:Ljava/net/InetAddress;

    goto :goto_0
.end method

.method public read(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/jsocks/SocksException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lnet/sourceforge/jsocks/Socks5Message;->read(Ljava/io/InputStream;Z)V

    .line 138
    return-void
.end method

.method public read(Ljava/io/InputStream;Z)V
    .locals 5
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "clientMode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/jsocks/SocksException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 153
    iput-object v3, p0, Lnet/sourceforge/jsocks/Socks5Message;->data:[B

    .line 154
    iput-object v3, p0, Lnet/sourceforge/jsocks/Socks5Message;->ip:Ljava/net/InetAddress;

    .line 156
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 158
    .local v1, "di":Ljava/io/DataInputStream;
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v3

    iput v3, p0, Lnet/sourceforge/jsocks/Socks5Message;->version:I

    .line 159
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v3

    iput v3, p0, Lnet/sourceforge/jsocks/Socks5Message;->command:I

    .line 160
    if-eqz p2, :cond_0

    iget v3, p0, Lnet/sourceforge/jsocks/Socks5Message;->command:I

    if-eqz v3, :cond_0

    .line 161
    new-instance v3, Lnet/sourceforge/jsocks/SocksException;

    iget v4, p0, Lnet/sourceforge/jsocks/Socks5Message;->command:I

    invoke-direct {v3, v4}, Lnet/sourceforge/jsocks/SocksException;-><init>(I)V

    throw v3

    .line 164
    :cond_0
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v2

    .line 165
    .local v2, "reserved":I
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v3

    iput v3, p0, Lnet/sourceforge/jsocks/Socks5Message;->addrType:I

    .line 169
    iget v3, p0, Lnet/sourceforge/jsocks/Socks5Message;->addrType:I

    packed-switch v3, :pswitch_data_0

    .line 187
    :pswitch_0
    new-instance v3, Lnet/sourceforge/jsocks/SocksException;

    const/high16 v4, 0x60000

    invoke-direct {v3, v4}, Lnet/sourceforge/jsocks/SocksException;-><init>(I)V

    throw v3

    .line 171
    :pswitch_1
    const/4 v3, 0x4

    new-array v0, v3, [B

    .line 172
    .local v0, "addr":[B
    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 173
    invoke-static {v0, v4}, Lnet/sourceforge/jsocks/Socks5Message;->bytes2IPV4([BI)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lnet/sourceforge/jsocks/Socks5Message;->host:Ljava/lang/String;

    .line 190
    :goto_0
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v3

    iput v3, p0, Lnet/sourceforge/jsocks/Socks5Message;->port:I

    .line 192
    iget v3, p0, Lnet/sourceforge/jsocks/Socks5Message;->addrType:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    sget-boolean v3, Lnet/sourceforge/jsocks/Socks5Message;->doResolveIP:Z

    if-eqz v3, :cond_1

    .line 194
    :try_start_0
    iget-object v3, p0, Lnet/sourceforge/jsocks/Socks5Message;->host:Ljava/lang/String;

    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    iput-object v3, p0, Lnet/sourceforge/jsocks/Socks5Message;->ip:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :cond_1
    :goto_1
    return-void

    .line 176
    .end local v0    # "addr":[B
    :pswitch_2
    const/16 v3, 0x10

    new-array v0, v3, [B

    .line 177
    .restart local v0    # "addr":[B
    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 178
    invoke-static {v0, v4}, Lnet/sourceforge/jsocks/Socks5Message;->bytes2IPV6([BI)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lnet/sourceforge/jsocks/Socks5Message;->host:Ljava/lang/String;

    goto :goto_0

    .line 182
    .end local v0    # "addr":[B
    :pswitch_3
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v3

    new-array v0, v3, [B

    .line 183
    .restart local v0    # "addr":[B
    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 184
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    iput-object v3, p0, Lnet/sourceforge/jsocks/Socks5Message;->host:Ljava/lang/String;

    goto :goto_0

    .line 195
    :catch_0
    move-exception v3

    goto :goto_1

    .line 169
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const-string v3, "\n"

    .line 242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Socks5Message:\nVN   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lnet/sourceforge/jsocks/Socks5Message;->version:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "CMD  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lnet/sourceforge/jsocks/Socks5Message;->command:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ATYP "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lnet/sourceforge/jsocks/Socks5Message;->addrType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ADDR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/sourceforge/jsocks/Socks5Message;->host:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "PORT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lnet/sourceforge/jsocks/Socks5Message;->port:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, "s":Ljava/lang/String;
    return-object v0
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 5
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/jsocks/SocksException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 206
    iget-object v2, p0, Lnet/sourceforge/jsocks/Socks5Message;->data:[B

    if-nez v2, :cond_0

    .line 209
    iget v2, p0, Lnet/sourceforge/jsocks/Socks5Message;->addrType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 210
    new-instance v0, Lnet/sourceforge/jsocks/Socks5Message;

    iget v2, p0, Lnet/sourceforge/jsocks/Socks5Message;->command:I

    iget-object v3, p0, Lnet/sourceforge/jsocks/Socks5Message;->host:Ljava/lang/String;

    iget v4, p0, Lnet/sourceforge/jsocks/Socks5Message;->port:I

    invoke-direct {v0, v2, v3, v4}, Lnet/sourceforge/jsocks/Socks5Message;-><init>(ILjava/lang/String;I)V

    .line 221
    .local v0, "msg":Lnet/sourceforge/jsocks/Socks5Message;
    :goto_0
    iget-object v2, v0, Lnet/sourceforge/jsocks/Socks5Message;->data:[B

    iput-object v2, p0, Lnet/sourceforge/jsocks/Socks5Message;->data:[B

    .line 223
    .end local v0    # "msg":Lnet/sourceforge/jsocks/Socks5Message;
    :cond_0
    iget-object v2, p0, Lnet/sourceforge/jsocks/Socks5Message;->data:[B

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 224
    return-void

    .line 212
    :cond_1
    iget-object v2, p0, Lnet/sourceforge/jsocks/Socks5Message;->ip:Ljava/net/InetAddress;

    if-nez v2, :cond_2

    .line 214
    :try_start_0
    iget-object v2, p0, Lnet/sourceforge/jsocks/Socks5Message;->host:Ljava/lang/String;

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    iput-object v2, p0, Lnet/sourceforge/jsocks/Socks5Message;->ip:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :cond_2
    new-instance v0, Lnet/sourceforge/jsocks/Socks5Message;

    iget v2, p0, Lnet/sourceforge/jsocks/Socks5Message;->command:I

    iget-object v3, p0, Lnet/sourceforge/jsocks/Socks5Message;->ip:Ljava/net/InetAddress;

    iget v4, p0, Lnet/sourceforge/jsocks/Socks5Message;->port:I

    invoke-direct {v0, v2, v3, v4}, Lnet/sourceforge/jsocks/Socks5Message;-><init>(ILjava/net/InetAddress;I)V

    .restart local v0    # "msg":Lnet/sourceforge/jsocks/Socks5Message;
    goto :goto_0

    .line 215
    .end local v0    # "msg":Lnet/sourceforge/jsocks/Socks5Message;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 216
    .local v1, "uh_ex":Ljava/net/UnknownHostException;
    new-instance v2, Lnet/sourceforge/jsocks/SocksException;

    const/high16 v3, 0x60000

    invoke-direct {v2, v3}, Lnet/sourceforge/jsocks/SocksException;-><init>(I)V

    throw v2
.end method
