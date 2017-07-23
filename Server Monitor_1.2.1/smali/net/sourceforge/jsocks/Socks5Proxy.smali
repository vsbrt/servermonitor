.class public Lnet/sourceforge/jsocks/Socks5Proxy;
.super Lnet/sourceforge/jsocks/Proxy;
.source "Socks5Proxy.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private authMethods:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Lnet/sourceforge/jsocks/Authentication;",
            ">;"
        }
    .end annotation
.end field

.field resolveAddrLocally:Z

.field private selectedMethod:I

.field udp_encapsulation:Lnet/sourceforge/jsocks/UDPEncapsulation;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "proxyHost"    # Ljava/lang/String;
    .param p2, "proxyPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lnet/sourceforge/jsocks/Proxy;-><init>(Ljava/lang/String;I)V

    .line 19
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lnet/sourceforge/jsocks/Socks5Proxy;->authMethods:Ljava/util/Hashtable;

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sourceforge/jsocks/Socks5Proxy;->resolveAddrLocally:Z

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sourceforge/jsocks/Socks5Proxy;->udp_encapsulation:Lnet/sourceforge/jsocks/UDPEncapsulation;

    .line 38
    const/4 v0, 0x5

    iput v0, p0, Lnet/sourceforge/jsocks/Socks5Proxy;->version:I

    .line 39
    const/4 v0, 0x0

    new-instance v1, Lnet/sourceforge/jsocks/AuthenticationNone;

    invoke-direct {v1}, Lnet/sourceforge/jsocks/AuthenticationNone;-><init>()V

    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/jsocks/Socks5Proxy;->setAuthenticationMethod(ILnet/sourceforge/jsocks/Authentication;)Z

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;I)V
    .locals 2
    .param p1, "proxyIP"    # Ljava/net/InetAddress;
    .param p2, "proxyPort"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lnet/sourceforge/jsocks/Proxy;-><init>(Ljava/net/InetAddress;I)V

    .line 19
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lnet/sourceforge/jsocks/Socks5Proxy;->authMethods:Ljava/util/Hashtable;

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sourceforge/jsocks/Socks5Proxy;->resolveAddrLocally:Z

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sourceforge/jsocks/Socks5Proxy;->udp_encapsulation:Lnet/sourceforge/jsocks/UDPEncapsulation;

    .line 50
    const/4 v0, 0x5

    iput v0, p0, Lnet/sourceforge/jsocks/Socks5Proxy;->version:I

    .line 51
    const/4 v0, 0x0

    new-instance v1, Lnet/sourceforge/jsocks/AuthenticationNone;

    invoke-direct {v1}, Lnet/sourceforge/jsocks/AuthenticationNone;-><init>()V

    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/jsocks/Socks5Proxy;->setAuthenticationMethod(ILnet/sourceforge/jsocks/Authentication;)Z

    .line 52
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 117
    new-instance v0, Lnet/sourceforge/jsocks/Socks5Proxy;

    iget-object v1, p0, Lnet/sourceforge/jsocks/Socks5Proxy;->proxyIP:Ljava/net/InetAddress;

    iget v2, p0, Lnet/sourceforge/jsocks/Socks5Proxy;->proxyPort:I

    invoke-direct {v0, v1, v2}, Lnet/sourceforge/jsocks/Socks5Proxy;-><init>(Ljava/net/InetAddress;I)V

    .line 118
    .local v0, "newProxy":Lnet/sourceforge/jsocks/Socks5Proxy;
    iget-object v1, p0, Lnet/sourceforge/jsocks/Socks5Proxy;->authMethods:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Hashtable;

    iput-object v1, v0, Lnet/sourceforge/jsocks/Socks5Proxy;->authMethods:Ljava/util/Hashtable;

    .line 119
    iget-boolean v1, p0, Lnet/sourceforge/jsocks/Socks5Proxy;->resolveAddrLocally:Z

    iput-boolean v1, v0, Lnet/sourceforge/jsocks/Socks5Proxy;->resolveAddrLocally:Z

    .line 120
    iget-object v1, p0, Lnet/sourceforge/jsocks/Socks5Proxy;->chainProxy:Lnet/sourceforge/jsocks/Proxy;

    iput-object v1, v0, Lnet/sourceforge/jsocks/Socks5Proxy;->chainProxy:Lnet/sourceforge/jsocks/Proxy;

    .line 121
    return-object v0
