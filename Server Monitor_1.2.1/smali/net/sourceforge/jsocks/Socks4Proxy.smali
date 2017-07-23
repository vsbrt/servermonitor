.class public Lnet/sourceforge/jsocks/Socks4Proxy;
.super Lnet/sourceforge/jsocks/Proxy;
.source "Socks4Proxy.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field user:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "proxyHost"    # Ljava/lang/String;
    .param p2, "proxyPort"    # I
    .param p3, "user"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lnet/sourceforge/jsocks/Proxy;-><init>(Ljava/lang/String;I)V

    .line 30
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnet/sourceforge/jsocks/Socks4Proxy;->user:Ljava/lang/String;

    .line 31
    const/4 v0, 0x4

    iput v0, p0, Lnet/sourceforge/jsocks/Socks4Proxy;->version:I

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;ILjava/lang/String;)V
    .locals 1
    .param p1, "proxyIP"    # Ljava/net/InetAddress;
    .param p2, "proxyPort"    # I
    .param p3, "user"    # Ljava/lang/String;

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lnet/sourceforge/jsocks/Socks4Proxy;-><init>(Lnet/sourceforge/jsocks/Proxy;Ljava/net/InetAddress;ILjava/lang/String;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Lnet/sourceforge/jsocks/Proxy;Ljava/net/InetAddress;ILjava/lang/String;)V
    .locals 1
    .param p1, "p"    # Lnet/sourceforge/jsocks/Proxy;
    .param p2, "proxyIP"    # Ljava/net/InetAddress;
    .param p3, "proxyPort"    # I
    .param p4, "user"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lnet/sourceforge/jsocks/Proxy;-><init>(Lnet/sourceforge/jsocks/Proxy;Ljava/net/InetAddress;I)V

    .line 43
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnet/sourceforge/jsocks/Socks4Proxy;->user:Ljava/lang/String;

    .line 44
    const/4 v0, 0x4

    iput v0, p0, Lnet/sourceforge/jsocks/Socks4Proxy;->version:I

    .line 45
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 65
    new-instance v0, Lnet/sourceforge/jsocks/Socks4Proxy;

    iget-object v1, p0, Lnet/sourceforge/jsocks/Socks4Proxy;->proxyIP:Ljava/net/InetAddress;

    iget v2, p0, Lnet/sourceforge/jsocks/Socks4Proxy;->proxyPort:I

    iget-object v3, p0, Lnet/sourceforge/jsocks/Socks4Proxy;->user:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lnet/sourceforge/jsocks/Socks4Proxy;-><init>(Ljava/net/InetAddress;ILjava/lang/String;)V

    .line 66
    .local v0, "newProxy":Lnet/sourceforge/jsocks/Socks4Proxy;
    iget-object v1, p0, Lnet/sourceforge/jsocks/Socks4Proxy;->chainProxy:Lnet/sourceforge/jsocks/Proxy;

    iput-object v1, v0, Lnet/sourceforge/jsocks/Socks4Proxy;->chainProxy:Lnet/sourceforge/jsocks/Proxy;

    .line 67
    return-object v0
.end method

.method protected copy()Lnet/sourceforge/jsocks/Proxy;
    .locals 4

    .prologue
    .line 79
    new-instance v0, Lnet/sourceforge/jsocks/Socks4Proxy;

    iget-object v1, p0, Lnet/sourceforge/jsocks/Socks4Proxy;->proxyIP:Ljava/net/InetAddress;

    iget v2, p0, Lnet/sourceforge/jsocks/Socks4Proxy;->proxyPort:I

    iget-object v3, p0, Lnet/sourceforge/jsocks/Socks4Proxy;->user:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lnet/sourceforge/jsocks/Socks4Proxy;-><init>(Ljava/net/InetAddress;ILjava/lang/String;)V

    .line 80
    .local v0, "copy":Lnet/sourceforge/jsocks/Socks4Proxy;
    iget-object v1, p0, Lnet/sourceforge/jsocks/Socks4Proxy;->chainProxy:Lnet/sourceforge/jsocks/Proxy;

    iput-object v1, v0, Lnet/sourceforge/jsocks/Socks4Proxy;->chainProxy:Lnet/sourceforge/jsocks/Proxy;

    .line 81
    return-object v0
.end method

.method protected formMessage(ILjava/lang/String;I)Lnet/sourceforge/jsocks/ProxyMessage;
    .locals 1
    .param p1, "cmd"    # I
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 99
    invoke-static {p2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lnet/sourceforge/jsocks/Socks4Proxy;->formMessage(ILjava/net/InetAddress;I)Lnet/sourceforge/jsocks/ProxyMessage;

    move-result-object v0

    return-object v0
.end method

.method protected formMessage(ILjava/net/InetAddress;I)Lnet/sourceforge/jsocks/ProxyMessage;
    .locals 2
    .param p1, "cmd"    # I
    .param p2, "ip"    # Ljava/net/InetAddress;
    .param p3, "port"    # I

    .prologue
    .line 85
    packed-switch p1, :pswitch_data_0

    .line 93
    const/4 v0, 0x0

    .line 95
    :goto_0
    return-object v0

    .line 87
    :pswitch_0
    const/4 p1, 0x1

    .line 95
    :goto_1
    new-instance v0, Lnet/sourceforge/jsocks/Socks4Message;

    iget-object v1, p0, Lnet/sourceforge/jsocks/Socks4Proxy;->user:Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3, v1}, Lnet/sourceforge/jsocks/Socks4Message;-><init>(ILjava/net/InetAddress;ILjava/lang/String;)V

    goto :goto_0

    .line 90
    :pswitch_1
    const/4 p1, 0x2

    .line 91
    goto :goto_1

    .line 85
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected formMessage(Ljava/io/InputStream;)Lnet/sourceforge/jsocks/ProxyMessage;
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/jsocks/SocksException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    new-instance v0, Lnet/sourceforge/jsocks/Socks4Message;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lnet/sourceforge/jsocks/Socks4Message;-><init>(Ljava/io/InputStream;Z)V

    return-object v0
.end method
