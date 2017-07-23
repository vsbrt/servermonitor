.class public Lnet/sourceforge/jsocks/server/ServerAuthenticatorNone;
.super Ljava/lang/Object;
.source "ServerAuthenticatorNone.java"

# interfaces
.implements Lnet/sourceforge/jsocks/server/ServerAuthenticator;


# static fields
.field static final socks5response:[B


# instance fields
.field in:Ljava/io/InputStream;

.field out:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lnet/sourceforge/jsocks/server/ServerAuthenticatorNone;->socks5response:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x5t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object v0, p0, Lnet/sourceforge/jsocks/server/ServerAuthenticatorNone;->in:Ljava/io/InputStream;

    .line 48
    iput-object v0, p0, Lnet/sourceforge/jsocks/server/ServerAuthenticatorNone;->out:Ljava/io/OutputStream;

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lnet/sourceforge/jsocks/server/ServerAuthenticatorNone;->in:Ljava/io/InputStream;

    .line 58
    iput-object p2, p0, Lnet/sourceforge/jsocks/server/ServerAuthenticatorNone;->out:Ljava/io/OutputStream;

    .line 59
    return-void
.end method

.method public static selectSocks5Authentication(Ljava/io/InputStream;Ljava/io/OutputStream;I)Z
    .locals 9
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "methodId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 146
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v4

    .line 147
    .local v4, "num_methods":I
    if-gtz v4, :cond_0

    move v6, v7

    .line 167
    :goto_0
    return v6

    .line 148
    :cond_0
    new-array v3, v4, [B

    .line 149
    .local v3, "method_ids":[B
    const/4 v6, 0x2

    new-array v5, v6, [B

    .line 150
    .local v5, "response":[B
    const/4 v1, 0x0

    .line 152
    .local v1, "found":Z
    const/4 v6, 0x5

    aput-byte v6, v5, v7

    .line 153
    const/4 v6, -0x1

    aput-byte v6, v5, v8

    .line 155
    const/4 v0, 0x0

    .line 156
    .local v0, "bread":I
    :goto_1
    if-ge v0, v4, :cond_1

    .line 157
    sub-int v6, v4, v0

    invoke-virtual {p0, v3, v0, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    add-int/2addr v0, v6

    goto :goto_1

    .line 159
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v4, :cond_2

    .line 160
    aget-byte v6, v3, v2

    if-ne v6, p2, :cond_3

    .line 161
    const/4 v1, 0x1

    .line 162
    int-to-byte v6, p2

    aput-byte v6, v5, v8

    .line 166
    :cond_2
    invoke-virtual {p1, v5}, Ljava/io/OutputStream;->write([B)V

    move v6, v1

    .line 167
    goto :goto_0

    .line 159
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method


# virtual methods
.method public checkRequest(Ljava/net/DatagramPacket;Z)Z
    .locals 1
    .param p1, "dp"    # Ljava/net/DatagramPacket;
    .param p2, "out"    # Z

    .prologue
    .line 118
    const/4 v0, 0x1

    return v0
.end method

.method public checkRequest(Lnet/sourceforge/jsocks/ProxyMessage;)Z
    .locals 1
    .param p1, "msg"    # Lnet/sourceforge/jsocks/ProxyMessage;

    .prologue
    .line 111
    const/4 v0, 0x1

    return v0
.end method

.method public endSession()V
    .locals 0

    .prologue
    .line 125
    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lnet/sourceforge/jsocks/server/ServerAuthenticatorNone;->in:Ljava/io/InputStream;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lnet/sourceforge/jsocks/server/ServerAuthenticatorNone;->out:Ljava/io/OutputStream;

    return-object v0
.end method

.method public getUdpEncapsulation()Lnet/sourceforge/jsocks/UDPEncapsulation;
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    return-object v0
.end method

.method public startSession(Ljava/net/Socket;)Lnet/sourceforge/jsocks/server/ServerAuthenticator;
    .locals 5
    .param p1, "s"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 68
    new-instance v0, Ljava/io/PushbackInputStream;

    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;)V

    .line 69
    .local v0, "in":Ljava/io/PushbackInputStream;
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 71
    .local v1, "out":Ljava/io/OutputStream;
    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->read()I

    move-result v2

    .line 72
    .local v2, "version":I
    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 73
    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Lnet/sourceforge/jsocks/server/ServerAuthenticatorNone;->selectSocks5Authentication(Ljava/io/InputStream;Ljava/io/OutputStream;I)Z

    move-result v3

    if-nez v3, :cond_1

    move-object v3, v4

    .line 82
    :goto_0
    return-object v3

    .line 75
    :cond_0
    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 77
    invoke-virtual {v0, v2}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 82
    :cond_1
    new-instance v3, Lnet/sourceforge/jsocks/server/ServerAuthenticatorNone;

    invoke-direct {v3, v0, v1}, Lnet/sourceforge/jsocks/server/ServerAuthenticatorNone;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    goto :goto_0

    :cond_2
    move-object v3, v4

    .line 79
    goto :goto_0
.end method
