.class public abstract Lnet/sourceforge/jsocks/Proxy;
.super Ljava/lang/Object;
.source "Proxy.java"


# static fields
.field public static final SOCKS_ADDR_NOT_SUPPORTED:I = 0x8

.field public static final SOCKS_AUTH_FAILURE:I = 0x50000

.field public static final SOCKS_AUTH_NOT_SUPPORTED:I = 0x40000

.field public static final SOCKS_BADCONNECT:I = 0x2

.field public static final SOCKS_BADNETWORK:I = 0x3

.field static final SOCKS_CMD_BIND:I = 0x2

.field public static final SOCKS_CMD_CONNECT:I = 0x1

.field public static final SOCKS_CMD_NOT_SUPPORTED:I = 0x7

.field static final SOCKS_CMD_UDP_ASSOCIATE:I = 0x3

.field public static final SOCKS_CONNECTION_REFUSED:I = 0x5

.field public static final SOCKS_DIRECT_FAILED:I = 0x70000

.field public static final SOCKS_FAILURE:I = 0x1

.field public static final SOCKS_HOST_UNREACHABLE:I = 0x4

.field public static final SOCKS_JUST_ERROR:I = 0x60000

.field public static final SOCKS_METHOD_NOTSUPPORTED:I = 0x80000

.field public static final SOCKS_NO_PROXY:I = 0x10000

.field public static final SOCKS_PROXY_IO_ERROR:I = 0x30000

.field public static final SOCKS_PROXY_NO_CONNECT:I = 0x20000

.field public static final SOCKS_SUCCESS:I = 0x0

.field public static final SOCKS_TTL_EXPIRE:I = 0x6

.field protected static defaultProxy:Lnet/sourceforge/jsocks/Proxy;


# instance fields
.field protected chainProxy:Lnet/sourceforge/jsocks/Proxy;

.field protected in:Ljava/io/InputStream;

.field protected out:Ljava/io/OutputStream;

.field protected proxyHost:Ljava/lang/String;

.field protected proxyIP:Ljava/net/InetAddress;

.field protected proxyPort:I

.field protected proxySocket:Ljava/net/Socket;

.field protected version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-object v0, Lnet/sourceforge/jsocks/Proxy;->defaultProxy:Lnet/sourceforge/jsocks/Proxy;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "proxyHost"    # Ljava/lang/String;
    .param p2, "proxyPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object v0, p0, Lnet/sourceforge/jsocks/Proxy;->proxyIP:Ljava/net/InetAddress;

    .line 22
    iput-object v0, p0, Lnet/sourceforge/jsocks/Proxy;->proxyHost:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lnet/sourceforge/jsocks/Proxy;->proxySocket:Ljava/net/Socket;

    .line 31
    iput-object v0, p0, Lnet/sourceforge/jsocks/Proxy;->chainProxy:Lnet/sourceforge/jsocks/Proxy;

    .line 40
    iput-object p1, p0, Lnet/sourceforge/jsocks/Proxy;->proxyHost:Ljava/lang/String;

    .line 41
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lnet/sourceforge/jsocks/Proxy;->proxyIP:Ljava/net/InetAddress;

    .line 42
    iput p2, p0, Lnet/sourceforge/jsocks/Proxy;->proxyPort:I

    .line 43
    return-void
.end method

.method constructor <init>(Ljava/net/InetAddress;I)V
    .locals 1
    .param p1, "proxyIP"    # Ljava/net/InetAddress;
    .param p2, "proxyPort"    # I

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object v0, p0, Lnet/sourceforge/jsocks/Proxy;->proxyIP:Ljava/net/InetAddress;

    .line 22
    iput-object v0, p0, Lnet/sourceforge/jsocks/Proxy;->proxyHost:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lnet/sourceforge/jsocks/Proxy;->proxySocket:Ljava/net/Socket;

    .line 31
    iput-object v0, p0, Lnet/sourceforge/jsocks/Proxy;->chainProxy:Lnet/sourceforge/jsocks/Proxy;

    .line 52
    iput-object p1, p0, Lnet/sourceforge/jsocks/Proxy;->proxyIP:Ljava/net/InetAddress;

    .line 53
    iput p2, p0, Lnet/sourceforge/jsocks/Proxy;->proxyPort:I

    .line 54
    return-void
