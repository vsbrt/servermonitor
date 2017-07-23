.class public Lnet/sourceforge/jsocks/SocksServerSocket;
.super Ljava/net/ServerSocket;
.source "SocksServerSocket.java"


# instance fields
.field doing_direct:Z

.field protected localHost:Ljava/lang/String;

.field protected localIP:Ljava/net/InetAddress;

.field protected localPort:I

.field protected proxy:Lnet/sourceforge/jsocks/Proxy;

.field remoteAddr:Ljava/net/InetAddress;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/jsocks/SocksException;,
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, v0}, Ljava/net/ServerSocket;-><init>(I)V

    .line 17
    iput-boolean v0, p0, Lnet/sourceforge/jsocks/SocksServerSocket;->doing_direct:Z

    .line 30
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lnet/sourceforge/jsocks/SocksServerSocket;->remoteAddr:Ljava/net/InetAddress;

    .line 31
    invoke-direct {p0}, Lnet/sourceforge/jsocks/SocksServerSocket;->doDirect()V

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;I)V
    .locals 1
    .param p1, "ip"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/jsocks/SocksException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    sget-object v0, Lnet/sourceforge/jsocks/Proxy;->defaultProxy:Lnet/sourceforge/jsocks/Proxy;

    invoke-direct {p0, v0, p1, p2}, Lnet/sourceforge/jsocks/SocksServerSocket;-><init>(Lnet/sourceforge/jsocks/Proxy;Ljava/net/InetAddress;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Lnet/sourceforge/jsocks/Proxy;Ljava/net/InetAddress;I)V
    .locals 1
    .param p1, "p"    # Lnet/sourceforge/jsocks/Proxy;
    .param p2, "ip"    # Ljava/net/InetAddress;
    .param p3, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/jsocks/SocksException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, v0}, Ljava/net/ServerSocket;-><init>(I)V

    .line 17
    iput-boolean v0, p0, Lnet/sourceforge/jsocks/SocksServerSocket;->doing_direct:Z

    .line 55
    iput-object p2, p0, Lnet/sourceforge/jsocks/SocksServerSocket;->remoteAddr:Ljava/net/InetAddress;

    .line 56
    invoke-direct {p0}, Lnet/sourceforge/jsocks/SocksServerSocket;->doDirect()V

    .line 57
    return-void
.end method

