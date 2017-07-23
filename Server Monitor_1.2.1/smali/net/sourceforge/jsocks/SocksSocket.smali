.class public Lnet/sourceforge/jsocks/SocksSocket;
.super Ljava/net/Socket;
.source "SocksSocket.java"


# instance fields
.field private directSock:Ljava/net/Socket;

.field protected localHost:Ljava/lang/String;

.field protected localIP:Ljava/net/InetAddress;

.field protected localPort:I

.field protected proxy:Lnet/sourceforge/jsocks/Proxy;

.field protected remoteHost:Ljava/lang/String;

.field protected remoteIP:Ljava/net/InetAddress;

.field protected remotePort:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/jsocks/SocksException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 63
    sget-object v0, Lnet/sourceforge/jsocks/Proxy;->defaultProxy:Lnet/sourceforge/jsocks/Proxy;

    invoke-direct {p0, v0, p1, p2}, Lnet/sourceforge/jsocks/SocksSocket;-><init>(Lnet/sourceforge/jsocks/Proxy;Ljava/lang/String;I)V

    .line 64
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ILnet/sourceforge/jsocks/Proxy;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "proxy"    # Lnet/sourceforge/jsocks/Proxy;

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/net/Socket;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sourceforge/jsocks/SocksSocket;->directSock:Ljava/net/Socket;

    .line 123
    iput p2, p0, Lnet/sourceforge/jsocks/SocksSocket;->remotePort:I

    .line 124
    iput-object p3, p0, Lnet/sourceforge/jsocks/SocksSocket;->proxy:Lnet/sourceforge/jsocks/Proxy;

    .line 125
    iget-object v0, p3, Lnet/sourceforge/jsocks/Proxy;->proxySocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lnet/sourceforge/jsocks/SocksSocket;->localIP:Ljava/net/InetAddress;

    .line 126
    iget-object v0, p3, Lnet/sourceforge/jsocks/Proxy;->proxySocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalPort()I

    move-result v0

    iput v0, p0, Lnet/sourceforge/jsocks/SocksSocket;->localPort:I

    .line 127
    iput-object p1, p0, Lnet/sourceforge/jsocks/SocksSocket;->remoteHost:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;I)V
    .locals 1
    .param p1, "ip"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/jsocks/SocksException;
        }
    .end annotation

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/net/Socket;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sourceforge/jsocks/SocksSocket;->directSock:Ljava/net/Socket;

    .line 111
    iput-object p1, p0, Lnet/sourceforge/jsocks/SocksSocket;->remoteIP:Ljava/net/InetAddress;

    .line 112
    iput p2, p0, Lnet/sourceforge/jsocks/SocksSocket;->remotePort:I

    .line 113
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/sourceforge/jsocks/SocksSocket;->remoteHost:Ljava/lang/String;

    .line 114
    invoke-direct {p0}, Lnet/sourceforge/jsocks/SocksSocket;->doDirect()V

    .line 115
    return-void
.end method