.end method

.method protected copy()Lnet/sourceforge/jsocks/Proxy;
    .locals 3

    .prologue
    .line 132
    new-instance v0, Lnet/sourceforge/jsocks/Socks5Proxy;

    iget-object v1, p0, Lnet/sourceforge/jsocks/Socks5Proxy;->proxyIP:Ljava/net/InetAddress;

    iget v2, p0, Lnet/sourceforge/jsocks/Socks5Proxy;->proxyPort:I

    invoke-direct {v0, v1, v2}, Lnet/sourceforge/jsocks/Socks5Proxy;-><init>(Ljava/net/InetAddress;I)V

    .line 133
    .local v0, "copy":Lnet/sourceforge/jsocks/Socks5Proxy;
    iget-object v1, p0, Lnet/sourceforge/jsocks/Socks5Proxy;->authMethods:Ljava/util/Hashtable;

    iput-object v1, v0, Lnet/sourceforge/jsocks/Socks5Proxy;->authMethods:Ljava/util/Hashtable;

    .line 134
    iget-object v1, p0, Lnet/sourceforge/jsocks/Socks5Proxy;->chainProxy:Lnet/sourceforge/jsocks/Proxy;

    iput-object v1, v0, Lnet/sourceforge/jsocks/Socks5Proxy;->chainProxy:Lnet/sourceforge/jsocks/Proxy;

    .line 135
    iget-boolean v1, p0, Lnet/sourceforge/jsocks/Socks5Proxy;->resolveAddrLocally:Z

    iput-boolean v1, v0, Lnet/sourceforge/jsocks/Socks5Proxy;->resolveAddrLocally:Z

    .line 136
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
    .line 220
    iget-boolean v0, p0, Lnet/sourceforge/jsocks/Socks5Proxy;->resolveAddrLocally:Z

    if-eqz v0, :cond_0

    .line 221
    invoke-static {p2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lnet/sourceforge/jsocks/Socks5Proxy;->formMessage(ILjava/net/InetAddress;I)Lnet/sourceforge/jsocks/ProxyMessage;

    move-result-object v0

    .line 223
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lnet/sourceforge/jsocks/Socks5Message;

    invoke-direct {v0, p1, p2, p3}, Lnet/sourceforge/jsocks/Socks5Message;-><init>(ILjava/lang/String;I)V

    goto :goto_0
.end method

.method protected formMessage(ILjava/net/InetAddress;I)Lnet/sourceforge/jsocks/ProxyMessage;
    .locals 1
    .param p1, "cmd"    # I
    .param p2, "ip"    # Ljava/net/InetAddress;
    .param p3, "port"    # I

    .prologue
    .line 216
    new-instance v0, Lnet/sourceforge/jsocks/Socks5Message;

    invoke-direct {v0, p1, p2, p3}, Lnet/sourceforge/jsocks/Socks5Message;-><init>(ILjava/net/InetAddress;I)V

    return-object v0
.end method

.method protected formMessage(Ljava/io/InputStream;)Lnet/sourceforge/jsocks/ProxyMessage;
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/jsocks/SocksException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 228
    new-instance v0, Lnet/sourceforge/jsocks/Socks5Message;

    invoke-direct {v0, p1}, Lnet/sourceforge/jsocks/Socks5Message;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public getAuthenticationMethod(I)Lnet/sourceforge/jsocks/Authentication;
    .locals 3
    .param p1, "methodId"    # I

    .prologue
    .line 107
    iget-object v1, p0, Lnet/sourceforge/jsocks/Socks5Proxy;->authMethods:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 108
    .local v0, "method":Ljava/lang/Object;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 109
    .end local v0    # "method":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v0    # "method":Ljava/lang/Object;
    :cond_0
    check-cast v0, Lnet/sourceforge/jsocks/Authentication;

    .end local v0    # "method":Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public resolveAddrLocally()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lnet/sourceforge/jsocks/Socks5Proxy;->resolveAddrLocally:Z

    return v0
.end method

.method public resolveAddrLocally(Z)Z
    .locals 1
    .param p1, "doResolve"    # Z

    .prologue
    .line 69
    iget-boolean v0, p0, Lnet/sourceforge/jsocks/Socks5Proxy;->resolveAddrLocally:Z

    .line 70
    .local v0, "old":Z
    iput-boolean p1, p0, Lnet/sourceforge/jsocks/Socks5Proxy;->resolveAddrLocally:Z

    .line 71
    return v0
.end method

.method public setAuthenticationMethod(ILnet/sourceforge/jsocks/Authentication;)Z
    .locals 4
    .param p1, "methodId"    # I
    .param p2, "method"    # Lnet/sourceforge/jsocks/Authentication;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 90
    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-le p1, v0, :cond_1

    :cond_0
    move v0, v2

    .line 98
    :goto_0
    return v0

    .line 92
    :cond_1
    if-nez p2, :cond_3

    .line 94
    iget-object v0, p0, Lnet/sourceforge/jsocks/Socks5Proxy;->authMethods:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0

    .line 96
    :cond_3
    iget-object v0, p0, Lnet/sourceforge/jsocks/Socks5Proxy;->authMethods:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v3

    .line 98
    goto :goto_0
.end method

.method protected startSession()V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/jsocks/SocksException;
        }
    .end annotation

    .prologue
    .line 143
    invoke-super/range {p0 .. p0}, Lnet/sourceforge/jsocks/Proxy;->startSession()V

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sourceforge/jsocks/Socks5Proxy;->proxySocket:Ljava/net/Socket;

    move-object v10, v0

    .line 149
    .local v10, "ps":Ljava/net/Socket;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sourceforge/jsocks/Socks5Proxy;->authMethods:Ljava/util/Hashtable;

    move-object v15, v0

    invoke-virtual {v15}, Ljava/util/Hashtable;->size()I

    move-result v15

    int-to-byte v9, v15

    .line 151
    .local v9, "nMethods":B
    add-int/lit8 v15, v9, 0x2

    new-array v3, v15, [B

    .line 152
    .local v3, "buf":[B
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lnet/sourceforge/jsocks/Socks5Proxy;->version:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    aput-byte v16, v3, v15

    .line 153
    const/4 v15, 0x1

    aput-byte v9, v3, v15

    .line 154
    const/4 v4, 0x2

    .line 156
    .local v4, "i":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sourceforge/jsocks/Socks5Proxy;->authMethods:Ljava/util/Hashtable;

    move-object v15, v0

    invoke-virtual {v15}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v6

    .local v6, "ids":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/Integer;>;"
    move v5, v4

    .line 157
    .end local v4    # "i":I
    .local v5, "i":I
    :goto_0
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 158
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "i":I
    .restart local v4    # "i":I
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v15

    int-to-byte v15, v15

    aput-byte v15, v3, v5

    move v5, v4

    .end local v4    # "i":I
    .restart local v5    # "i":I
    goto :goto_0

    .line 160
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sourceforge/jsocks/Socks5Proxy;->out:Ljava/io/OutputStream;

    move-object v15, v0

    invoke-virtual {v15, v3}, Ljava/io/OutputStream;->write([B)V

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sourceforge/jsocks/Socks5Proxy;->out:Ljava/io/OutputStream;

    move-object v15, v0

    invoke-virtual {v15}, Ljava/io/OutputStream;->flush()V

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sourceforge/jsocks/Socks5Proxy;->in:Ljava/io/InputStream;

    move-object v15, v0

    invoke-virtual {v15}, Ljava/io/InputStream;->read()I

    move-result v14

    .line 164
    .local v14, "versionNumber":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sourceforge/jsocks/Socks5Proxy;->in:Ljava/io/InputStream;

    move-object v15, v0

    invoke-virtual {v15}, Ljava/io/InputStream;->read()I

    move-result v15

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lnet/sourceforge/jsocks/Socks5Proxy;->selectedMethod:I

    .line 166
    if-ltz v14, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lnet/sourceforge/jsocks/Socks5Proxy;->selectedMethod:I

    move v15, v0

    if-gez v15, :cond_2

    .line 168
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/jsocks/Socks5Proxy;->endSession()V

    .line 169
    new-instance v15, Lnet/sourceforge/jsocks/SocksException;

    const/high16 v16, 0x30000

    const-string v17, "Connection to proxy lost."

    invoke-direct/range {v15 .. v17}, Lnet/sourceforge/jsocks/SocksException;-><init>(ILjava/lang/String;)V

    throw v15
    :try_end_0
    .catch Lnet/sourceforge/jsocks/SocksException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 203
    .end local v3    # "buf":[B
    .end local v5    # "i":I
    .end local v6    # "ids":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/Integer;>;"
    .end local v9    # "nMethods":B
    .end local v14    # "versionNumber":I
    :catch_0
    move-exception v15

    move-object v11, v15

    .line 204
    .local v11, "s_ex":Lnet/sourceforge/jsocks/SocksException;
    throw v11

    .line 172
    .end local v11    # "s_ex":Lnet/sourceforge/jsocks/SocksException;
    .restart local v3    # "buf":[B
    .restart local v5    # "i":I
    .restart local v6    # "ids":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/Integer;>;"
    .restart local v9    # "nMethods":B
    .restart local v14    # "versionNumber":I
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget v0, v0, Lnet/sourceforge/jsocks/Socks5Proxy;->version:I

    move v15, v0

    if-ge v14, v15, :cond_3

    .line 175
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lnet/sourceforge/jsocks/Socks5Proxy;->selectedMethod:I

    move v15, v0

    const/16 v16, 0xff

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_4

    .line 176
    invoke-virtual {v10}, Ljava/net/Socket;->close()V

    .line 177
    new-instance v15, Lnet/sourceforge/jsocks/SocksException;

    const/high16 v16, 0x40000

    invoke-direct/range {v15 .. v16}, Lnet/sourceforge/jsocks/SocksException;-><init>(I)V

    throw v15
    :try_end_1
    .catch Lnet/sourceforge/jsocks/SocksException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 205
    .end local v3    # "buf":[B
    .end local v5    # "i":I
    .end local v6    # "ids":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/Integer;>;"
    .end local v9    # "nMethods":B
    .end local v14    # "versionNumber":I
    :catch_1
    move-exception v15

    move-object v13, v15

    .line 206
    .local v13, "uh_ex":Ljava/net/UnknownHostException;
    new-instance v15, Lnet/sourceforge/jsocks/SocksException;

    const/high16 v16, 0x20000

    invoke-direct/range {v15 .. v16}, Lnet/sourceforge/jsocks/SocksException;-><init>(I)V

    throw v15

    .line 180
    .end local v13    # "uh_ex":Ljava/net/UnknownHostException;
    .restart local v3    # "buf":[B
    .restart local v5    # "i":I
    .restart local v6    # "ids":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/Integer;>;"
    .restart local v9    # "nMethods":B
    .restart local v14    # "versionNumber":I
    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    iget v0, v0, Lnet/sourceforge/jsocks/Socks5Proxy;->selectedMethod:I

    move v15, v0

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lnet/sourceforge/jsocks/Socks5Proxy;->getAuthenticationMethod(I)Lnet/sourceforge/jsocks/Authentication;

    move-result-object v2

    .line 181
    .local v2, "auth":Lnet/sourceforge/jsocks/Authentication;
    if-nez v2, :cond_5

    .line 184
    new-instance v15, Lnet/sourceforge/jsocks/SocksException;

    const/high16 v16, 0x60000

    const-string v17, "Speciefied Authentication not found!"

    invoke-direct/range {v15 .. v17}, Lnet/sourceforge/jsocks/SocksException;-><init>(ILjava/lang/String;)V

    throw v15
    :try_end_2
    .catch Lnet/sourceforge/jsocks/SocksException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 207
    .end local v2    # "auth":Lnet/sourceforge/jsocks/Authentication;
    .end local v3    # "buf":[B
    .end local v5    # "i":I
    .end local v6    # "ids":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/Integer;>;"
    .end local v9    # "nMethods":B
    .end local v14    # "versionNumber":I
    :catch_2
    move-exception v15

    move-object v12, v15

    .line 208
    .local v12, "so_ex":Ljava/net/SocketException;
    new-instance v15, Lnet/sourceforge/jsocks/SocksException;

    const/high16 v16, 0x20000

    invoke-direct/range {v15 .. v16}, Lnet/sourceforge/jsocks/SocksException;-><init>(I)V

    throw v15

    .line 187
    .end local v12    # "so_ex":Ljava/net/SocketException;
    .restart local v2    # "auth":Lnet/sourceforge/jsocks/Authentication;
    .restart local v3    # "buf":[B
    .restart local v5    # "i":I
    .restart local v6    # "ids":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/Integer;>;"
    .restart local v9    # "nMethods":B
    .restart local v14    # "versionNumber":I
    :cond_5
    :try_start_3
    move-object/from16 v0, p0

    iget v0, v0, Lnet/sourceforge/jsocks/Socks5Proxy;->selectedMethod:I

    move v15, v0

    invoke-interface {v2, v15, v10}, Lnet/sourceforge/jsocks/Authentication;->doSocksAuthentication(ILjava/net/Socket;)[Ljava/lang/Object;

    move-result-object v7

    .line 188
    .local v7, "in_out":[Ljava/lang/Object;
    if-nez v7, :cond_6

    .line 190
    new-instance v15, Lnet/sourceforge/jsocks/SocksException;

    const/high16 v16, 0x50000

    invoke-direct/range {v15 .. v16}, Lnet/sourceforge/jsocks/SocksException;-><init>(I)V

    throw v15
    :try_end_3
    .catch Lnet/sourceforge/jsocks/SocksException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 209
    .end local v2    # "auth":Lnet/sourceforge/jsocks/Authentication;
    .end local v3    # "buf":[B
    .end local v5    # "i":I
    .end local v6    # "ids":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/Integer;>;"
    .end local v7    # "in_out":[Ljava/lang/Object;
    .end local v9    # "nMethods":B
    .end local v14    # "versionNumber":I
    :catch_3
    move-exception v15

    move-object v8, v15

    .line 211
    .local v8, "io_ex":Ljava/io/IOException;
    new-instance v15, Lnet/sourceforge/jsocks/SocksException;

    const/high16 v16, 0x30000

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v15 .. v17}, Lnet/sourceforge/jsocks/SocksException;-><init>(ILjava/lang/String;)V

    throw v15

    .line 198
    .end local v8    # "io_ex":Ljava/io/IOException;
    .restart local v2    # "auth":Lnet/sourceforge/jsocks/Authentication;
    .restart local v3    # "buf":[B
    .restart local v5    # "i":I
    .restart local v6    # "ids":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/Integer;>;"
    .restart local v7    # "in_out":[Ljava/lang/Object;
    .restart local v9    # "nMethods":B
    .restart local v14    # "versionNumber":I
    :cond_6
    const/4 v15, 0x0

    :try_start_4
    aget-object v2, v7, v15

    .end local v2    # "auth":Lnet/sourceforge/jsocks/Authentication;
    check-cast v2, Ljava/io/InputStream;

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/sourceforge/jsocks/Socks5Proxy;->in:Ljava/io/InputStream;

    .line 199
    const/4 v15, 0x1

    aget-object v2, v7, v15

    check-cast v2, Ljava/io/OutputStream;

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/sourceforge/jsocks/Socks5Proxy;->out:Ljava/io/OutputStream;

    .line 200
    array-length v15, v7

    const/16 v16, 0x2

    move v0, v15

    move/from16 v1, v16

    if-le v0, v1, :cond_7

    .line 201
    const/4 v15, 0x2

    aget-object v2, v7, v15

    check-cast v2, Lnet/sourceforge/jsocks/UDPEncapsulation;

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/sourceforge/jsocks/Socks5Proxy;->udp_encapsulation:Lnet/sourceforge/jsocks/UDPEncapsulation;
    :try_end_4
    .catch Lnet/sourceforge/jsocks/SocksException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 213
    :cond_7
    return-void
.end method
