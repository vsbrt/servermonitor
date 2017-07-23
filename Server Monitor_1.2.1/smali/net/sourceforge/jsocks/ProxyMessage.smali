.class public abstract Lnet/sourceforge/jsocks/ProxyMessage;
.super Ljava/lang/Object;
.source "ProxyMessage.java"


# instance fields
.field public command:I

.field public host:Ljava/lang/String;

.field public ip:Ljava/net/InetAddress;

.field public port:I

.field public user:Ljava/lang/String;

.field public version:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object v0, p0, Lnet/sourceforge/jsocks/ProxyMessage;->ip:Ljava/net/InetAddress;

    .line 22
    iput-object v0, p0, Lnet/sourceforge/jsocks/ProxyMessage;->host:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lnet/sourceforge/jsocks/ProxyMessage;->user:Ljava/lang/String;

    .line 33
    return-void
.end method

.method constructor <init>(ILjava/net/InetAddress;I)V
    .locals 1
    .param p1, "command"    # I
    .param p2, "ip"    # Ljava/net/InetAddress;
    .param p3, "port"    # I

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object v0, p0, Lnet/sourceforge/jsocks/ProxyMessage;->ip:Ljava/net/InetAddress;

    .line 22
    iput-object v0, p0, Lnet/sourceforge/jsocks/ProxyMessage;->host:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lnet/sourceforge/jsocks/ProxyMessage;->user:Ljava/lang/String;

    .line 27
    iput p1, p0, Lnet/sourceforge/jsocks/ProxyMessage;->command:I

    .line 28
    iput-object p2, p0, Lnet/sourceforge/jsocks/ProxyMessage;->ip:Ljava/net/InetAddress;

    .line 29
    iput p3, p0, Lnet/sourceforge/jsocks/ProxyMessage;->port:I

    .line 30
    return-void
.end method

.method static final bytes2IPV4([BI)Ljava/lang/String;
    .locals 4
    .param p0, "addr"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v3, p0, p1

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "hostName":Ljava/lang/String;
    add-int/lit8 v1, p1, 0x1

    .local v1, "i":I
    :goto_0
    add-int/lit8 v2, p1, 0x4

    if-ge v1, v2, :cond_0

    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 101
    :cond_0
    return-object v0
.end method

.method static final bytes2IPV6([BI)Ljava/lang/String;
    .locals 1
    .param p0, "addr"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 106
    const/4 v0, 0x0

    return-object v0
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
    .line 76
    iget-object v0, p0, Lnet/sourceforge/jsocks/ProxyMessage;->ip:Ljava/net/InetAddress;

    return-object v0
.end method

.method public abstract read(Ljava/io/InputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/jsocks/SocksException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract read(Ljava/io/InputStream;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/jsocks/SocksException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const-string v2, "\n"

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Proxy Message:\nVersion:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/sourceforge/jsocks/ProxyMessage;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Command:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/sourceforge/jsocks/ProxyMessage;->command:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "IP:     "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/sourceforge/jsocks/ProxyMessage;->ip:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Port:   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/sourceforge/jsocks/ProxyMessage;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "User:   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/sourceforge/jsocks/ProxyMessage;->user:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract write(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/jsocks/SocksException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