.end method

.method constructor <init>(Lnet/sourceforge/jsocks/Proxy;)V
    .locals 1
    .param p1, "p"    # Lnet/sourceforge/jsocks/Proxy;

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object v0, p0, Lnet/sourceforge/jsocks/Proxy;->proxyIP:Ljava/net/InetAddress;

    .line 22
    iput-object v0, p0, Lnet/sourceforge/jsocks/Proxy;->proxyHost:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lnet/sourceforge/jsocks/Proxy;->proxySocket:Ljava/net/Socket;

    .line 31
    iput-object v0, p0, Lnet/sourceforge/jsocks/Proxy;->chainProxy:Lnet/sourceforge/jsocks/Proxy;

    .line 57
    iget-object v0, p1, Lnet/sourceforge/jsocks/Proxy;->proxyIP:Ljava/net/InetAddress;

    iput-object v0, p0, Lnet/sourceforge/jsocks/Proxy;->proxyIP:Ljava/net/InetAddress;

    .line 58
    iget v0, p1, Lnet/sourceforge/jsocks/Proxy;->proxyPort:I

    iput v0, p0, Lnet/sourceforge/jsocks/Proxy;->proxyPort:I

    .line 59
    iget v0, p1, Lnet/sourceforge/jsocks/Proxy;->version:I

    iput v0, p0, Lnet/sourceforge/jsocks/Proxy;->version:I

    .line 60
    return-void
.end method

.method constructor <init>(Lnet/sourceforge/jsocks/Proxy;Ljava/net/InetAddress;I)V
    .locals 1
    .param p1, "chainProxy"    # Lnet/sourceforge/jsocks/Proxy;
    .param p2, "proxyIP"    # Ljava/net/InetAddress;
    .param p3, "proxyPort"    # I

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object v0, p0, Lnet/sourceforge/jsocks/Proxy;->proxyIP:Ljava/net/InetAddress;

    .line 22
    iput-object v0, p0, Lnet/sourceforge/jsocks/Proxy;->proxyHost:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lnet/sourceforge/jsocks/Proxy;->proxySocket:Ljava/net/Socket;

    .line 31
    iput-object v0, p0, Lnet/sourceforge/jsocks/Proxy;->chainProxy:Lnet/sourceforge/jsocks/Proxy;

    .line 46
    iput-object p1, p0, Lnet/sourceforge/jsocks/Proxy;->chainProxy:Lnet/sourceforge/jsocks/Proxy;

    .line 47
    iput-object p2, p0, Lnet/sourceforge/jsocks/Proxy;->proxyIP:Ljava/net/InetAddress;

    .line 48
    iput p3, p0, Lnet/sourceforge/jsocks/Proxy;->proxyPort:I

    .line 49
    return-void
.end method

.method public static getDefaultProxy()Lnet/sourceforge/jsocks/Proxy;
    .locals 1

    .prologue
    .line 145
    sget-object v0, Lnet/sourceforge/jsocks/Proxy;->defaultProxy:Lnet/sourceforge/jsocks/Proxy;

    return-object v0
.end method