.method protected constructor <init>(Ljava/net/InetAddress;ILnet/sourceforge/jsocks/Proxy;)V
    .locals 1
    .param p1, "ip"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "proxy"    # Lnet/sourceforge/jsocks/Proxy;

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/net/Socket;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sourceforge/jsocks/SocksSocket;->directSock:Ljava/net/Socket;

    .line 130
    iput-object p1, p0, Lnet/sourceforge/jsocks/SocksSocket;->remoteIP:Ljava/net/InetAddress;

    .line 131
    iput p2, p0, Lnet/sourceforge/jsocks/SocksSocket;->remotePort:I

    .line 132
    iput-object p3, p0, Lnet/sourceforge/jsocks/SocksSocket;->proxy:Lnet/sourceforge/jsocks/Proxy;

    .line 133
    iget-object v0, p3, Lnet/sourceforge/jsocks/Proxy;->proxySocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lnet/sourceforge/jsocks/SocksSocket;->localIP:Ljava/net/InetAddress;

    .line 134
    iget-object v0, p3, Lnet/sourceforge/jsocks/Proxy;->proxySocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalPort()I

    move-result v0

    iput v0, p0, Lnet/sourceforge/jsocks/SocksSocket;->localPort:I

    .line 135
    iget-object v0, p0, Lnet/sourceforge/jsocks/SocksSocket;->remoteIP:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/sourceforge/jsocks/SocksSocket;->remoteHost:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public constructor <init>(Lnet/sourceforge/jsocks/Proxy;Ljava/lang/String;I)V
    .locals 1
    .param p1, "p"    # Lnet/sourceforge/jsocks/Proxy;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/jsocks/SocksException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/net/Socket;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sourceforge/jsocks/SocksSocket;->directSock:Ljava/net/Socket;

    .line 97
    iput-object p2, p0, Lnet/sourceforge/jsocks/SocksSocket;->remoteHost:Ljava/lang/String;

    .line 98
    iput p3, p0, Lnet/sourceforge/jsocks/SocksSocket;->remotePort:I

    .line 99
    invoke-static {p2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lnet/sourceforge/jsocks/SocksSocket;->remoteIP:Ljava/net/InetAddress;

    .line 100
    invoke-direct {p0}, Lnet/sourceforge/jsocks/SocksSocket;->doDirect()V

    .line 101
    return-void
.end method

.method private doDirect()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/jsocks/SocksException;
        }
    .end annotation

    .prologue
    .line 279
    :try_start_0
    new-instance v1, Ljava/net/Socket;

    iget-object v2, p0, Lnet/sourceforge/jsocks/SocksSocket;->remoteIP:Ljava/net/InetAddress;

    iget v3, p0, Lnet/sourceforge/jsocks/SocksSocket;->remotePort:I

    invoke-direct {v1, v2, v3}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;I)V

    iput-object v1, p0, Lnet/sourceforge/jsocks/SocksSocket;->directSock:Ljava/net/Socket;

    .line 280
    iget-object v1, p0, Lnet/sourceforge/jsocks/SocksSocket;->proxy:Lnet/sourceforge/jsocks/Proxy;

    iget-object v2, p0, Lnet/sourceforge/jsocks/SocksSocket;->directSock:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iput-object v2, v1, Lnet/sourceforge/jsocks/Proxy;->out:Ljava/io/OutputStream;

    .line 281
    iget-object v1, p0, Lnet/sourceforge/jsocks/SocksSocket;->proxy:Lnet/sourceforge/jsocks/Proxy;

    iget-object v2, p0, Lnet/sourceforge/jsocks/SocksSocket;->directSock:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, v1, Lnet/sourceforge/jsocks/Proxy;->in:Ljava/io/InputStream;

    .line 282
    iget-object v1, p0, Lnet/sourceforge/jsocks/SocksSocket;->proxy:Lnet/sourceforge/jsocks/Proxy;

    iget-object v2, p0, Lnet/sourceforge/jsocks/SocksSocket;->directSock:Ljava/net/Socket;

    iput-object v2, v1, Lnet/sourceforge/jsocks/Proxy;->proxySocket:Ljava/net/Socket;

    .line 283
    iget-object v1, p0, Lnet/sourceforge/jsocks/SocksSocket;->directSock:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, p0, Lnet/sourceforge/jsocks/SocksSocket;->localIP:Ljava/net/InetAddress;

    .line 284
    iget-object v1, p0, Lnet/sourceforge/jsocks/SocksSocket;->directSock:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getLocalPort()I

    move-result v1

    iput v1, p0, Lnet/sourceforge/jsocks/SocksSocket;->localPort:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    return-void

    .line 285
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 286
    .local v0, "io_ex":Ljava/io/IOException;
    new-instance v1, Lnet/sourceforge/jsocks/SocksException;

    const/high16 v2, 0x70000

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Direct connect failed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lnet/sourceforge/jsocks/SocksException;-><init>(ILjava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lnet/sourceforge/jsocks/SocksSocket;->proxy:Lnet/sourceforge/jsocks/Proxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/jsocks/SocksSocket;->proxy:Lnet/sourceforge/jsocks/Proxy;

    invoke-virtual {v0}, Lnet/sourceforge/jsocks/Proxy;->endSession()V

    .line 143
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sourceforge/jsocks/SocksSocket;->proxy:Lnet/sourceforge/jsocks/Proxy;

    .line 144
    return-void
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lnet/sourceforge/jsocks/SocksSocket;->remoteHost:Ljava/lang/String;

    return-object v0
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .locals 2

    .prologue
    .line 180
    iget-object v1, p0, Lnet/sourceforge/jsocks/SocksSocket;->remoteIP:Ljava/net/InetAddress;

    if-nez v1, :cond_0

    .line 182
    :try_start_0
    iget-object v1, p0, Lnet/sourceforge/jsocks/SocksSocket;->remoteHost:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, p0, Lnet/sourceforge/jsocks/SocksSocket;->remoteIP:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :cond_0
    iget-object v1, p0, Lnet/sourceforge/jsocks/SocksSocket;->remoteIP:Ljava/net/InetAddress;

    :goto_0
    return-object v1

    .line 183
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 184
    .local v0, "e":Ljava/net/UnknownHostException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lnet/sourceforge/jsocks/SocksSocket;->proxy:Lnet/sourceforge/jsocks/Proxy;

    iget-object v0, v0, Lnet/sourceforge/jsocks/Proxy;->in:Ljava/io/InputStream;

    return-object v0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .locals 2

    .prologue
    .line 207
    iget-object v1, p0, Lnet/sourceforge/jsocks/SocksSocket;->localIP:Ljava/net/InetAddress;

    if-nez v1, :cond_0

    .line 209
    :try_start_0
    iget-object v1, p0, Lnet/sourceforge/jsocks/SocksSocket;->localHost:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, p0, Lnet/sourceforge/jsocks/SocksSocket;->localIP:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :cond_0
    iget-object v1, p0, Lnet/sourceforge/jsocks/SocksSocket;->localIP:Ljava/net/InetAddress;

    :goto_0
    return-object v1

    .line 210
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 211
    .local v0, "e":Ljava/net/UnknownHostException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLocalHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lnet/sourceforge/jsocks/SocksSocket;->localHost:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalPort()I
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Lnet/sourceforge/jsocks/SocksSocket;->localPort:I

    return v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lnet/sourceforge/jsocks/SocksSocket;->proxy:Lnet/sourceforge/jsocks/Proxy;

    iget-object v0, v0, Lnet/sourceforge/jsocks/Proxy;->out:Ljava/io/OutputStream;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lnet/sourceforge/jsocks/SocksSocket;->remotePort:I

    return v0
.end method

.method public getSoLinger(I)I
    .locals 1
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 236
    iget-object v0, p0, Lnet/sourceforge/jsocks/SocksSocket;->proxy:Lnet/sourceforge/jsocks/Proxy;

    iget-object v0, v0, Lnet/sourceforge/jsocks/Proxy;->proxySocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getSoLinger()I

    move-result v0

    return v0
.end method

.method public getSoTimeout(I)I
    .locals 1
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 248
    iget-object v0, p0, Lnet/sourceforge/jsocks/SocksSocket;->proxy:Lnet/sourceforge/jsocks/Proxy;

    iget-object v0, v0, Lnet/sourceforge/jsocks/Proxy;->proxySocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getSoTimeout()I

    move-result v0

    return v0
.end method

.method public getTcpNoDelay()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 260
    iget-object v0, p0, Lnet/sourceforge/jsocks/SocksSocket;->proxy:Lnet/sourceforge/jsocks/Proxy;

    iget-object v0, v0, Lnet/sourceforge/jsocks/Proxy;->proxySocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getTcpNoDelay()Z

    move-result v0

    return v0
.end method

.method public setSoLinger(ZI)V
    .locals 1
    .param p1, "on"    # Z
    .param p2, "val"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 230
    iget-object v0, p0, Lnet/sourceforge/jsocks/SocksSocket;->proxy:Lnet/sourceforge/jsocks/Proxy;

    iget-object v0, v0, Lnet/sourceforge/jsocks/Proxy;->proxySocket:Ljava/net/Socket;

    invoke-virtual {v0, p1, p2}, Ljava/net/Socket;->setSoLinger(ZI)V

    .line 231
    return-void
.end method

.method public setSoTimeout(I)V
    .locals 1
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 242
    iget-object v0, p0, Lnet/sourceforge/jsocks/SocksSocket;->proxy:Lnet/sourceforge/jsocks/Proxy;

    iget-object v0, v0, Lnet/sourceforge/jsocks/Proxy;->proxySocket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 243
    return-void
.end method

.method public setTcpNoDelay(Z)V
    .locals 1
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 254
    iget-object v0, p0, Lnet/sourceforge/jsocks/SocksSocket;->proxy:Lnet/sourceforge/jsocks/Proxy;

    iget-object v0, v0, Lnet/sourceforge/jsocks/Proxy;->proxySocket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 255
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lnet/sourceforge/jsocks/SocksSocket;->directSock:Ljava/net/Socket;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Direct connection:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/sourceforge/jsocks/SocksSocket;->directSock:Ljava/net/Socket;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 268
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Proxy:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/sourceforge/jsocks/SocksSocket;->proxy:Lnet/sourceforge/jsocks/Proxy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "addr:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/sourceforge/jsocks/SocksSocket;->remoteHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",port:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/sourceforge/jsocks/SocksSocket;->remotePort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",localport:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/sourceforge/jsocks/SocksSocket;->localPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
