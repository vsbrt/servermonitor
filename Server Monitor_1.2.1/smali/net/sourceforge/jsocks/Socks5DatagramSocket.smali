.class public Lnet/sourceforge/jsocks/Socks5DatagramSocket;
.super Ljava/net/DatagramSocket;
.source "Socks5DatagramSocket.java"


# instance fields
.field encapsulation:Lnet/sourceforge/jsocks/UDPEncapsulation;

.field proxy:Lnet/sourceforge/jsocks/Socks5Proxy;

.field relayIP:Ljava/net/InetAddress;

.field relayPort:I

.field private server_mode:Z


# direct methods
.method public constructor <init>()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/jsocks/SocksException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    sget-object v0, Lnet/sourceforge/jsocks/Proxy;->defaultProxy:Lnet/sourceforge/jsocks/Proxy;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lnet/sourceforge/jsocks/Socks5DatagramSocket;-><init>(Lnet/sourceforge/jsocks/Proxy;ILjava/net/InetAddress;)V

    .line 54
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/jsocks/SocksException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    sget-object v0, Lnet/sourceforge/jsocks/Proxy;->defaultProxy:Lnet/sourceforge/jsocks/Proxy;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lnet/sourceforge/jsocks/Socks5DatagramSocket;-><init>(Lnet/sourceforge/jsocks/Proxy;ILjava/net/InetAddress;)V

    .line 66
    return-void
.end method

.method public constructor <init>(ILjava/net/InetAddress;)V
    .locals 1
    .param p1, "port"    # I
    .param p2, "ip"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/jsocks/SocksException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    sget-object v0, Lnet/sourceforge/jsocks/Proxy;->defaultProxy:Lnet/sourceforge/jsocks/Proxy;

    invoke-direct {p0, v0, p1, p2}, Lnet/sourceforge/jsocks/Socks5DatagramSocket;-><init>(Lnet/sourceforge/jsocks/Proxy;ILjava/net/InetAddress;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Lnet/sourceforge/jsocks/Proxy;ILjava/net/InetAddress;)V
    .locals 4
    .param p1, "p"    # Lnet/sourceforge/jsocks/Proxy;
    .param p2, "port"    # I
    .param p3, "ip"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/jsocks/SocksException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    invoke-direct {p0, p2, p3}, Ljava/net/DatagramSocket;-><init>(ILjava/net/InetAddress;)V

    .line 39
    const/4 v1, 0x0

    iput-boolean v1, p0, Lnet/sourceforge/jsocks/Socks5DatagramSocket;->server_mode:Z

    .line 99
    if-nez p1, :cond_0

    new-instance v1, Lnet/sourceforge/jsocks/SocksException;

    const/high16 v2, 0x10000

    invoke-direct {v1, v2}, Lnet/sourceforge/jsocks/SocksException;-><init>(I)V

    throw v1

    .line 100
    :cond_0
    instance-of v1, p1, Lnet/sourceforge/jsocks/Socks5Proxy;

    if-nez v1, :cond_1

    .line 101
    new-instance v1, Lnet/sourceforge/jsocks/SocksException;

    const/4 v2, -0x1

    const-string v3, "Datagram Socket needs Proxy version 5"

    invoke-direct {v1, v2, v3}, Lnet/sourceforge/jsocks/SocksException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 103
    :cond_1
    iget-object v1, p1, Lnet/sourceforge/jsocks/Proxy;->chainProxy:Lnet/sourceforge/jsocks/Proxy;

    if-eqz v1, :cond_2

    .line 104
    new-instance v1, Lnet/sourceforge/jsocks/SocksException;

    const/high16 v2, 0x60000

    const-string v3, "Datagram Sockets do not support proxy chaining."

    invoke-direct {v1, v2, v3}, Lnet/sourceforge/jsocks/SocksException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 107
    :cond_2
    invoke-virtual {p1}, Lnet/sourceforge/jsocks/Proxy;->copy()Lnet/sourceforge/jsocks/Proxy;

    move-result-object v1

    check-cast v1, Lnet/sourceforge/jsocks/Socks5Proxy;

    iput-object v1, p0, Lnet/sourceforge/jsocks/Socks5DatagramSocket;->proxy:Lnet/sourceforge/jsocks/Socks5Proxy;

    .line 109
    iget-object v1, p0, Lnet/sourceforge/jsocks/Socks5DatagramSocket;->proxy:Lnet/sourceforge/jsocks/Socks5Proxy;

    invoke-super {p0}, Ljava/net/DatagramSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-super {p0}, Ljava/net/DatagramSocket;->getLocalPort()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lnet/sourceforge/jsocks/Socks5Proxy;->udpAssociate(Ljava/net/InetAddress;I)Lnet/sourceforge/jsocks/ProxyMessage;

    move-result-object v0

    .line 111
    .local v0, "msg":Lnet/sourceforge/jsocks/ProxyMessage;
    iget-object v1, v0, Lnet/sourceforge/jsocks/ProxyMessage;->ip:Ljava/net/InetAddress;

    iput-object v1, p0, Lnet/sourceforge/jsocks/Socks5DatagramSocket;->relayIP:Ljava/net/InetAddress;

    .line 112
    iget-object v1, p0, Lnet/sourceforge/jsocks/Socks5DatagramSocket;->relayIP:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0.0.0.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lnet/sourceforge/jsocks/Socks5DatagramSocket;->proxy:Lnet/sourceforge/jsocks/Socks5Proxy;

    iget-object v1, v1, Lnet/sourceforge/jsocks/Socks5Proxy;->proxyIP:Ljava/net/InetAddress;

    iput-object v1, p0, Lnet/sourceforge/jsocks/Socks5DatagramSocket;->relayIP:Ljava/net/InetAddress;

    .line 113
    :cond_3
    iget v1, v0, Lnet/sourceforge/jsocks/ProxyMessage;->port:I

    iput v1, p0, Lnet/sourceforge/jsocks/Socks5DatagramSocket;->relayPort:I

    .line 115
    iget-object v1, p0, Lnet/sourceforge/jsocks/Socks5DatagramSocket;->proxy:Lnet/sourceforge/jsocks/Socks5Proxy;

    iget-object v1, v1, Lnet/sourceforge/jsocks/Socks5Proxy;->udp_encapsulation:Lnet/sourceforge/jsocks/UDPEncapsulation;

    iput-object v1, p0, Lnet/sourceforge/jsocks/Socks5DatagramSocket;->encapsulation:Lnet/sourceforge/jsocks/UDPEncapsulation;

    .line 119
    return-void