.method public static parseProxy(Ljava/lang/String;)Lnet/sourceforge/jsocks/Proxy;
    .locals 10
    .param p0, "proxy_entry"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 163
    const/16 v3, 0x438

    .line 164
    .local v3, "proxy_port":I
    const/4 v4, 0x0

    .line 165
    .local v4, "proxy_user":Ljava/lang/String;
    const/4 v2, 0x0

    .line 168
    .local v2, "proxy_password":Ljava/lang/String;
    new-instance v5, Ljava/util/StringTokenizer;

    const-string v7, ":"

    invoke-direct {v5, p0, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .local v5, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v7

    const/4 v8, 0x1

    if-ge v7, v8, :cond_0

    move-object v7, v9

    .line 202
    :goto_0
    return-object v7

    .line 172
    :cond_0
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 173
    .local v1, "proxy_host":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 175
    :try_start_0
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 178
    :cond_1
    :goto_1
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 179
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 181
    :cond_2
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 182
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 185
    :cond_3
    if-nez v4, :cond_4

    .line 186
    :try_start_1
    new-instance v0, Lnet/sourceforge/jsocks/Socks5Proxy;

    invoke-direct {v0, v1, v3}, Lnet/sourceforge/jsocks/Socks5Proxy;-><init>(Ljava/lang/String;I)V

    .local v0, "proxy":Lnet/sourceforge/jsocks/Proxy;
    :goto_2
    move-object v7, v0

    .line 202
    goto :goto_0

    .line 187
    .end local v0    # "proxy":Lnet/sourceforge/jsocks/Proxy;
    :cond_4
    if-nez v2, :cond_5

    .line 188
    new-instance v0, Lnet/sourceforge/jsocks/Socks4Proxy;

    invoke-direct {v0, v1, v3, v4}, Lnet/sourceforge/jsocks/Socks4Proxy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .restart local v0    # "proxy":Lnet/sourceforge/jsocks/Proxy;
    goto :goto_2

    .line 190
    .end local v0    # "proxy":Lnet/sourceforge/jsocks/Proxy;
    :cond_5
    new-instance v0, Lnet/sourceforge/jsocks/Socks5Proxy;

    invoke-direct {v0, v1, v3}, Lnet/sourceforge/jsocks/Socks5Proxy;-><init>(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v0    # "proxy":Lnet/sourceforge/jsocks/Proxy;
    goto :goto_2

    .line 198
    .end local v0    # "proxy":Lnet/sourceforge/jsocks/Proxy;
    :catch_0
    move-exception v7

    move-object v6, v7

    .local v6, "uhe":Ljava/net/UnknownHostException;
    move-object v7, v9

    .line 199
    goto :goto_0

    .line 176
    .end local v6    # "uhe":Ljava/net/UnknownHostException;
    :catch_1
    move-exception v7

    goto :goto_1
.end method

.method public static setDefaultProxy(Ljava/lang/String;I)V
    .locals 1
    .param p0, "hostName"    # Ljava/lang/String;
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 121
    new-instance v0, Lnet/sourceforge/jsocks/Socks5Proxy;

    invoke-direct {v0, p0, p1}, Lnet/sourceforge/jsocks/Socks5Proxy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sourceforge/jsocks/Proxy;->defaultProxy:Lnet/sourceforge/jsocks/Proxy;

    .line 122
    return-void
.end method

.method public static setDefaultProxy(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p0, "hostName"    # Ljava/lang/String;
    .param p1, "port"    # I
    .param p2, "user"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 100
    new-instance v0, Lnet/sourceforge/jsocks/Socks4Proxy;

    invoke-direct {v0, p0, p1, p2}, Lnet/sourceforge/jsocks/Socks4Proxy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnet/sourceforge/jsocks/Proxy;->defaultProxy:Lnet/sourceforge/jsocks/Proxy;

    .line 101
    return-void
.end method

.method public static setDefaultProxy(Ljava/net/InetAddress;I)V
    .locals 1
    .param p0, "ipAddress"    # Ljava/net/InetAddress;
    .param p1, "port"    # I

    .prologue
    .line 130
    new-instance v0, Lnet/sourceforge/jsocks/Socks5Proxy;

    invoke-direct {v0, p0, p1}, Lnet/sourceforge/jsocks/Socks5Proxy;-><init>(Ljava/net/InetAddress;I)V

    sput-object v0, Lnet/sourceforge/jsocks/Proxy;->defaultProxy:Lnet/sourceforge/jsocks/Proxy;

    .line 131
    return-void
.end method

.method public static setDefaultProxy(Ljava/net/InetAddress;ILjava/lang/String;)V
    .locals 1
    .param p0, "ipAddress"    # Ljava/net/InetAddress;
    .param p1, "port"    # I
    .param p2, "user"    # Ljava/lang/String;

    .prologue
    .line 111
    new-instance v0, Lnet/sourceforge/jsocks/Socks4Proxy;

    invoke-direct {v0, p0, p1, p2}, Lnet/sourceforge/jsocks/Socks4Proxy;-><init>(Ljava/net/InetAddress;ILjava/lang/String;)V

    sput-object v0, Lnet/sourceforge/jsocks/Proxy;->defaultProxy:Lnet/sourceforge/jsocks/Proxy;

    .line 112
    return-void
.end method

.method public static setDefaultProxy(Lnet/sourceforge/jsocks/Proxy;)V
    .locals 0
    .param p0, "p"    # Lnet/sourceforge/jsocks/Proxy;

    .prologue
    .line 137
    sput-object p0, Lnet/sourceforge/jsocks/Proxy;->defaultProxy:Lnet/sourceforge/jsocks/Proxy;

    .line 138
    return-void
.end method


# virtual methods
.method protected accept()Lnet/sourceforge/jsocks/ProxyMessage;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/sourceforge/jsocks/SocksException;
        }
    .end annotation

    .prologue
    .line 284
    :try_start_0
    iget-object v3, p0, Lnet/sourceforge/jsocks/Proxy;->in:Ljava/io/InputStream;

    invoke-virtual {p0, v3}, Lnet/sourceforge/jsocks/Proxy;->formMessage(Ljava/io/InputStream;)Lnet/sourceforge/jsocks/ProxyMessage;
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 292
    .local v2, "msg":Lnet/sourceforge/jsocks/ProxyMessage;
    return-object v2

    .line 285
    .end local v2    # "msg":Lnet/sourceforge/jsocks/ProxyMessage;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 286
    .local v0, "iioe":Ljava/io/InterruptedIOException;
    throw v0

    .line 287
    .end local v0    # "iioe":Ljava/io/InterruptedIOException;
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 288
    .local v1, "io_ex":Ljava/io/IOException;
    invoke-virtual {p0}, Lnet/sourceforge/jsocks/Proxy;->endSession()V

    .line 289
    new-instance v3, Lnet/sourceforge/jsocks/SocksException;

    const/high16 v4, 0x30000

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "While Trying accept:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lnet/sourceforge/jsocks/SocksException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method protected bind(Ljava/lang/String;I)Lnet/sourceforge/jsocks/ProxyMessage;
    .locals 3
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Lnet/sourceforge/jsocks/SocksException;
        }
    .end annotation

    .prologue
    .line 270
    :try_start_0
    invoke-virtual {p0}, Lnet/sourceforge/jsocks/Proxy;->startSession()V

    .line 271
    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1, p2}, Lnet/sourceforge/jsocks/Proxy;->formMessage(ILjava/lang/String;I)Lnet/sourceforge/jsocks/ProxyMessage;

    move-result-object v0

    .line 273
    .local v0, "request":Lnet/sourceforge/jsocks/ProxyMessage;
    invoke-virtual {p0, v0}, Lnet/sourceforge/jsocks/Proxy;->exchange(Lnet/sourceforge/jsocks/ProxyMessage;)Lnet/sourceforge/jsocks/ProxyMessage;
    :try_end_0
    .catch Lnet/sourceforge/jsocks/SocksException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 274
    .end local v0    # "request":Lnet/sourceforge/jsocks/ProxyMessage;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 275
    .local v1, "se":Lnet/sourceforge/jsocks/SocksException;
    invoke-virtual {p0}, Lnet/sourceforge/jsocks/Proxy;->endSession()V

    .line 276
    throw v1