.method private doDirect()V
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sourceforge/jsocks/SocksServerSocket;->doing_direct:Z

    .line 159
    invoke-super {p0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v0

    iput v0, p0, Lnet/sourceforge/jsocks/SocksServerSocket;->localPort:I

    .line 160
    invoke-super {p0}, Ljava/net/ServerSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lnet/sourceforge/jsocks/SocksServerSocket;->localIP:Ljava/net/InetAddress;

    .line 161
    iget-object v0, p0, Lnet/sourceforge/jsocks/SocksServerSocket;->localIP:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/sourceforge/jsocks/SocksServerSocket;->localHost:Ljava/lang/String;

    .line 162
    return-void
.end method


# virtual methods
.method public accept()Ljava/net/Socket;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 66
    iget-boolean v2, p0, Lnet/sourceforge/jsocks/SocksServerSocket;->doing_direct:Z

    if-nez v2, :cond_3

    .line 67
    iget-object v2, p0, Lnet/sourceforge/jsocks/SocksServerSocket;->proxy:Lnet/sourceforge/jsocks/Proxy;

    if-nez v2, :cond_0

    move-object v2, v6

    .line 91
    :goto_0
    return-object v2

    .line 69
    :cond_0
    iget-object v2, p0, Lnet/sourceforge/jsocks/SocksServerSocket;->proxy:Lnet/sourceforge/jsocks/Proxy;

    invoke-virtual {v2}, Lnet/sourceforge/jsocks/Proxy;->accept()Lnet/sourceforge/jsocks/ProxyMessage;

    move-result-object v0

    .line 70
    .local v0, "msg":Lnet/sourceforge/jsocks/ProxyMessage;
    iget-object v2, v0, Lnet/sourceforge/jsocks/ProxyMessage;->ip:Ljava/net/InetAddress;

    if-nez v2, :cond_1

    new-instance v2, Lnet/sourceforge/jsocks/SocksSocket;

    iget-object v3, v0, Lnet/sourceforge/jsocks/ProxyMessage;->host:Ljava/lang/String;

    iget v4, v0, Lnet/sourceforge/jsocks/ProxyMessage;->port:I

    iget-object v5, p0, Lnet/sourceforge/jsocks/SocksServerSocket;->proxy:Lnet/sourceforge/jsocks/Proxy;

    invoke-direct {v2, v3, v4, v5}, Lnet/sourceforge/jsocks/SocksSocket;-><init>(Ljava/lang/String;ILnet/sourceforge/jsocks/Proxy;)V

    move-object v1, v2

    .line 73
    .local v1, "s":Ljava/net/Socket;
    :goto_1
    iget-object v2, p0, Lnet/sourceforge/jsocks/SocksServerSocket;->proxy:Lnet/sourceforge/jsocks/Proxy;

    iget-object v2, v2, Lnet/sourceforge/jsocks/Proxy;->proxySocket:Ljava/net/Socket;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 89
    .end local v0    # "msg":Lnet/sourceforge/jsocks/ProxyMessage;
    :goto_2
    iput-object v6, p0, Lnet/sourceforge/jsocks/SocksServerSocket;->proxy:Lnet/sourceforge/jsocks/Proxy;

    move-object v2, v1

    .line 91
    goto :goto_0

    .line 70
    .end local v1    # "s":Ljava/net/Socket;
    .restart local v0    # "msg":Lnet/sourceforge/jsocks/ProxyMessage;
    :cond_1
    new-instance v2, Lnet/sourceforge/jsocks/SocksSocket;

    iget-object v3, v0, Lnet/sourceforge/jsocks/ProxyMessage;->ip:Ljava/net/InetAddress;

    iget v4, v0, Lnet/sourceforge/jsocks/ProxyMessage;->port:I

    iget-object v5, p0, Lnet/sourceforge/jsocks/SocksServerSocket;->proxy:Lnet/sourceforge/jsocks/Proxy;

    invoke-direct {v2, v3, v4, v5}, Lnet/sourceforge/jsocks/SocksSocket;-><init>(Ljava/net/InetAddress;ILnet/sourceforge/jsocks/Proxy;)V

    move-object v1, v2

    goto :goto_1

    .line 85
    .end local v0    # "msg":Lnet/sourceforge/jsocks/ProxyMessage;
    .restart local v1    # "s":Ljava/net/Socket;
    :cond_2
    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 79
    .end local v1    # "s":Ljava/net/Socket;
    :cond_3
    invoke-super {p0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    .line 80
    .restart local v1    # "s":Ljava/net/Socket;
    invoke-virtual {v1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    iget-object v3, p0, Lnet/sourceforge/jsocks/SocksServerSocket;->remoteAddr:Ljava/net/InetAddress;

    invoke-virtual {v2, v3}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    invoke-super {p0}, Ljava/net/ServerSocket;->close()V

    .line 101
    iget-object v0, p0, Lnet/sourceforge/jsocks/SocksServerSocket;->proxy:Lnet/sourceforge/jsocks/Proxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/jsocks/SocksServerSocket;->proxy:Lnet/sourceforge/jsocks/Proxy;

    invoke-virtual {v0}, Lnet/sourceforge/jsocks/Proxy;->endSession()V

    .line 102
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sourceforge/jsocks/SocksServerSocket;->proxy:Lnet/sourceforge/jsocks/Proxy;

    .line 103
    return-void
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lnet/sourceforge/jsocks/SocksServerSocket;->localHost:Ljava/lang/String;

    return-object v0
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .locals 2

    .prologue
    .line 123
    iget-object v1, p0, Lnet/sourceforge/jsocks/SocksServerSocket;->localIP:Ljava/net/InetAddress;

    if-nez v1, :cond_0

    .line 125
    :try_start_0
    iget-object v1, p0, Lnet/sourceforge/jsocks/SocksServerSocket;->localHost:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, p0, Lnet/sourceforge/jsocks/SocksServerSocket;->localIP:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :cond_0
    iget-object v1, p0, Lnet/sourceforge/jsocks/SocksServerSocket;->localIP:Ljava/net/InetAddress;

    :goto_0
    return-object v1

    .line 126
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 127
    .local v0, "e":Ljava/net/UnknownHostException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLocalPort()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lnet/sourceforge/jsocks/SocksServerSocket;->localPort:I

    return v0
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
    .line 149
    invoke-super {p0, p1}, Ljava/net/ServerSocket;->setSoTimeout(I)V

    .line 150
    iget-boolean v0, p0, Lnet/sourceforge/jsocks/SocksServerSocket;->doing_direct:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/jsocks/SocksServerSocket;->proxy:Lnet/sourceforge/jsocks/Proxy;

    iget-object v0, v0, Lnet/sourceforge/jsocks/Proxy;->proxySocket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 151
    :cond_0
    return-void
.end method
