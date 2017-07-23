.class public Lcom/odinnet/servermonitor/ssh/Connection;
.super Ljava/lang/Object;
.source "Connection.java"


# static fields
.field public static final identification:Ljava/lang/String; = "TrileadSSH2Java_213"


# instance fields
.field private am:Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;

.field private authenticated:Z

.field private cm:Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;

.field private compression:Z

.field private connectionMonitors:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/odinnet/servermonitor/ssh/ConnectionMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private cryptoWishList:Lcom/odinnet/servermonitor/ssh/crypto/CryptoWishList;

.field private dhgexpara:Lcom/odinnet/servermonitor/ssh/DHGexParameters;

.field private generator:Ljava/security/SecureRandom;

.field private final hostname:Ljava/lang/String;

.field private final port:I

.field private proxyData:Lcom/odinnet/servermonitor/ssh/ProxyData;

.field private tcpNoDelay:Z

.field private tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "hostname"    # Ljava/lang/String;

    .prologue
    .line 122
    const/16 v0, 0x16

    invoke-direct {p0, p1, v0}, Lcom/odinnet/servermonitor/ssh/Connection;-><init>(Ljava/lang/String;I)V

    .line 123
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    const/4 v1, 0x0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-boolean v1, p0, Lcom/odinnet/servermonitor/ssh/Connection;->authenticated:Z

    .line 92
    iput-boolean v1, p0, Lcom/odinnet/servermonitor/ssh/Connection;->compression:Z

    .line 95
    new-instance v0, Lcom/odinnet/servermonitor/ssh/crypto/CryptoWishList;

    invoke-direct {v0}, Lcom/odinnet/servermonitor/ssh/crypto/CryptoWishList;-><init>()V

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->cryptoWishList:Lcom/odinnet/servermonitor/ssh/crypto/CryptoWishList;

    .line 97
    new-instance v0, Lcom/odinnet/servermonitor/ssh/DHGexParameters;

    invoke-direct {v0}, Lcom/odinnet/servermonitor/ssh/DHGexParameters;-><init>()V

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->dhgexpara:Lcom/odinnet/servermonitor/ssh/DHGexParameters;

    .line 105
    iput-boolean v1, p0, Lcom/odinnet/servermonitor/ssh/Connection;->tcpNoDelay:Z

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->proxyData:Lcom/odinnet/servermonitor/ssh/ProxyData;

    .line 109
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->connectionMonitors:Ljava/util/Vector;

    .line 136
    iput-object p1, p0, Lcom/odinnet/servermonitor/ssh/Connection;->hostname:Ljava/lang/String;

    .line 137
    iput p2, p0, Lcom/odinnet/servermonitor/ssh/Connection;->port:I

    .line 138
    return-void
.end method

.method static synthetic access$000(Lcom/odinnet/servermonitor/ssh/Connection;)Lcom/odinnet/servermonitor/ssh/transport/TransportManager;
    .locals 1
    .param p0, "x0"    # Lcom/odinnet/servermonitor/ssh/Connection;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    return-object v0
.end method

.method private close(Ljava/lang/Throwable;Z)V
    .locals 4
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "hard"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 606
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->cm:Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->cm:Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;

    invoke-virtual {v0}, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->closeAllChannels()V

    .line 609
    :cond_0
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    if-eqz v0, :cond_1

    .line 611
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    if-nez p2, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, p1, v1}, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->close(Ljava/lang/Throwable;Z)V

    .line 612
    iput-object v2, p0, Lcom/odinnet/servermonitor/ssh/Connection;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    .line 614
    :cond_1
    iput-object v2, p0, Lcom/odinnet/servermonitor/ssh/Connection;->am:Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;

    .line 615
    iput-object v2, p0, Lcom/odinnet/servermonitor/ssh/Connection;->cm:Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;

    .line 616
    iput-boolean v3, p0, Lcom/odinnet/servermonitor/ssh/Connection;->authenticated:Z

    .line 617
    return-void

    :cond_2
    move v1, v3

    .line 611
    goto :goto_0
.end method