.end method

.method protected bind(Ljava/net/InetAddress;I)Lnet/sourceforge/jsocks/ProxyMessage;
    .locals 3
    .param p1, "ip"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/jsocks/SocksException;
        }
    .end annotation

    .prologue
    .line 258
    :try_start_0
    invoke-virtual {p0}, Lnet/sourceforge/jsocks/Proxy;->startSession()V

    .line 259
    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1, p2}, Lnet/sourceforge/jsocks/Proxy;->formMessage(ILjava/net/InetAddress;I)Lnet/sourceforge/jsocks/ProxyMessage;

    move-result-object v0

    .line 261
    .local v0, "request":Lnet/sourceforge/jsocks/ProxyMessage;
    invoke-virtual {p0, v0}, Lnet/sourceforge/jsocks/Proxy;->exchange(Lnet/sourceforge/jsocks/ProxyMessage;)Lnet/sourceforge/jsocks/ProxyMessage;
    :try_end_0
    .catch Lnet/sourceforge/jsocks/SocksException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 262
    .end local v0    # "request":Lnet/sourceforge/jsocks/ProxyMessage;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 263
    .local v1, "se":Lnet/sourceforge/jsocks/SocksException;
    invoke-virtual {p0}, Lnet/sourceforge/jsocks/Proxy;->endSession()V

    .line 264
    throw v1