.end method

.method constructor <init>(ZLnet/sourceforge/jsocks/UDPEncapsulation;Ljava/net/InetAddress;I)V
    .locals 1
    .param p1, "server_mode"    # Z
    .param p2, "encapsulation"    # Lnet/sourceforge/jsocks/UDPEncapsulation;
    .param p3, "relayIP"    # Ljava/net/InetAddress;
    .param p4, "relayPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/net/DatagramSocket;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sourceforge/jsocks/Socks5DatagramSocket;->server_mode:Z

    .line 128
    iput-boolean p1, p0, Lnet/sourceforge/jsocks/Socks5DatagramSocket;->server_mode:Z

    .line 129
    iput-object p3, p0, Lnet/sourceforge/jsocks/Socks5DatagramSocket;->relayIP:Ljava/net/InetAddress;

    .line 130
    iput p4, p0, Lnet/sourceforge/jsocks/Socks5DatagramSocket;->relayPort:I

    .line 131
    iput-object p2, p0, Lnet/sourceforge/jsocks/Socks5DatagramSocket;->encapsulation:Lnet/sourceforge/jsocks/UDPEncapsulation;

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sourceforge/jsocks/Socks5DatagramSocket;->proxy:Lnet/sourceforge/jsocks/Socks5Proxy;

    .line 133
    return-void
.end method