.method public static declared-synchronized getAvailableCiphers()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 65
    const-class v0, Lcom/odinnet/servermonitor/ssh/Connection;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipherFactory;->getDefaultCipherList()[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getAvailableMACs()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 75
    const-class v0, Lcom/odinnet/servermonitor/ssh/Connection;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/odinnet/servermonitor/ssh/crypto/digest/MAC;->getMacList()[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getAvailableServerHostKeyAlgorithms()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 86
    const-class v0, Lcom/odinnet/servermonitor/ssh/Connection;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->getDefaultServerHostkeyAlgorithmList()[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private final getOrCreateSecureRND()Ljava/security/SecureRandom;
    .locals 1

    .prologue
    .line 1197
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->generator:Ljava/security/SecureRandom;

    if-nez v0, :cond_0

    .line 1198
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->generator:Ljava/security/SecureRandom;

    .line 1200
    :cond_0
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->generator:Ljava/security/SecureRandom;

    return-object v0
.end method

.method private removeDuplicates([Ljava/lang/String;)[Ljava/lang/String;
    .locals 11
    .param p1, "list"    # [Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 1274
    if-eqz p1, :cond_0

    array-length v8, p1

    const/4 v9, 0x2

    if-ge v8, v9, :cond_1

    :cond_0
    move-object v8, p1

    .line 1308
    :goto_0
    return-object v8

    .line 1277
    :cond_1
    array-length v8, p1

    new-array v6, v8, [Ljava/lang/String;

    .line 1279
    .local v6, "list2":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 1281
    .local v0, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v8, p1

    if-ge v4, v8, :cond_7

    .line 1283
    const/4 v2, 0x0

    .line 1285
    .local v2, "duplicate":Z
    aget-object v3, p1, v4

    .line 1287
    .local v3, "element":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_2
    if-ge v5, v0, :cond_4

    .line 1289
    if-nez v3, :cond_2

    aget-object v8, v6, v5

    if-eqz v8, :cond_3

    :cond_2
    if-eqz v3, :cond_5

    aget-object v8, v6, v5

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1291
    :cond_3
    const/4 v2, 0x1

    .line 1296
    :cond_4
    if-eqz v2, :cond_6

    .line 1281
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1287
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1299
    :cond_6
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "count":I
    .local v1, "count":I
    aget-object v8, p1, v4

    aput-object v8, v6, v0

    move v0, v1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    goto :goto_3

    .line 1302
    .end local v2    # "duplicate":Z
    .end local v3    # "element":Ljava/lang/String;
    .end local v5    # "j":I
    :cond_7
    array-length v8, v6

    if-ne v0, v8, :cond_8

    move-object v8, v6

    .line 1303
    goto :goto_0

    .line 1305
    :cond_8
    new-array v7, v0, [Ljava/lang/String;

    .line 1306
    .local v7, "tmp":[Ljava/lang/String;
    invoke-static {v6, v10, v7, v10, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v8, v7

    .line 1308
    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized addConnectionMonitor(Lcom/odinnet/servermonitor/ssh/ConnectionMonitor;)V
    .locals 2
    .param p1, "cmon"    # Lcom/odinnet/servermonitor/ssh/ConnectionMonitor;

    .prologue
    .line 569
    monitor-enter p0

    if-nez p1, :cond_0

    .line 570
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cmon argument is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 569
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 572
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->connectionMonitors:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 574
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    if-eqz v0, :cond_1

    .line 575
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/Connection;->connectionMonitors:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->setConnectionMonitors(Ljava/util/Vector;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 576
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized authenticateWithDSA(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "pem"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 174
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    if-nez v0, :cond_0

    .line 175
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection is not established!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 177
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->authenticated:Z

    if-eqz v0, :cond_1

    .line 178
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection is already authenticated!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->am:Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;

    if-nez v0, :cond_2

    .line 181
    new-instance v0, Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;

    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/Connection;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    invoke-direct {v0, v1}, Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;-><init>(Lcom/odinnet/servermonitor/ssh/transport/TransportManager;)V

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->am:Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;

    .line 183
    :cond_2
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->cm:Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;

    if-nez v0, :cond_3

    .line 184
    new-instance v0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;

    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/Connection;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    invoke-direct {v0, v1}, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;-><init>(Lcom/odinnet/servermonitor/ssh/transport/TransportManager;)V

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->cm:Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;

    .line 186
    :cond_3
    if-nez p1, :cond_4

    .line 187
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "user argument is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_4
    if-nez p2, :cond_5

    .line 190
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pem argument is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_5
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->am:Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-direct {p0}, Lcom/odinnet/servermonitor/ssh/Connection;->getOrCreateSecureRND()Ljava/security/SecureRandom;

    move-result-object v2

    invoke-virtual {v0, p1, v1, p3, v2}, Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;->authenticatePublicKey(Ljava/lang/String;[CLjava/lang/String;Ljava/security/SecureRandom;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->authenticated:Z

    .line 194
    iget-boolean v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->authenticated:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized authenticateWithKeyboardInteractive(Ljava/lang/String;Lcom/odinnet/servermonitor/ssh/InteractiveCallback;)Z
    .locals 1
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "cb"    # Lcom/odinnet/servermonitor/ssh/InteractiveCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 214
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0, p2}, Lcom/odinnet/servermonitor/ssh/Connection;->authenticateWithKeyboardInteractive(Ljava/lang/String;[Ljava/lang/String;Lcom/odinnet/servermonitor/ssh/InteractiveCallback;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized authenticateWithKeyboardInteractive(Ljava/lang/String;[Ljava/lang/String;Lcom/odinnet/servermonitor/ssh/InteractiveCallback;)Z
    .locals 2
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "submethods"    # [Ljava/lang/String;
    .param p3, "cb"    # Lcom/odinnet/servermonitor/ssh/InteractiveCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 254
    monitor-enter p0

    if-nez p3, :cond_0

    .line 255
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Callback may not ne NULL!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 257
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    if-nez v0, :cond_1

    .line 258
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection is not established!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 260
    :cond_1
    iget-boolean v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->authenticated:Z

    if-eqz v0, :cond_2

    .line 261
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection is already authenticated!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :cond_2
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->am:Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;

    if-nez v0, :cond_3

    .line 264
    new-instance v0, Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;

    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/Connection;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    invoke-direct {v0, v1}, Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;-><init>(Lcom/odinnet/servermonitor/ssh/transport/TransportManager;)V

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->am:Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;

    .line 266
    :cond_3
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->cm:Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;

    if-nez v0, :cond_4

    .line 267
    new-instance v0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;

    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/Connection;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    invoke-direct {v0, v1}, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;-><init>(Lcom/odinnet/servermonitor/ssh/transport/TransportManager;)V

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->cm:Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;

    .line 269
    :cond_4
    if-nez p1, :cond_5

    .line 270
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "user argument is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :cond_5
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->am:Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;->authenticateInteractive(Ljava/lang/String;[Ljava/lang/String;Lcom/odinnet/servermonitor/ssh/InteractiveCallback;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->authenticated:Z

    .line 274
    iget-boolean v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->authenticated:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized authenticateWithNone(Ljava/lang/String;)Z
    .locals 2
    .param p1, "user"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 356
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    if-nez v0, :cond_0

    .line 357
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection is not established!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 356
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 359
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->authenticated:Z

    if-eqz v0, :cond_1

    .line 360
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection is already authenticated!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 362
    :cond_1
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->am:Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;

    if-nez v0, :cond_2

    .line 363
    new-instance v0, Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;

    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/Connection;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    invoke-direct {v0, v1}, Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;-><init>(Lcom/odinnet/servermonitor/ssh/transport/TransportManager;)V

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->am:Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;

    .line 365
    :cond_2
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->cm:Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;

    if-nez v0, :cond_3

    .line 366
    new-instance v0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;

    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/Connection;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    invoke-direct {v0, v1}, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;-><init>(Lcom/odinnet/servermonitor/ssh/transport/TransportManager;)V

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->cm:Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;

    .line 368
    :cond_3
    if-nez p1, :cond_4

    .line 369
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "user argument is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 374
    :cond_4
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->am:Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;

    invoke-virtual {v0, p1}, Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;->authenticateNone(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->authenticated:Z

    .line 376
    iget-boolean v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->authenticated:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized authenticateWithPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 305
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    if-nez v0, :cond_0

    .line 306
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection is not established!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 308
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->authenticated:Z

    if-eqz v0, :cond_1

    .line 309
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection is already authenticated!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 311
    :cond_1
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->am:Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;

    if-nez v0, :cond_2

    .line 312
    new-instance v0, Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;

    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/Connection;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    invoke-direct {v0, v1}, Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;-><init>(Lcom/odinnet/servermonitor/ssh/transport/TransportManager;)V

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->am:Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;

    .line 314
    :cond_2
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->cm:Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;

    if-nez v0, :cond_3

    .line 315
    new-instance v0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;

    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/Connection;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    invoke-direct {v0, v1}, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;-><init>(Lcom/odinnet/servermonitor/ssh/transport/TransportManager;)V

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->cm:Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;

    .line 317
    :cond_3
    if-nez p1, :cond_4

    .line 318
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "user argument is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 320
    :cond_4
    if-nez p2, :cond_5

    .line 321
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "password argument is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 323
    :cond_5
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->am:Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;

    invoke-virtual {v0, p1, p2}, Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;->authenticatePassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->authenticated:Z

    .line 325
    iget-boolean v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->authenticated:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized authenticateWithPublicKey(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Z
    .locals 6
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "pemFile"    # Ljava/io/File;
    .param p3, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 530
    monitor-enter p0

    if-nez p2, :cond_0

    .line 531
    :try_start_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "pemFile argument is null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 530
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 533
    :cond_0
    const/16 v4, 0x100

    :try_start_1
    new-array v0, v4, [C

    .line 535
    .local v0, "buff":[C
    new-instance v1, Ljava/io/CharArrayWriter;

    invoke-direct {v1}, Ljava/io/CharArrayWriter;-><init>()V

    .line 537
    .local v1, "cw":Ljava/io/CharArrayWriter;
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 541
    .local v2, "fr":Ljava/io/FileReader;
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/FileReader;->read([C)I

    move-result v3

    .line 542
    .local v3, "len":I
    if-gez v3, :cond_1

    .line 547
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    .line 549
    invoke-virtual {v1}, Ljava/io/CharArrayWriter;->toCharArray()[C

    move-result-object v4

    invoke-virtual {p0, p1, v4, p3}, Lcom/odinnet/servermonitor/ssh/Connection;->authenticateWithPublicKey(Ljava/lang/String;[CLjava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    monitor-exit p0

    return v4

    .line 544
    :cond_1
    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {v1, v0, v4, v3}, Ljava/io/CharArrayWriter;->write([CII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized authenticateWithPublicKey(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 479
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    if-nez v0, :cond_0

    .line 480
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection is not established!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 479
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 482
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->authenticated:Z

    if-eqz v0, :cond_1

    .line 483
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection is already authenticated!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 485
    :cond_1
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->am:Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;

    if-nez v0, :cond_2

    .line 486
    new-instance v0, Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;

    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/Connection;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    invoke-direct {v0, v1}, Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;-><init>(Lcom/odinnet/servermonitor/ssh/transport/TransportManager;)V

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->am:Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;

    .line 488
    :cond_2
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->cm:Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;

    if-nez v0, :cond_3

    .line 489
    new-instance v0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;

    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/Connection;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    invoke-direct {v0, v1}, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;-><init>(Lcom/odinnet/servermonitor/ssh/transport/TransportManager;)V

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->cm:Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;

    .line 491
    :cond_3
    if-nez p1, :cond_4

    .line 492
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "user argument is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 494
    :cond_4
    if-nez p2, :cond_5

    .line 495
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Key argument is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 497
    :cond_5
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->am:Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;

    invoke-direct {p0}, Lcom/odinnet/servermonitor/ssh/Connection;->getOrCreateSecureRND()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;->authenticatePublicKey(Ljava/lang/String;Ljava/lang/Object;Ljava/security/SecureRandom;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->authenticated:Z

    .line 499
    iget-boolean v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->authenticated:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized authenticateWithPublicKey(Ljava/lang/String;[CLjava/lang/String;)Z
    .locals 2
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "pemPrivateKey"    # [C
    .param p3, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 426
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    if-nez v0, :cond_0

    .line 427
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection is not established!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 426
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 429
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->authenticated:Z

    if-eqz v0, :cond_1

    .line 430
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection is already authenticated!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 432
    :cond_1
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->am:Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;

    if-nez v0, :cond_2

    .line 433
    new-instance v0, Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;

    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/Connection;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    invoke-direct {v0, v1}, Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;-><init>(Lcom/odinnet/servermonitor/ssh/transport/TransportManager;)V

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->am:Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;

    .line 435
    :cond_2
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->cm:Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;

    if-nez v0, :cond_3

    .line 436
    new-instance v0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;

    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/Connection;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    invoke-direct {v0, v1}, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;-><init>(Lcom/odinnet/servermonitor/ssh/transport/TransportManager;)V

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->cm:Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;

    .line 438
    :cond_3
    if-nez p1, :cond_4

    .line 439
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "user argument is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 441
    :cond_4
    if-nez p2, :cond_5

    .line 442
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pemPrivateKey argument is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 444
    :cond_5
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->am:Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;

    invoke-direct {p0}, Lcom/odinnet/servermonitor/ssh/Connection;->getOrCreateSecureRND()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;->authenticatePublicKey(Ljava/lang/String;[CLjava/lang/String;Ljava/security/SecureRandom;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->authenticated:Z

    .line 446
    iget-boolean v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->authenticated:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized cancelRemotePortForwarding(I)V
    .locals 2
    .param p1, "bindPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1526
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    if-nez v0, :cond_0

    .line 1527
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You need to establish a connection first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1526
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1529
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->authenticated:Z

    if-nez v0, :cond_1

    .line 1530
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The connection is not authenticated."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1532
    :cond_1
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->cm:Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;

    invoke-virtual {v0, p1}, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->requestCancelGlobalForward(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1533
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized close()V
    .locals 2

    .prologue
    .line 600
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "Closed due to user request."

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 601
    .local v0, "t":Ljava/lang/Throwable;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/odinnet/servermonitor/ssh/Connection;->close(Ljava/lang/Throwable;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 602
    monitor-exit p0

    return-void

    .line 600
    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized connect()Lcom/odinnet/servermonitor/ssh/ConnectionInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 630
    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v1, v2}, Lcom/odinnet/servermonitor/ssh/Connection;->connect(Lcom/odinnet/servermonitor/ssh/ServerHostKeyVerifier;II)Lcom/odinnet/servermonitor/ssh/ConnectionInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized connect(Lcom/odinnet/servermonitor/ssh/ServerHostKeyVerifier;)Lcom/odinnet/servermonitor/ssh/ConnectionInfo;
    .locals 2
    .param p1, "verifier"    # Lcom/odinnet/servermonitor/ssh/ServerHostKeyVerifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 644
    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/odinnet/servermonitor/ssh/Connection;->connect(Lcom/odinnet/servermonitor/ssh/ServerHostKeyVerifier;II)Lcom/odinnet/servermonitor/ssh/ConnectionInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized connect(Lcom/odinnet/servermonitor/ssh/ServerHostKeyVerifier;II)Lcom/odinnet/servermonitor/ssh/ConnectionInfo;
    .locals 19
    .param p1, "verifier"    # Lcom/odinnet/servermonitor/ssh/ServerHostKeyVerifier;
    .param p2, "connectTimeout"    # I
    .param p3, "kexTimeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 738
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/Connection;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    move-object v3, v0

    if-eqz v3, :cond_0

    .line 739
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Connection to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/Connection;->hostname:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is already in connected state!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 738
    .end local p1    # "verifier":Lcom/odinnet/servermonitor/ssh/ServerHostKeyVerifier;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 741
    .restart local p1    # "verifier":Lcom/odinnet/servermonitor/ssh/ServerHostKeyVerifier;
    :cond_0
    if-gez p2, :cond_1

    .line 742
    :try_start_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "connectTimeout must be non-negative!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 744
    :cond_1
    if-gez p3, :cond_2

    .line 745
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "kexTimeout must be non-negative!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 747
    :cond_2
    new-instance v13, Lcom/odinnet/servermonitor/ssh/Connection$1TimeoutState;

    move-object v0, v13

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/odinnet/servermonitor/ssh/Connection$1TimeoutState;-><init>(Lcom/odinnet/servermonitor/ssh/Connection;)V

    .line 749
    .local v13, "state":Lcom/odinnet/servermonitor/ssh/Connection$1TimeoutState;
    new-instance v3, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/Connection;->hostname:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/odinnet/servermonitor/ssh/Connection;->port:I

    move v5, v0

    invoke-direct {v3, v4, v5}, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;-><init>(Ljava/lang/String;I)V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/odinnet/servermonitor/ssh/Connection;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    .line 751
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/Connection;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/Connection;->connectionMonitors:Ljava/util/Vector;

    move-object v4, v0

    invoke-virtual {v3, v4}, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->setConnectionMonitors(Ljava/util/Vector;)V

    .line 754
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/odinnet/servermonitor/ssh/Connection;->compression:Z

    move v3, v0

    if-nez v3, :cond_3

    .line 755
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/Connection;->cryptoWishList:Lcom/odinnet/servermonitor/ssh/crypto/CryptoWishList;

    move-object v3, v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "none"

    aput-object v6, v4, v5

    iput-object v4, v3, Lcom/odinnet/servermonitor/ssh/crypto/CryptoWishList;->c2s_comp_algos:[Ljava/lang/String;

    .line 756
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/Connection;->cryptoWishList:Lcom/odinnet/servermonitor/ssh/crypto/CryptoWishList;

    move-object v3, v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "none"

    aput-object v6, v4, v5

    iput-object v4, v3, Lcom/odinnet/servermonitor/ssh/crypto/CryptoWishList;->s2c_comp_algos:[Ljava/lang/String;

    .line 772
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/Connection;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    move-object v3, v0

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 775
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 779
    const/16 v18, 0x0

    .line 781
    .local v18, "token":Lcom/odinnet/servermonitor/ssh/util/TimeoutService$TimeoutToken;
    if-lez p3, :cond_4

    .line 783
    :try_start_3
    new-instance v15, Lcom/odinnet/servermonitor/ssh/Connection$1;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Lcom/odinnet/servermonitor/ssh/Connection$1;-><init>(Lcom/odinnet/servermonitor/ssh/Connection;Lcom/odinnet/servermonitor/ssh/Connection$1TimeoutState;)V

    .line 797
    .local v15, "timeoutHandler":Ljava/lang/Runnable;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move/from16 v0, p3

    int-to-long v0, v0

    move-wide v5, v0

    add-long v16, v3, v5

    .line 799
    .local v16, "timeoutHorizont":J
    move-wide/from16 v0, v16

    move-object v2, v15

    invoke-static {v0, v1, v2}, Lcom/odinnet/servermonitor/ssh/util/TimeoutService;->addTimeoutHandler(JLjava/lang/Runnable;)Lcom/odinnet/servermonitor/ssh/util/TimeoutService$TimeoutToken;
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v18

    .line 804
    .end local v15    # "timeoutHandler":Ljava/lang/Runnable;
    .end local v16    # "timeoutHorizont":J
    :cond_4
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/Connection;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/Connection;->cryptoWishList:Lcom/odinnet/servermonitor/ssh/crypto/CryptoWishList;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/Connection;->dhgexpara:Lcom/odinnet/servermonitor/ssh/DHGexParameters;

    move-object v6, v0

    invoke-direct/range {p0 .. p0}, Lcom/odinnet/servermonitor/ssh/Connection;->getOrCreateSecureRND()Ljava/security/SecureRandom;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/Connection;->proxyData:Lcom/odinnet/servermonitor/ssh/ProxyData;

    move-object v9, v0

    move-object/from16 v5, p1

    move/from16 v7, p2

    invoke-virtual/range {v3 .. v9}, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->initialize(Lcom/odinnet/servermonitor/ssh/crypto/CryptoWishList;Lcom/odinnet/servermonitor/ssh/ServerHostKeyVerifier;Lcom/odinnet/servermonitor/ssh/DHGexParameters;ILjava/security/SecureRandom;Lcom/odinnet/servermonitor/ssh/ProxyData;)V
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 812
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/Connection;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/odinnet/servermonitor/ssh/Connection;->tcpNoDelay:Z

    move v4, v0

    invoke-virtual {v3, v4}, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->setTcpNoDelay(Z)V

    .line 816
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/Connection;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->getConnectionInfo(I)Lcom/odinnet/servermonitor/ssh/ConnectionInfo;

    move-result-object v10

    .line 820
    .local v10, "ci":Lcom/odinnet/servermonitor/ssh/ConnectionInfo;
    if-eqz v18, :cond_6

    .line 822
    invoke-static/range {v18 .. v18}, Lcom/odinnet/servermonitor/ssh/util/TimeoutService;->cancelTimeoutHandler(Lcom/odinnet/servermonitor/ssh/util/TimeoutService$TimeoutToken;)V

    .line 826
    monitor-enter v13
    :try_end_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 828
    :try_start_6
    iget-boolean v3, v13, Lcom/odinnet/servermonitor/ssh/Connection$1TimeoutState;->timeoutSocketClosed:Z

    if-eqz v3, :cond_5

    .line 829
    new-instance v3, Ljava/io/IOException;

    const-string v4, "This exception will be replaced by the one below =)"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 836
    :catchall_1
    move-exception v3

    monitor-exit v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v3
    :try_end_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 841
    .end local v10    # "ci":Lcom/odinnet/servermonitor/ssh/ConnectionInfo;
    .end local p1    # "verifier":Lcom/odinnet/servermonitor/ssh/ServerHostKeyVerifier;
    :catch_0
    move-exception v3

    move-object v14, v3

    .line 843
    .local v14, "ste":Ljava/net/SocketTimeoutException;
    :try_start_8
    throw v14
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 775
    .end local v14    # "ste":Ljava/net/SocketTimeoutException;
    .end local v18    # "token":Lcom/odinnet/servermonitor/ssh/util/TimeoutService$TimeoutToken;
    .restart local p1    # "verifier":Lcom/odinnet/servermonitor/ssh/ServerHostKeyVerifier;
    :catchall_2
    move-exception v4

    :try_start_9
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 806
    .restart local v18    # "token":Lcom/odinnet/servermonitor/ssh/util/TimeoutService$TimeoutToken;
    :catch_1
    move-exception v3

    move-object v12, v3

    .line 808
    .local v12, "se":Ljava/net/SocketTimeoutException;
    :try_start_b
    new-instance v3, Ljava/net/SocketTimeoutException;

    const-string v4, "The connect() operation on the socket timed out."

    invoke-direct {v3, v4}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v12}, Ljava/net/SocketTimeoutException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    .end local p1    # "verifier":Lcom/odinnet/servermonitor/ssh/ServerHostKeyVerifier;
    check-cast p1, Ljava/net/SocketTimeoutException;

    throw p1
    :try_end_b
    .catch Ljava/net/SocketTimeoutException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 845
    .end local v12    # "se":Ljava/net/SocketTimeoutException;
    :catch_2
    move-exception v3

    move-object v11, v3

    .line 848
    .local v11, "e1":Ljava/io/IOException;
    :try_start_c
    new-instance v3, Ljava/lang/Throwable;

    const-string v4, "There was a problem during connect."

    invoke-direct {v3, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object v1, v3

    move v2, v4

    invoke-direct {v0, v1, v2}, Lcom/odinnet/servermonitor/ssh/Connection;->close(Ljava/lang/Throwable;Z)V

    .line 850
    monitor-enter v13
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 856
    :try_start_d
    iget-boolean v3, v13, Lcom/odinnet/servermonitor/ssh/Connection$1TimeoutState;->timeoutSocketClosed:Z

    if-eqz v3, :cond_7

    .line 857
    new-instance v3, Ljava/net/SocketTimeoutException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The kexTimeout ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms) expired."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 858
    :catchall_3
    move-exception v3

    monitor-exit v13
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :try_start_e
    throw v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 835
    .end local v11    # "e1":Ljava/io/IOException;
    .restart local v10    # "ci":Lcom/odinnet/servermonitor/ssh/ConnectionInfo;
    .restart local p1    # "verifier":Lcom/odinnet/servermonitor/ssh/ServerHostKeyVerifier;
    :cond_5
    const/4 v3, 0x1

    :try_start_f
    iput-boolean v3, v13, Lcom/odinnet/servermonitor/ssh/Connection$1TimeoutState;->isCancelled:Z

    .line 836
    monitor-exit v13
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 839
    :cond_6
    monitor-exit p0

    return-object v10

    .line 858
    .end local v10    # "ci":Lcom/odinnet/servermonitor/ssh/ConnectionInfo;
    .end local p1    # "verifier":Lcom/odinnet/servermonitor/ssh/ServerHostKeyVerifier;
    .restart local v11    # "e1":Ljava/io/IOException;
    :cond_7
    :try_start_10
    monitor-exit v13
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 861
    :try_start_11
    instance-of v3, v11, Lcom/odinnet/servermonitor/ssh/HTTPProxyException;

    if-eqz v3, :cond_8

    .line 862
    throw v11

    .line 864
    :cond_8
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "There was a problem while connecting to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/Connection;->hostname:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/odinnet/servermonitor/ssh/Connection;->port:I

    move v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/io/IOException;

    throw p1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0
.end method

.method public declared-synchronized createDynamicPortForwarder(I)Lcom/odinnet/servermonitor/ssh/DynamicPortForwarder;
    .locals 2
    .param p1, "local_port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 972
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    if-nez v0, :cond_0

    .line 973
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot forward ports, you need to establish a connection first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 972
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 975
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->authenticated:Z

    if-nez v0, :cond_1

    .line 976
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot forward ports, connection is not authenticated."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 978
    :cond_1
    new-instance v0, Lcom/odinnet/servermonitor/ssh/DynamicPortForwarder;

    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/Connection;->cm:Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;

    invoke-direct {v0, v1, p1}, Lcom/odinnet/servermonitor/ssh/DynamicPortForwarder;-><init>(Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized createDynamicPortForwarder(Ljava/net/InetSocketAddress;)Lcom/odinnet/servermonitor/ssh/DynamicPortForwarder;
    .locals 2
    .param p1, "addr"    # Ljava/net/InetSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 999
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    if-nez v0, :cond_0

    .line 1000
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot forward ports, you need to establish a connection first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 999
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1002
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->authenticated:Z

    if-nez v0, :cond_1

    .line 1003
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot forward ports, connection is not authenticated."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1005
    :cond_1
    new-instance v0, Lcom/odinnet/servermonitor/ssh/DynamicPortForwarder;

    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/Connection;->cm:Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;

    invoke-direct {v0, v1, p1}, Lcom/odinnet/servermonitor/ssh/DynamicPortForwarder;-><init>(Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;Ljava/net/InetSocketAddress;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized createLocalPortForwarder(ILjava/lang/String;I)Lcom/odinnet/servermonitor/ssh/LocalPortForwarder;
    .locals 2
    .param p1, "local_port"    # I
    .param p2, "host_to_connect"    # Ljava/lang/String;
    .param p3, "port_to_connect"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 891
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    if-nez v0, :cond_0

    .line 892
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot forward ports, you need to establish a connection first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 891
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 894
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->authenticated:Z

    if-nez v0, :cond_1

    .line 895
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot forward ports, connection is not authenticated."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 897
    :cond_1
    new-instance v0, Lcom/odinnet/servermonitor/ssh/LocalPortForwarder;

    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/Connection;->cm:Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/odinnet/servermonitor/ssh/LocalPortForwarder;-><init>(Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;ILjava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized createLocalPortForwarder(Ljava/net/InetSocketAddress;Ljava/lang/String;I)Lcom/odinnet/servermonitor/ssh/LocalPortForwarder;
    .locals 2
    .param p1, "addr"    # Ljava/net/InetSocketAddress;
    .param p2, "host_to_connect"    # Ljava/lang/String;
    .param p3, "port_to_connect"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 923
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    if-nez v0, :cond_0

    .line 924
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot forward ports, you need to establish a connection first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 923
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 926
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->authenticated:Z

    if-nez v0, :cond_1

    .line 927
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot forward ports, connection is not authenticated."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 929
    :cond_1
    new-instance v0, Lcom/odinnet/servermonitor/ssh/LocalPortForwarder;

    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/Connection;->cm:Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/odinnet/servermonitor/ssh/LocalPortForwarder;-><init>(Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;Ljava/net/InetSocketAddress;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized createLocalStreamForwarder(Ljava/lang/String;I)Lcom/odinnet/servermonitor/ssh/LocalStreamForwarder;
    .locals 2
    .param p1, "host_to_connect"    # Ljava/lang/String;
    .param p2, "port_to_connect"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 947
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    if-nez v0, :cond_0

    .line 948
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot forward, you need to establish a connection first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 947
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 950
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->authenticated:Z

    if-nez v0, :cond_1

    .line 951
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot forward, connection is not authenticated."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 953
    :cond_1
    new-instance v0, Lcom/odinnet/servermonitor/ssh/LocalStreamForwarder;

    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/Connection;->cm:Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;

    invoke-direct {v0, v1, p1, p2}, Lcom/odinnet/servermonitor/ssh/LocalStreamForwarder;-><init>(Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized createSCPClient()Lcom/odinnet/servermonitor/ssh/SCPClient;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1022
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    if-nez v0, :cond_0

    .line 1023
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot create SCP client, you need to establish a connection first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1022
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1025
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->authenticated:Z

    if-nez v0, :cond_1

    .line 1026
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot create SCP client, connection is not authenticated."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1028
    :cond_1
    new-instance v0, Lcom/odinnet/servermonitor/ssh/SCPClient;

    invoke-direct {v0, p0}, Lcom/odinnet/servermonitor/ssh/SCPClient;-><init>(Lcom/odinnet/servermonitor/ssh/Connection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized enableDebugging(ZLcom/odinnet/servermonitor/ssh/DebugLogger;)V
    .locals 2
    .param p1, "enable"    # Z
    .param p2, "logger"    # Lcom/odinnet/servermonitor/ssh/DebugLogger;

    .prologue
    .line 1572
    monitor-enter p0

    :try_start_0
    sput-boolean p1, Lcom/odinnet/servermonitor/ssh/log/Logger;->enabled:Z

    .line 1574
    if-nez p1, :cond_0

    .line 1576
    const/4 v1, 0x0

    sput-object v1, Lcom/odinnet/servermonitor/ssh/log/Logger;->logger:Lcom/odinnet/servermonitor/ssh/DebugLogger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1595
    :goto_0
    monitor-exit p0

    return-void

    .line 1580
    :cond_0
    if-nez p2, :cond_1

    .line 1582
    :try_start_1
    new-instance v0, Lcom/odinnet/servermonitor/ssh/Connection$2;

    invoke-direct {v0, p0}, Lcom/odinnet/servermonitor/ssh/Connection$2;-><init>(Lcom/odinnet/servermonitor/ssh/Connection;)V

    .end local p2    # "logger":Lcom/odinnet/servermonitor/ssh/DebugLogger;
    .local v0, "logger":Lcom/odinnet/servermonitor/ssh/DebugLogger;
    move-object p2, v0

    .line 1593
    .end local v0    # "logger":Lcom/odinnet/servermonitor/ssh/DebugLogger;
    .restart local p2    # "logger":Lcom/odinnet/servermonitor/ssh/DebugLogger;
    :cond_1
    sput-object p2, Lcom/odinnet/servermonitor/ssh/log/Logger;->logger:Lcom/odinnet/servermonitor/ssh/DebugLogger;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1572
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized forceKeyExchange()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1046
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    if-nez v0, :cond_0

    .line 1047
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You need to establish a connection first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1046
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1049
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/Connection;->cryptoWishList:Lcom/odinnet/servermonitor/ssh/crypto/CryptoWishList;

    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/Connection;->dhgexpara:Lcom/odinnet/servermonitor/ssh/DHGexParameters;

    invoke-virtual {v0, v1, v2}, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->forceKeyExchange(Lcom/odinnet/servermonitor/ssh/crypto/CryptoWishList;Lcom/odinnet/servermonitor/ssh/DHGexParameters;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1050
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized getConnectionInfo()Lcom/odinnet/servermonitor/ssh/ConnectionInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1083
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    if-nez v0, :cond_0

    .line 1084
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot get details of connection, you need to establish a connection first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1083
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1086
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->getConnectionInfo(I)Lcom/odinnet/servermonitor/ssh/ConnectionInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized getHostname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1059
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->hostname:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPort()I
    .locals 1

    .prologue
    .line 1069
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->port:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRemainingAuthMethods(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p1, "user"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1116
    monitor-enter p0

    if-nez p1, :cond_0

    .line 1117
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "user argument may not be NULL!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1116
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1119
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    if-nez v0, :cond_1

    .line 1120
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection is not established!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1122
    :cond_1
    iget-boolean v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->authenticated:Z

    if-eqz v0, :cond_2

    .line 1123
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection is already authenticated!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1125
    :cond_2
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->am:Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;

    if-nez v0, :cond_3

    .line 1126
    new-instance v0, Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;

    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/Connection;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    invoke-direct {v0, v1}, Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;-><init>(Lcom/odinnet/servermonitor/ssh/transport/TransportManager;)V

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->am:Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;

    .line 1128
    :cond_3
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->cm:Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;

    if-nez v0, :cond_4

    .line 1129
    new-instance v0, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;

    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/Connection;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    invoke-direct {v0, v1}, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;-><init>(Lcom/odinnet/servermonitor/ssh/transport/TransportManager;)V

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->cm:Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;

    .line 1131
    :cond_4
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->am:Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;

    invoke-virtual {v0, p1}, Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;->getRemainingMethods(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized isAuthMethodAvailable(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1181
    monitor-enter p0

    if-nez p2, :cond_0

    .line 1182
    :try_start_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "method argument may not be NULL!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1181
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1184
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/odinnet/servermonitor/ssh/Connection;->getRemainingAuthMethods(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1186
    .local v1, "methods":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 1188
    aget-object v2, v1, v0

    invoke-virtual {v2, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 1189
    const/4 v2, 0x1

    .line 1192
    :goto_1
    monitor-exit p0

    return v2

    .line 1186
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1192
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public declared-synchronized isAuthenticationComplete()Z
    .locals 1

    .prologue
    .line 1143
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->authenticated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isAuthenticationPartialSuccess()Z
    .locals 1

    .prologue
    .line 1160
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->am:Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1161
    const/4 v0, 0x0

    .line 1163
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->am:Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;

    invoke-virtual {v0}, Lcom/odinnet/servermonitor/ssh/auth/AuthenticationManager;->getPartialSuccess()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 1160
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized openSession()Lcom/odinnet/servermonitor/ssh/Session;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1213
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    if-nez v0, :cond_0

    .line 1214
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot open session, you need to establish a connection first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1213
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1216
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->authenticated:Z

    if-nez v0, :cond_1

    .line 1217
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot open session, connection is not authenticated."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1219
    :cond_1
    new-instance v0, Lcom/odinnet/servermonitor/ssh/Session;

    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/Connection;->cm:Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;

    invoke-direct {p0}, Lcom/odinnet/servermonitor/ssh/Connection;->getOrCreateSecureRND()Ljava/security/SecureRandom;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/odinnet/servermonitor/ssh/Session;-><init>(Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;Ljava/security/SecureRandom;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized ping()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1617
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    if-nez v0, :cond_0

    .line 1618
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You need to establish a connection first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1617
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1620
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->authenticated:Z

    if-nez v0, :cond_1

    .line 1621
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The connection is not authenticated."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1623
    :cond_1
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->cm:Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;

    invoke-virtual {v0}, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->requestGlobalTrileadPing()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1624
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized requestRemotePortForwarding(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 2
    .param p1, "bindAddress"    # Ljava/lang/String;
    .param p2, "bindPort"    # I
    .param p3, "targetAddress"    # Ljava/lang/String;
    .param p4, "targetPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1499
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    if-nez v0, :cond_0

    .line 1500
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You need to establish a connection first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1499
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1502
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->authenticated:Z

    if-nez v0, :cond_1

    .line 1503
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The connection is not authenticated."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1505
    :cond_1
    if-eqz p1, :cond_2

    if-eqz p3, :cond_2

    if-lez p2, :cond_2

    if-gtz p4, :cond_3

    .line 1506
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1508
    :cond_3
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->cm:Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->requestGlobalForward(Ljava/lang/String;ILjava/lang/String;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1509
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized sendIgnorePacket()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1233
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/odinnet/servermonitor/ssh/Connection;->getOrCreateSecureRND()Ljava/security/SecureRandom;

    move-result-object v1

    .line 1235
    .local v1, "rnd":Ljava/security/SecureRandom;
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v2

    new-array v0, v2, [B

    .line 1236
    .local v0, "data":[B
    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1238
    invoke-virtual {p0, v0}, Lcom/odinnet/servermonitor/ssh/Connection;->sendIgnorePacket([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1239
    monitor-exit p0

    return-void

    .line 1233
    .end local v0    # "data":[B
    .end local v1    # "rnd":Ljava/security/SecureRandom;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized sendIgnorePacket([B)V
    .locals 3
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1250
    monitor-enter p0

    if-nez p1, :cond_0

    .line 1251
    :try_start_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "data argument must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1250
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1253
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/Connection;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    if-nez v1, :cond_1

    .line 1254
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot send SSH_MSG_IGNORE packet, you need to establish a connection first."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1257
    :cond_1
    new-instance v0, Lcom/odinnet/servermonitor/ssh/packets/PacketIgnore;

    invoke-direct {v0}, Lcom/odinnet/servermonitor/ssh/packets/PacketIgnore;-><init>()V

    .line 1258
    .local v0, "pi":Lcom/odinnet/servermonitor/ssh/packets/PacketIgnore;
    invoke-virtual {v0, p1}, Lcom/odinnet/servermonitor/ssh/packets/PacketIgnore;->setData([B)V

    .line 1260
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/Connection;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    invoke-virtual {v0}, Lcom/odinnet/servermonitor/ssh/packets/PacketIgnore;->getPayload()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->sendMessage([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1261
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setClient2ServerCiphers([Ljava/lang/String;)V
    .locals 1
    .param p1, "ciphers"    # [Ljava/lang/String;

    .prologue
    .line 1318
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    array-length v0, p1

    if-nez v0, :cond_1

    .line 1319
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1318
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1320
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/odinnet/servermonitor/ssh/Connection;->removeDuplicates([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1321
    invoke-static {p1}, Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipherFactory;->checkCipherList([Ljava/lang/String;)V

    .line 1322
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->cryptoWishList:Lcom/odinnet/servermonitor/ssh/crypto/CryptoWishList;

    iput-object p1, v0, Lcom/odinnet/servermonitor/ssh/crypto/CryptoWishList;->c2s_enc_algos:[Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1323
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setClient2ServerMACs([Ljava/lang/String;)V
    .locals 1
    .param p1, "macs"    # [Ljava/lang/String;

    .prologue
    .line 1332
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    array-length v0, p1

    if-nez v0, :cond_1

    .line 1333
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1332
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1334
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/odinnet/servermonitor/ssh/Connection;->removeDuplicates([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1335
    invoke-static {p1}, Lcom/odinnet/servermonitor/ssh/crypto/digest/MAC;->checkMacList([Ljava/lang/String;)V

    .line 1336
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->cryptoWishList:Lcom/odinnet/servermonitor/ssh/crypto/CryptoWishList;

    iput-object p1, v0, Lcom/odinnet/servermonitor/ssh/crypto/CryptoWishList;->c2s_mac_algos:[Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1337
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setCompression(Z)V
    .locals 3
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 586
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    if-eqz v0, :cond_0

    .line 587
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connection to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/Connection;->hostname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is already in connected state!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 586
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 589
    :cond_0
    :try_start_1
    iput-boolean p1, p0, Lcom/odinnet/servermonitor/ssh/Connection;->compression:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 590
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setDHGexParameters(Lcom/odinnet/servermonitor/ssh/DHGexParameters;)V
    .locals 1
    .param p1, "dgp"    # Lcom/odinnet/servermonitor/ssh/DHGexParameters;

    .prologue
    .line 1350
    monitor-enter p0

    if-nez p1, :cond_0

    .line 1351
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1350
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1353
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/odinnet/servermonitor/ssh/Connection;->dhgexpara:Lcom/odinnet/servermonitor/ssh/DHGexParameters;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1354
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setProxyData(Lcom/odinnet/servermonitor/ssh/ProxyData;)V
    .locals 1
    .param p1, "proxyData"    # Lcom/odinnet/servermonitor/ssh/ProxyData;

    .prologue
    .line 1449
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/odinnet/servermonitor/ssh/Connection;->proxyData:Lcom/odinnet/servermonitor/ssh/ProxyData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1450
    monitor-exit p0

    return-void

    .line 1449
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSecureRandom(Ljava/security/SecureRandom;)V
    .locals 1
    .param p1, "rnd"    # Ljava/security/SecureRandom;

    .prologue
    .line 1547
    monitor-enter p0

    if-nez p1, :cond_0

    .line 1548
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1547
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1550
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/odinnet/servermonitor/ssh/Connection;->generator:Ljava/security/SecureRandom;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1551
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setServer2ClientCiphers([Ljava/lang/String;)V
    .locals 1
    .param p1, "ciphers"    # [Ljava/lang/String;

    .prologue
    .line 1363
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    array-length v0, p1

    if-nez v0, :cond_1

    .line 1364
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1363
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1365
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/odinnet/servermonitor/ssh/Connection;->removeDuplicates([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1366
    invoke-static {p1}, Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipherFactory;->checkCipherList([Ljava/lang/String;)V

    .line 1367
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->cryptoWishList:Lcom/odinnet/servermonitor/ssh/crypto/CryptoWishList;

    iput-object p1, v0, Lcom/odinnet/servermonitor/ssh/crypto/CryptoWishList;->s2c_enc_algos:[Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1368
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setServer2ClientMACs([Ljava/lang/String;)V
    .locals 1
    .param p1, "macs"    # [Ljava/lang/String;

    .prologue
    .line 1377
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    array-length v0, p1

    if-nez v0, :cond_1

    .line 1378
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1377
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1380
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/odinnet/servermonitor/ssh/Connection;->removeDuplicates([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1381
    invoke-static {p1}, Lcom/odinnet/servermonitor/ssh/crypto/digest/MAC;->checkMacList([Ljava/lang/String;)V

    .line 1382
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->cryptoWishList:Lcom/odinnet/servermonitor/ssh/crypto/CryptoWishList;

    iput-object p1, v0, Lcom/odinnet/servermonitor/ssh/crypto/CryptoWishList;->s2c_mac_algos:[Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1383
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setServerHostKeyAlgorithms([Ljava/lang/String;)V
    .locals 1
    .param p1, "algos"    # [Ljava/lang/String;

    .prologue
    .line 1400
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    array-length v0, p1

    if-nez v0, :cond_1

    .line 1401
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1400
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1403
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/odinnet/servermonitor/ssh/Connection;->removeDuplicates([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1404
    invoke-static {p1}, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->checkServerHostkeyAlgorithmsList([Ljava/lang/String;)V

    .line 1405
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->cryptoWishList:Lcom/odinnet/servermonitor/ssh/crypto/CryptoWishList;

    iput-object p1, v0, Lcom/odinnet/servermonitor/ssh/crypto/CryptoWishList;->serverHostKeyAlgorithms:[Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1406
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setTCPNoDelay(Z)V
    .locals 1
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1423
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/odinnet/servermonitor/ssh/Connection;->tcpNoDelay:Z

    .line 1425
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    if-eqz v0, :cond_0

    .line 1426
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/Connection;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    invoke-virtual {v0, p1}, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->setTcpNoDelay(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1427
    :cond_0
    monitor-exit p0

    return-void

    .line 1423
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