.end method

.method protected connect(Ljava/lang/String;I)Lnet/sourceforge/jsocks/ProxyMessage;
    .locals 3
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Lnet/sourceforge/jsocks/SocksException;
        }
    .end annotation

    .prologue
    .line 245
    :try_start_0
    invoke-virtual {p0}, Lnet/sourceforge/jsocks/Proxy;->startSession()V

    .line 246
    const/4 v2, 0x1

    invoke-virtual {p0, v2, p1, p2}, Lnet/sourceforge/jsocks/Proxy;->formMessage(ILjava/lang/String;I)Lnet/sourceforge/jsocks/ProxyMessage;

    move-result-object v0

    .line 248
    .local v0, "request":Lnet/sourceforge/jsocks/ProxyMessage;
    invoke-virtual {p0, v0}, Lnet/sourceforge/jsocks/Proxy;->exchange(Lnet/sourceforge/jsocks/ProxyMessage;)Lnet/sourceforge/jsocks/ProxyMessage;
    :try_end_0
    .catch Lnet/sourceforge/jsocks/SocksException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 249
    .end local v0    # "request":Lnet/sourceforge/jsocks/ProxyMessage;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 250
    .local v1, "se":Lnet/sourceforge/jsocks/SocksException;
    invoke-virtual {p0}, Lnet/sourceforge/jsocks/Proxy;->endSession()V

    .line 251
    throw v1
.end method

.method protected connect(Ljava/net/InetAddress;I)Lnet/sourceforge/jsocks/ProxyMessage;
    .locals 3
    .param p1, "ip"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/jsocks/SocksException;
        }
    .end annotation

    .prologue
    .line 233
    :try_start_0
    invoke-virtual {p0}, Lnet/sourceforge/jsocks/Proxy;->startSession()V

    .line 234
    const/4 v2, 0x1

    invoke-virtual {p0, v2, p1, p2}, Lnet/sourceforge/jsocks/Proxy;->formMessage(ILjava/net/InetAddress;I)Lnet/sourceforge/jsocks/ProxyMessage;

    move-result-object v0

    .line 236
    .local v0, "request":Lnet/sourceforge/jsocks/ProxyMessage;
    invoke-virtual {p0, v0}, Lnet/sourceforge/jsocks/Proxy;->exchange(Lnet/sourceforge/jsocks/ProxyMessage;)Lnet/sourceforge/jsocks/ProxyMessage;
    :try_end_0
    .catch Lnet/sourceforge/jsocks/SocksException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 237
    .end local v0    # "request":Lnet/sourceforge/jsocks/ProxyMessage;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 238
    .local v1, "se":Lnet/sourceforge/jsocks/SocksException;
    invoke-virtual {p0}, Lnet/sourceforge/jsocks/Proxy;->endSession()V

    .line 239
    throw v1
.end method

.method protected abstract copy()Lnet/sourceforge/jsocks/Proxy;
.end method

.method protected endSession()V
    .locals 1

    .prologue
    .line 332
    :try_start_0
    iget-object v0, p0, Lnet/sourceforge/jsocks/Proxy;->proxySocket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/jsocks/Proxy;->proxySocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 333
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sourceforge/jsocks/Proxy;->proxySocket:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    :goto_0
    return-void

    .line 334
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected exchange(Lnet/sourceforge/jsocks/ProxyMessage;)Lnet/sourceforge/jsocks/ProxyMessage;
    .locals 7
    .param p1, "request"    # Lnet/sourceforge/jsocks/ProxyMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/jsocks/SocksException;
        }
    .end annotation

    .prologue
    .line 362
    :try_start_0
    iget-object v3, p0, Lnet/sourceforge/jsocks/Proxy;->out:Ljava/io/OutputStream;

    invoke-virtual {p1, v3}, Lnet/sourceforge/jsocks/ProxyMessage;->write(Ljava/io/OutputStream;)V

    .line 363
    iget-object v3, p0, Lnet/sourceforge/jsocks/Proxy;->in:Ljava/io/InputStream;

    invoke-virtual {p0, v3}, Lnet/sourceforge/jsocks/Proxy;->formMessage(Ljava/io/InputStream;)Lnet/sourceforge/jsocks/ProxyMessage;
    :try_end_0
    .catch Lnet/sourceforge/jsocks/SocksException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 369
    .local v1, "reply":Lnet/sourceforge/jsocks/ProxyMessage;
    return-object v1

    .line 364
    .end local v1    # "reply":Lnet/sourceforge/jsocks/ProxyMessage;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 365
    .local v2, "s_ex":Lnet/sourceforge/jsocks/SocksException;
    throw v2

    .line 366
    .end local v2    # "s_ex":Lnet/sourceforge/jsocks/SocksException;
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 367
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v3, Lnet/sourceforge/jsocks/SocksException;

    const/high16 v4, 0x30000

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lnet/sourceforge/jsocks/SocksException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method protected abstract formMessage(ILjava/lang/String;I)Lnet/sourceforge/jsocks/ProxyMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation
.end method