.method private formHeader(Ljava/net/InetAddress;I)[B
    .locals 3
    .param p1, "ip"    # Ljava/net/InetAddress;
    .param p2, "port"    # I

    .prologue
    const/4 v2, 0x0

    .line 341
    new-instance v0, Lnet/sourceforge/jsocks/Socks5Message;

    invoke-direct {v0, v2, p1, p2}, Lnet/sourceforge/jsocks/Socks5Message;-><init>(ILjava/net/InetAddress;I)V

    .line 342
    .local v0, "request":Lnet/sourceforge/jsocks/Socks5Message;
    iget-object v1, v0, Lnet/sourceforge/jsocks/Socks5Message;->data:[B

    aput-byte v2, v1, v2

    .line 343
    iget-object v1, v0, Lnet/sourceforge/jsocks/Socks5Message;->data:[B

    return-object v1
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 288
    iget-boolean v0, p0, Lnet/sourceforge/jsocks/Socks5DatagramSocket;->server_mode:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/jsocks/Socks5DatagramSocket;->proxy:Lnet/sourceforge/jsocks/Socks5Proxy;

    invoke-virtual {v0}, Lnet/sourceforge/jsocks/Socks5Proxy;->endSession()V

    .line 289
    :cond_0
    invoke-super {p0}, Ljava/net/DatagramSocket;->close()V

    .line 290
    return-void
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 280
    iget-boolean v0, p0, Lnet/sourceforge/jsocks/Socks5DatagramSocket;->server_mode:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Ljava/net/DatagramSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 281
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/jsocks/Socks5DatagramSocket;->relayIP:Ljava/net/InetAddress;

    goto :goto_0
.end method

.method public getLocalPort()I
    .locals 1

    .prologue
    .line 270
    iget-boolean v0, p0, Lnet/sourceforge/jsocks/Socks5DatagramSocket;->server_mode:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Ljava/net/DatagramSocket;->getLocalPort()I

    move-result v0

    .line 271
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lnet/sourceforge/jsocks/Socks5DatagramSocket;->relayPort:I

    goto :goto_0
.end method

.method public isProxyAlive(I)Z
    .locals 6
    .param p1, "timeout"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 318
    iget-boolean v3, p0, Lnet/sourceforge/jsocks/Socks5DatagramSocket;->server_mode:Z

    if-eqz v3, :cond_0

    move v3, v4

    .line 333
    :goto_0
    return v3

    .line 319
    :cond_0
    iget-object v3, p0, Lnet/sourceforge/jsocks/Socks5DatagramSocket;->proxy:Lnet/sourceforge/jsocks/Socks5Proxy;

    if-eqz v3, :cond_2

    .line 321
    :try_start_0
    iget-object v3, p0, Lnet/sourceforge/jsocks/Socks5DatagramSocket;->proxy:Lnet/sourceforge/jsocks/Socks5Proxy;

    iget-object v3, v3, Lnet/sourceforge/jsocks/Socks5Proxy;->proxySocket:Ljava/net/Socket;

    invoke-virtual {v3, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 323
    iget-object v3, p0, Lnet/sourceforge/jsocks/Socks5DatagramSocket;->proxy:Lnet/sourceforge/jsocks/Socks5Proxy;

    iget-object v3, v3, Lnet/sourceforge/jsocks/Socks5Proxy;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 324
    .local v0, "eof":I
    if-gez v0, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v5

    .line 325
    goto :goto_0

    .line 327
    .end local v0    # "eof":I
    :catch_0
    move-exception v3

    move-object v1, v3

    .local v1, "iioe":Ljava/io/InterruptedIOException;
    move v3, v5

    .line 328
    goto :goto_0

    .line 329
    .end local v1    # "iioe":Ljava/io/InterruptedIOException;
    :catch_1
    move-exception v3

    move-object v2, v3

    .local v2, "ioe":Ljava/io/IOException;
    move v3, v4

    .line 330
    goto :goto_0

    .end local v2    # "ioe":Ljava/io/IOException;
    :cond_2
    move v3, v4

    .line 333
    goto :goto_0
.end method

.method public receive(Ljava/net/DatagramPacket;)V
    .locals 12
    .param p1, "dp"    # Ljava/net/DatagramPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 200
    invoke-super {p0, p1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 202
    iget-boolean v10, p0, Lnet/sourceforge/jsocks/Socks5DatagramSocket;->server_mode:Z

    if-eqz v10, :cond_7

    .line 204
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v4

    .line 205
    .local v4, "init_length":I
    invoke-virtual {p0}, Lnet/sourceforge/jsocks/Socks5DatagramSocket;->getSoTimeout()I

    move-result v3

    .line 206
    .local v3, "initTimeout":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 209
    .local v8, "startTime":J
    :goto_0
    iget-object v10, p0, Lnet/sourceforge/jsocks/Socks5DatagramSocket;->relayIP:Ljava/net/InetAddress;

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    iget v10, p0, Lnet/sourceforge/jsocks/Socks5DatagramSocket;->relayPort:I

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v11

    if-eq v10, v11, :cond_3

    .line 212
    :cond_0
    invoke-virtual {p1, v4}, Ljava/net/DatagramPacket;->setLength(I)V

    .line 217
    if-eqz v3, :cond_2

    .line 218
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v8

    long-to-int v10, v10

    sub-int v6, v3, v10

    .line 220
    .local v6, "newTimeout":I
    if-gtz v6, :cond_1

    new-instance v10, Ljava/io/InterruptedIOException;

    const-string v11, "In Socks5DatagramSocket->receive()"

    invoke-direct {v10, v11}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 222
    :cond_1
    invoke-virtual {p0, v6}, Lnet/sourceforge/jsocks/Socks5DatagramSocket;->setSoTimeout(I)V

    .line 225
    .end local v6    # "newTimeout":I
    :cond_2
    invoke-super {p0, p1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    goto :goto_0

    .line 229
    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {p0, v3}, Lnet/sourceforge/jsocks/Socks5DatagramSocket;->setSoTimeout(I)V

    .line 237
    .end local v3    # "initTimeout":I
    .end local v4    # "init_length":I
    .end local v8    # "startTime":J
    :cond_4
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v1

    .line 239
    .local v1, "data":[B
    iget-object v10, p0, Lnet/sourceforge/jsocks/Socks5DatagramSocket;->encapsulation:Lnet/sourceforge/jsocks/UDPEncapsulation;

    if-eqz v10, :cond_5

    .line 240
    iget-object v10, p0, Lnet/sourceforge/jsocks/Socks5DatagramSocket;->encapsulation:Lnet/sourceforge/jsocks/UDPEncapsulation;

    const/4 v11, 0x0

    invoke-interface {v10, v1, v11}, Lnet/sourceforge/jsocks/UDPEncapsulation;->udpEncapsulate([BZ)[B

    move-result-object v1

    .line 242
    :cond_5
    const/4 v7, 0x0

    .line 245
    .local v7, "offset":I
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v10

    invoke-direct {v0, v1, v7, v10}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 249
    .local v0, "bIn":Ljava/io/ByteArrayInputStream;
    new-instance v5, Lnet/sourceforge/jsocks/Socks5Message;

    invoke-direct {v5, v0}, Lnet/sourceforge/jsocks/Socks5Message;-><init>(Ljava/io/InputStream;)V

    .line 250
    .local v5, "msg":Lnet/sourceforge/jsocks/ProxyMessage;
    iget v10, v5, Lnet/sourceforge/jsocks/ProxyMessage;->port:I

    invoke-virtual {p1, v10}, Ljava/net/DatagramPacket;->setPort(I)V

    .line 251
    invoke-virtual {v5}, Lnet/sourceforge/jsocks/ProxyMessage;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 254
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v2

    .line 256
    .local v2, "data_length":I
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v10

    add-int/2addr v10, v7

    sub-int/2addr v10, v2

    invoke-static {v1, v10, v1, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 260
    invoke-virtual {p1, v2}, Ljava/net/DatagramPacket;->setLength(I)V

    .line 261
    .end local v0    # "bIn":Ljava/io/ByteArrayInputStream;
    .end local v1    # "data":[B
    .end local v2    # "data_length":I
    .end local v5    # "msg":Lnet/sourceforge/jsocks/ProxyMessage;
    .end local v7    # "offset":I
    :cond_6
    :goto_1
    return-void

    .line 231
    :cond_7
    iget-object v10, p0, Lnet/sourceforge/jsocks/Socks5DatagramSocket;->relayIP:Ljava/net/InetAddress;

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    iget v10, p0, Lnet/sourceforge/jsocks/Socks5DatagramSocket;->relayPort:I

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v11

    if-eq v10, v11, :cond_4

    goto :goto_1
.end method

.method public send(Ljava/net/DatagramPacket;)V
    .locals 7
    .param p1, "dp"    # Ljava/net/DatagramPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 150
    iget-boolean v3, p0, Lnet/sourceforge/jsocks/Socks5DatagramSocket;->server_mode:Z

    if-nez v3, :cond_0

    .line 151
    invoke-super {p0, p1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 168
    :goto_0
    return-void

    .line 156
    :cond_0
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lnet/sourceforge/jsocks/Socks5DatagramSocket;->formHeader(Ljava/net/InetAddress;I)[B

    move-result-object v2

    .line 157
    .local v2, "head":[B
    array-length v3, v2

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v4

    add-int/2addr v3, v4

    new-array v0, v3, [B

    .line 158
    .local v0, "buf":[B
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v1

    .line 160
    .local v1, "data":[B
    array-length v3, v2

    invoke-static {v2, v5, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 162
    array-length v3, v2

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v4

    invoke-static {v1, v5, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 164
    iget-object v3, p0, Lnet/sourceforge/jsocks/Socks5DatagramSocket;->encapsulation:Lnet/sourceforge/jsocks/UDPEncapsulation;

    if-eqz v3, :cond_1

    .line 165
    iget-object v3, p0, Lnet/sourceforge/jsocks/Socks5DatagramSocket;->encapsulation:Lnet/sourceforge/jsocks/UDPEncapsulation;

    const/4 v4, 0x1

    invoke-interface {v3, v0, v4}, Lnet/sourceforge/jsocks/UDPEncapsulation;->udpEncapsulate([BZ)[B

    move-result-object v0

    .line 167
    :cond_1
    new-instance v3, Ljava/net/DatagramPacket;

    array-length v4, v0

    iget-object v5, p0, Lnet/sourceforge/jsocks/Socks5DatagramSocket;->relayIP:Ljava/net/InetAddress;

    iget v6, p0, Lnet/sourceforge/jsocks/Socks5DatagramSocket;->relayPort:I

    invoke-direct {v3, v0, v4, v5, v6}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    invoke-super {p0, v3}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    goto :goto_0
.end method

.method public send(Ljava/net/DatagramPacket;Ljava/lang/String;)V
    .locals 1
    .param p1, "dp"    # Ljava/net/DatagramPacket;
    .param p2, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    invoke-static {p2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 186
    invoke-super {p0, p1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 187
    return-void
.end method