.method protected abstract formMessage(ILjava/net/InetAddress;I)Lnet/sourceforge/jsocks/ProxyMessage;
.end method

.method protected abstract formMessage(Ljava/io/InputStream;)Lnet/sourceforge/jsocks/ProxyMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/jsocks/SocksException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lnet/sourceforge/jsocks/Proxy;->proxyIP:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lnet/sourceforge/jsocks/Proxy;->proxyPort:I

    return v0
.end method

.method protected readMsg()Lnet/sourceforge/jsocks/ProxyMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/jsocks/SocksException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 351
    iget-object v0, p0, Lnet/sourceforge/jsocks/Proxy;->in:Ljava/io/InputStream;

    invoke-virtual {p0, v0}, Lnet/sourceforge/jsocks/Proxy;->formMessage(Ljava/io/InputStream;)Lnet/sourceforge/jsocks/ProxyMessage;

    move-result-object v0

    return-object v0
.end method

.method protected sendMsg(Lnet/sourceforge/jsocks/ProxyMessage;)V
    .locals 1
    .param p1, "msg"    # Lnet/sourceforge/jsocks/ProxyMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/jsocks/SocksException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 343
    iget-object v0, p0, Lnet/sourceforge/jsocks/Proxy;->out:Ljava/io/OutputStream;

    invoke-virtual {p1, v0}, Lnet/sourceforge/jsocks/ProxyMessage;->write(Ljava/io/OutputStream;)V

    .line 344
    return-void
.end method

.method protected startSession()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/jsocks/SocksException;
        }
    .end annotation

    .prologue
    .line 211
    :try_start_0
    new-instance v2, Ljava/net/Socket;

    iget-object v3, p0, Lnet/sourceforge/jsocks/Proxy;->proxyIP:Ljava/net/InetAddress;

    iget v4, p0, Lnet/sourceforge/jsocks/Proxy;->proxyPort:I

    invoke-direct {v2, v3, v4}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;I)V

    iput-object v2, p0, Lnet/sourceforge/jsocks/Proxy;->proxySocket:Ljava/net/Socket;

    .line 212
    iget-object v2, p0, Lnet/sourceforge/jsocks/Proxy;->proxySocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lnet/sourceforge/jsocks/Proxy;->in:Ljava/io/InputStream;

    .line 213
    iget-object v2, p0, Lnet/sourceforge/jsocks/Proxy;->proxySocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iput-object v2, p0, Lnet/sourceforge/jsocks/Proxy;->out:Ljava/io/OutputStream;
    :try_end_0
    .catch Lnet/sourceforge/jsocks/SocksException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 219
    return-void

    .line 214
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 215
    .local v1, "se":Lnet/sourceforge/jsocks/SocksException;
    throw v1

    .line 216
    .end local v1    # "se":Lnet/sourceforge/jsocks/SocksException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 217
    .local v0, "io_ex":Ljava/io/IOException;
    new-instance v2, Lnet/sourceforge/jsocks/SocksException;

    const/high16 v3, 0x30000

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lnet/sourceforge/jsocks/SocksException;-><init>(ILjava/lang/String;)V

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/sourceforge/jsocks/Proxy;->proxyIP:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/sourceforge/jsocks/Proxy;->proxyPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tVersion "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/sourceforge/jsocks/Proxy;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected udpAssociate(Ljava/lang/String;I)Lnet/sourceforge/jsocks/ProxyMessage;
    .locals 5
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Lnet/sourceforge/jsocks/SocksException;
        }
    .end annotation

    .prologue
    .line 315
    :try_start_0
    invoke-virtual {p0}, Lnet/sourceforge/jsocks/Proxy;->startSession()V

    .line 316
    const/4 v2, 0x3

    invoke-virtual {p0, v2, p1, p2}, Lnet/sourceforge/jsocks/Proxy;->formMessage(ILjava/lang/String;I)Lnet/sourceforge/jsocks/ProxyMessage;

    move-result-object v0

    .line 318
    .local v0, "request":Lnet/sourceforge/jsocks/ProxyMessage;
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lnet/sourceforge/jsocks/Proxy;->exchange(Lnet/sourceforge/jsocks/ProxyMessage;)Lnet/sourceforge/jsocks/ProxyMessage;
    :try_end_0
    .catch Lnet/sourceforge/jsocks/SocksException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 319
    .end local v0    # "request":Lnet/sourceforge/jsocks/ProxyMessage;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 320
    .local v1, "se":Lnet/sourceforge/jsocks/SocksException;
    invoke-virtual {p0}, Lnet/sourceforge/jsocks/Proxy;->endSession()V

    .line 321
    throw v1

    .line 324
    .end local v1    # "se":Lnet/sourceforge/jsocks/SocksException;
    .restart local v0    # "request":Lnet/sourceforge/jsocks/ProxyMessage;
    :cond_0
    invoke-virtual {p0}, Lnet/sourceforge/jsocks/Proxy;->endSession()V

    .line 325
    new-instance v2, Lnet/sourceforge/jsocks/SocksException;

    const/high16 v3, 0x80000

    const-string v4, "This version of proxy does not support UDP associate, use version 5"

    invoke-direct {v2, v3, v4}, Lnet/sourceforge/jsocks/SocksException;-><init>(ILjava/lang/String;)V

    throw v2
.end method

.method protected udpAssociate(Ljava/net/InetAddress;I)Lnet/sourceforge/jsocks/ProxyMessage;
    .locals 5
    .param p1, "ip"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/jsocks/SocksException;
        }
    .end annotation

    .prologue
    .line 298
    :try_start_0
    invoke-virtual {p0}, Lnet/sourceforge/jsocks/Proxy;->startSession()V

    .line 299
    const/4 v2, 0x3

    invoke-virtual {p0, v2, p1, p2}, Lnet/sourceforge/jsocks/Proxy;->formMessage(ILjava/net/InetAddress;I)Lnet/sourceforge/jsocks/ProxyMessage;

    move-result-object v0

    .line 301
    .local v0, "request":Lnet/sourceforge/jsocks/ProxyMessage;
    if-eqz v0, :cond_0

    .line 302
    invoke-virtual {p0, v0}, Lnet/sourceforge/jsocks/Proxy;->exchange(Lnet/sourceforge/jsocks/ProxyMessage;)Lnet/sourceforge/jsocks/ProxyMessage;
    :try_end_0
    .catch Lnet/sourceforge/jsocks/SocksException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 303
    .end local v0    # "request":Lnet/sourceforge/jsocks/ProxyMessage;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 304
    .local v1, "se":Lnet/sourceforge/jsocks/SocksException;
    invoke-virtual {p0}, Lnet/sourceforge/jsocks/Proxy;->endSession()V

    .line 305
    throw v1

    .line 308
    .end local v1    # "se":Lnet/sourceforge/jsocks/SocksException;
    .restart local v0    # "request":Lnet/sourceforge/jsocks/ProxyMessage;
    :cond_0
    invoke-virtual {p0}, Lnet/sourceforge/jsocks/Proxy;->endSession()V

    .line 309
    new-instance v2, Lnet/sourceforge/jsocks/SocksException;

    const/high16 v3, 0x80000

    const-string v4, "This version of proxy does not support UDP associate, use version 5"

    invoke-direct {v2, v3, v4}, Lnet/sourceforge/jsocks/SocksException;-><init>(ILjava/lang/String;)V

    throw v2
.end method
