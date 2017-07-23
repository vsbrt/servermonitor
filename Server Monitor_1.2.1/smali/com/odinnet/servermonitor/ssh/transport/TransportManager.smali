.class public Lcom/odinnet/servermonitor/ssh/transport/TransportManager;
.super Ljava/lang/Object;
.source "TransportManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/odinnet/servermonitor/ssh/transport/TransportManager$AsynchronousWorker;,
        Lcom/odinnet/servermonitor/ssh/transport/TransportManager$HandlerEntry;
    }
.end annotation


# static fields
.field private static final log:Lcom/odinnet/servermonitor/ssh/log/Logger;


# instance fields
.field private final asynchronousQueue:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<[B>;"
        }
    .end annotation
.end field

.field private asynchronousThread:Ljava/lang/Thread;

.field connectionClosed:Z

.field connectionMonitors:Ljava/util/Vector;

.field connectionSemaphore:Ljava/lang/Object;

.field flagKexOngoing:Z

.field hostname:Ljava/lang/String;

.field km:Lcom/odinnet/servermonitor/ssh/transport/KexManager;

.field messageHandlers:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/odinnet/servermonitor/ssh/transport/TransportManager$HandlerEntry;",
            ">;"
        }
    .end annotation
.end field

.field monitorsWereInformed:Z

.field port:I

.field reasonClosedCause:Ljava/lang/Throwable;

.field receiveThread:Ljava/lang/Thread;

.field final sock:Ljava/net/Socket;

.field tc:Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-class v0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    invoke-static {v0}, Lcom/odinnet/servermonitor/ssh/log/Logger;->getLogger(Ljava/lang/Class;)Lcom/odinnet/servermonitor/ssh/log/Logger;

    move-result-object v0

    sput-object v0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 3
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->asynchronousQueue:Ljava/util/Vector;

    .line 67
    iput-object v2, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->asynchronousThread:Ljava/lang/Thread;

    .line 128
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->sock:Ljava/net/Socket;

    .line 130
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->connectionSemaphore:Ljava/lang/Object;

    .line 132
    iput-boolean v1, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->flagKexOngoing:Z

    .line 133
    iput-boolean v1, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->connectionClosed:Z

    .line 135
    iput-object v2, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->reasonClosedCause:Ljava/lang/Throwable;

    .line 140
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->messageHandlers:Ljava/util/Vector;

    .line 144
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->connectionMonitors:Ljava/util/Vector;

    .line 145
    iput-boolean v1, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->monitorsWereInformed:Z

    .line 210
    iput-object p1, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->hostname:Ljava/lang/String;

    .line 211
    iput p2, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->port:I

    .line 212
    return-void
.end method

.method static synthetic access$000(Lcom/odinnet/servermonitor/ssh/transport/TransportManager;)Ljava/util/Vector;
    .locals 1
    .param p0, "x0"    # Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->asynchronousQueue:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$102(Lcom/odinnet/servermonitor/ssh/transport/TransportManager;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .param p0, "x0"    # Lcom/odinnet/servermonitor/ssh/transport/TransportManager;
    .param p1, "x1"    # Ljava/lang/Thread;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->asynchronousThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$200()Lcom/odinnet/servermonitor/ssh/log/Logger;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    return-object v0
.end method

.method private createInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->parseIPv4Address(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 163
    .local v0, "addr":Ljava/net/InetAddress;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 166
    :goto_0
    return-object v1

    :cond_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    goto :goto_0
.end method

.method private establishConnection(Lcom/odinnet/servermonitor/ssh/ProxyData;I)V
    .locals 21
    .param p1, "proxyData"    # Lcom/odinnet/servermonitor/ssh/ProxyData;
    .param p2, "connectTimeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 339
    if-nez p1, :cond_0

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->hostname:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->createInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    .line 342
    .local v5, "addr":Ljava/net/InetAddress;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->sock:Ljava/net/Socket;

    move-object/from16 v18, v0

    new-instance v19, Ljava/net/InetSocketAddress;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->port:I

    move/from16 v20, v0

    move-object/from16 v0, v19

    move-object v1, v5

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->sock:Ljava/net/Socket;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 439
    :goto_0
    return-void

    .line 347
    .end local v5    # "addr":Ljava/net/InetAddress;
    :cond_0
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/odinnet/servermonitor/ssh/HTTPProxyData;

    move/from16 v18, v0

    if-eqz v18, :cond_a

    .line 349
    move-object/from16 v0, p1

    check-cast v0, Lcom/odinnet/servermonitor/ssh/HTTPProxyData;

    move-object/from16 v16, v0

    .line 353
    .local v16, "pd":Lcom/odinnet/servermonitor/ssh/HTTPProxyData;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/HTTPProxyData;->proxyHost:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->createInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    .line 354
    .restart local v5    # "addr":Ljava/net/InetAddress;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->sock:Ljava/net/Socket;

    move-object/from16 v18, v0

    new-instance v19, Ljava/net/InetSocketAddress;

    move-object/from16 v0, v16

    iget v0, v0, Lcom/odinnet/servermonitor/ssh/HTTPProxyData;->proxyPort:I

    move/from16 v20, v0

    move-object/from16 v0, v19

    move-object v1, v5

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->sock:Ljava/net/Socket;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 359
    new-instance v17, Ljava/lang/StringBuffer;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    .line 361
    .local v17, "sb":Ljava/lang/StringBuffer;
    const-string v18, "CONNECT "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->hostname:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 363
    const/16 v18, 0x3a

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 364
    move-object/from16 v0, p0

    iget v0, v0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->port:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 365
    const-string v18, " HTTP/1.0\r\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 367
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/HTTPProxyData;->proxyUser:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/HTTPProxyData;->proxyPass:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    .line 369
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/HTTPProxyData;->proxyUser:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ":"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/HTTPProxyData;->proxyPass:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 370
    .local v7, "credentials":Ljava/lang/String;
    const-string v18, "ISO-8859-1"

    move-object v0, v7

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/odinnet/servermonitor/ssh/crypto/Base64;->encode([B)[C

    move-result-object v8

    .line 371
    .local v8, "encoded":[C
    const-string v18, "Proxy-Authorization: Basic "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 372
    move-object/from16 v0, v17

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 373
    const-string v18, "\r\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 376
    .end local v7    # "credentials":Ljava/lang/String;
    .end local v8    # "encoded":[C
    :cond_1
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/HTTPProxyData;->requestHeaderLines:[Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3

    .line 378
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/HTTPProxyData;->requestHeaderLines:[Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move v0, v11

    move/from16 v1, v18

    if-ge v0, v1, :cond_3

    .line 380
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/HTTPProxyData;->requestHeaderLines:[Ljava/lang/String;

    move-object/from16 v18, v0

    aget-object v18, v18, v11

    if-eqz v18, :cond_2

    .line 382
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/HTTPProxyData;->requestHeaderLines:[Ljava/lang/String;

    move-object/from16 v18, v0

    aget-object v18, v18, v11

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 383
    const-string v18, "\r\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 378
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 388
    .end local v11    # "i":I
    :cond_3
    const-string v18, "\r\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->sock:Ljava/net/Socket;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v15

    .line 392
    .local v15, "out":Ljava/io/OutputStream;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    const-string v19, "ISO-8859-1"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v18

    move-object v0, v15

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 393
    invoke-virtual {v15}, Ljava/io/OutputStream;->flush()V

    .line 397
    const/16 v18, 0x400

    move/from16 v0, v18

    new-array v0, v0, [B

    move-object v6, v0

    .line 398
    .local v6, "buffer":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->sock:Ljava/net/Socket;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v13

    .line 400
    .local v13, "in":Ljava/io/InputStream;
    invoke-static {v13, v6}, Lcom/odinnet/servermonitor/ssh/transport/ClientServerHello;->readLineRN(Ljava/io/InputStream;[B)I

    move-result v14

    .line 402
    .local v14, "len":I
    new-instance v10, Ljava/lang/String;

    const/16 v18, 0x0

    const-string v19, "ISO-8859-1"

    move-object v0, v10

    move-object v1, v6

    move/from16 v2, v18

    move v3, v14

    move-object/from16 v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 404
    .local v10, "httpReponse":Ljava/lang/String;
    const-string v18, "HTTP/"

    move-object v0, v10

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_4

    .line 405
    new-instance v18, Ljava/io/IOException;

    const-string v19, "The proxy did not send back a valid HTTP response."

    invoke-direct/range {v18 .. v19}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 409
    :cond_4
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v19, 0xe

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_5

    const/16 v18, 0x8

    move-object v0, v10

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v19, 0x20

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    const/16 v18, 0xc

    move-object v0, v10

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v19, 0x20

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_6

    .line 410
    :cond_5
    new-instance v18, Ljava/io/IOException;

    const-string v19, "The proxy did not send back a valid HTTP response."

    invoke-direct/range {v18 .. v19}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 412
    :cond_6
    const/4 v9, 0x0

    .line 416
    .local v9, "errorCode":I
    const/16 v18, 0x9

    const/16 v19, 0xc

    :try_start_0
    move-object v0, v10

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 423
    if-ltz v9, :cond_7

    const/16 v18, 0x3e7

    move v0, v9

    move/from16 v1, v18

    if-le v0, v1, :cond_8

    .line 424
    :cond_7
    new-instance v18, Ljava/io/IOException;

    const-string v19, "The proxy did not send back a valid HTTP response."

    invoke-direct/range {v18 .. v19}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 418
    :catch_0
    move-exception v18

    move-object/from16 v12, v18

    .line 420
    .local v12, "ignore":Ljava/lang/NumberFormatException;
    new-instance v18, Ljava/io/IOException;

    const-string v19, "The proxy did not send back a valid HTTP response."

    invoke-direct/range {v18 .. v19}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 426
    .end local v12    # "ignore":Ljava/lang/NumberFormatException;
    :cond_8
    const/16 v18, 0xc8

    move v0, v9

    move/from16 v1, v18

    if-eq v0, v1, :cond_9

    .line 428
    new-instance v18, Lcom/odinnet/servermonitor/ssh/HTTPProxyException;

    const/16 v19, 0xd

    move-object v0, v10

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move v2, v9

    invoke-direct {v0, v1, v2}, Lcom/odinnet/servermonitor/ssh/HTTPProxyException;-><init>(Ljava/lang/String;I)V

    throw v18

    .line 435
    :cond_9
    invoke-static {v13, v6}, Lcom/odinnet/servermonitor/ssh/transport/ClientServerHello;->readLineRN(Ljava/io/InputStream;[B)I

    move-result v14

    .line 436
    if-nez v14, :cond_9

    goto/16 :goto_0

    .line 442
    .end local v5    # "addr":Ljava/net/InetAddress;
    .end local v6    # "buffer":[B
    .end local v9    # "errorCode":I
    .end local v10    # "httpReponse":Ljava/lang/String;
    .end local v13    # "in":Ljava/io/InputStream;
    .end local v14    # "len":I
    .end local v15    # "out":Ljava/io/OutputStream;
    .end local v16    # "pd":Lcom/odinnet/servermonitor/ssh/HTTPProxyData;
    .end local v17    # "sb":Ljava/lang/StringBuffer;
    :cond_a
    new-instance v18, Ljava/io/IOException;

    const-string v19, "Unsupported ProxyData"

    invoke-direct/range {v18 .. v19}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v18
.end method

.method private parseIPv4Address(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 11
    .param p1, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x30

    const/4 v9, 0x4

    const/4 v8, 0x0

    .line 171
    if-nez p1, :cond_0

    move-object v6, v8

    .line 205
    :goto_0
    return-object v6

    .line 174
    :cond_0
    const/16 v6, 0x2e

    invoke-static {p1, v6}, Lcom/odinnet/servermonitor/ssh/util/Tokenizer;->parseTokens(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v5

    .line 176
    .local v5, "quad":[Ljava/lang/String;
    if-eqz v5, :cond_1

    array-length v6, v5

    if-eq v6, v9, :cond_2

    :cond_1
    move-object v6, v8

    .line 177
    goto :goto_0

    .line 179
    :cond_2
    new-array v0, v9, [B

    .line 181
    .local v0, "addr":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v9, :cond_9

    .line 183
    const/4 v4, 0x0

    .line 185
    .local v4, "part":I
    aget-object v6, v5, v2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_3

    aget-object v6, v5, v2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x3

    if-le v6, v7, :cond_4

    :cond_3
    move-object v6, v8

    .line 186
    goto :goto_0

    .line 188
    :cond_4
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_2
    aget-object v6, v5, v2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v3, v6, :cond_7

    .line 190
    aget-object v6, v5, v2

    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 193
    .local v1, "c":C
    if-lt v1, v10, :cond_5

    const/16 v6, 0x39

    if-le v1, v6, :cond_6

    :cond_5
    move-object v6, v8

    .line 194
    goto :goto_0

    .line 196
    :cond_6
    mul-int/lit8 v6, v4, 0xa

    sub-int v7, v1, v10

    add-int v4, v6, v7

    .line 188
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 199
    .end local v1    # "c":C
    :cond_7
    const/16 v6, 0xff

    if-le v4, v6, :cond_8

    move-object v6, v8

    .line 200
    goto :goto_0

    .line 202
    :cond_8
    int-to-byte v6, v4

    aput-byte v6, v0, v2

    .line 181
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 205
    .end local v3    # "k":I
    .end local v4    # "part":I
    :cond_9
    invoke-static {p1, v0}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;

    move-result-object v6

    goto :goto_0
.end method


# virtual methods
.method public changeRecvCipher(Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipher;Lcom/odinnet/servermonitor/ssh/crypto/digest/MAC;)V
    .locals 1
    .param p1, "bc"    # Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipher;
    .param p2, "mac"    # Lcom/odinnet/servermonitor/ssh/crypto/digest/MAC;

    .prologue
    .line 582
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->tc:Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;

    invoke-virtual {v0, p1, p2}, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->changeRecvCipher(Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipher;Lcom/odinnet/servermonitor/ssh/crypto/digest/MAC;)V

    .line 583
    return-void
.end method

.method public changeRecvCompression(Lcom/odinnet/servermonitor/ssh/compression/ICompressor;)V
    .locals 1
    .param p1, "comp"    # Lcom/odinnet/servermonitor/ssh/compression/ICompressor;

    .prologue
    .line 594
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->tc:Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;

    invoke-virtual {v0, p1}, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->changeRecvCompression(Lcom/odinnet/servermonitor/ssh/compression/ICompressor;)V

    .line 595
    return-void
.end method

.method public changeSendCipher(Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipher;Lcom/odinnet/servermonitor/ssh/crypto/digest/MAC;)V
    .locals 1
    .param p1, "bc"    # Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipher;
    .param p2, "mac"    # Lcom/odinnet/servermonitor/ssh/crypto/digest/MAC;

    .prologue
    .line 587
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->tc:Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;

    invoke-virtual {v0, p1, p2}, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->changeSendCipher(Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipher;Lcom/odinnet/servermonitor/ssh/crypto/digest/MAC;)V

    .line 588
    return-void
.end method

.method public changeSendCompression(Lcom/odinnet/servermonitor/ssh/compression/ICompressor;)V
    .locals 1
    .param p1, "comp"    # Lcom/odinnet/servermonitor/ssh/compression/ICompressor;

    .prologue
    .line 601
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->tc:Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;

    invoke-virtual {v0, p1}, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->changeSendCompression(Lcom/odinnet/servermonitor/ssh/compression/ICompressor;)V

    .line 602
    return-void
.end method

.method public close(Ljava/lang/Throwable;Z)V
    .locals 10
    .param p1, "cause"    # Ljava/lang/Throwable;
    .param p2, "useDisconnectPacket"    # Z

    .prologue
    const/4 v7, 0x1

    .line 249
    if-nez p2, :cond_0

    .line 257
    :try_start_0
    iget-object v5, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->sock:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 269
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->connectionSemaphore:Ljava/lang/Object;

    monitor-enter v5

    .line 271
    :try_start_1
    iget-boolean v6, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->connectionClosed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v6, :cond_3

    .line 273
    if-ne p2, v7, :cond_2

    .line 277
    :try_start_2
    new-instance v6, Lcom/odinnet/servermonitor/ssh/packets/PacketDisconnect;

    const/16 v7, 0xb

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-direct {v6, v7, v8, v9}, Lcom/odinnet/servermonitor/ssh/packets/PacketDisconnect;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/odinnet/servermonitor/ssh/packets/PacketDisconnect;->getPayload()[B

    move-result-object v4

    .line 279
    .local v4, "msg":[B
    iget-object v6, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->tc:Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;

    if-eqz v6, :cond_1

    .line 280
    iget-object v6, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->tc:Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;

    invoke-virtual {v6, v4}, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->sendMessage([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 288
    .end local v4    # "msg":[B
    :cond_1
    :goto_1
    :try_start_3
    iget-object v6, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->sock:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 295
    :cond_2
    :goto_2
    const/4 v6, 0x1

    :try_start_4
    iput-boolean v6, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->connectionClosed:Z

    .line 296
    iput-object p1, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->reasonClosedCause:Ljava/lang/Throwable;

    .line 298
    :cond_3
    iget-object v6, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->connectionSemaphore:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 299
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 303
    const/4 v3, 0x0

    .line 305
    .local v3, "monitors":Ljava/util/Vector;
    monitor-enter p0

    .line 312
    :try_start_5
    iget-boolean v5, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->monitorsWereInformed:Z

    if-nez v5, :cond_4

    .line 314
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->monitorsWereInformed:Z

    .line 315
    iget-object v5, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->connectionMonitors:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/util/Vector;

    move-object v3, v0

    .line 317
    :cond_4
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 319
    if-eqz v3, :cond_5

    .line 321
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v2, v5, :cond_5

    .line 325
    :try_start_6
    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/odinnet/servermonitor/ssh/ConnectionMonitor;

    .line 326
    .local v1, "cmon":Lcom/odinnet/servermonitor/ssh/ConnectionMonitor;
    iget-object v5, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->reasonClosedCause:Ljava/lang/Throwable;

    invoke-interface {v1, v5}, Lcom/odinnet/servermonitor/ssh/ConnectionMonitor;->connectionLost(Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 321
    .end local v1    # "cmon":Lcom/odinnet/servermonitor/ssh/ConnectionMonitor;
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 299
    .end local v2    # "i":I
    .end local v3    # "monitors":Ljava/util/Vector;
    :catchall_0
    move-exception v6

    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v6

    .line 317
    .restart local v3    # "monitors":Ljava/util/Vector;
    :catchall_1
    move-exception v5

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v5

    .line 333
    :cond_5
    return-void

    .line 328
    .restart local v2    # "i":I
    :catch_0
    move-exception v5

    goto :goto_4

    .line 290
    .end local v2    # "i":I
    .end local v3    # "monitors":Ljava/util/Vector;
    :catch_1
    move-exception v6

    goto :goto_2

    .line 282
    :catch_2
    move-exception v6

    goto :goto_1

    .line 259
    :catch_3
    move-exception v5

    goto :goto_0
.end method

.method public forceKeyExchange(Lcom/odinnet/servermonitor/ssh/crypto/CryptoWishList;Lcom/odinnet/servermonitor/ssh/DHGexParameters;)V
    .locals 1
    .param p1, "cwl"    # Lcom/odinnet/servermonitor/ssh/crypto/CryptoWishList;
    .param p2, "dhgex"    # Lcom/odinnet/servermonitor/ssh/DHGexParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 577
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->km:Lcom/odinnet/servermonitor/ssh/transport/KexManager;

    invoke-virtual {v0, p1, p2}, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->initiateKEX(Lcom/odinnet/servermonitor/ssh/crypto/CryptoWishList;Lcom/odinnet/servermonitor/ssh/DHGexParameters;)V

    .line 578
    return-void
.end method

.method public getConnectionInfo(I)Lcom/odinnet/servermonitor/ssh/ConnectionInfo;
    .locals 1
    .param p1, "kexNumber"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 231
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->km:Lcom/odinnet/servermonitor/ssh/transport/KexManager;

    invoke-virtual {v0, p1}, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->getOrWaitForConnectionInfo(I)Lcom/odinnet/servermonitor/ssh/ConnectionInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPacketOverheadEstimate()I
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->tc:Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;

    invoke-virtual {v0}, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->getPacketOverheadEstimate()I

    move-result v0

    return v0
.end method

.method public getReasonClosedCause()Ljava/lang/Throwable;
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->connectionSemaphore:Ljava/lang/Object;

    monitor-enter v0

    .line 238
    :try_start_0
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->reasonClosedCause:Ljava/lang/Throwable;

    monitor-exit v0

    return-object v1

    .line 239
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSessionIdentifier()[B
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->km:Lcom/odinnet/servermonitor/ssh/transport/KexManager;

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->sessionId:[B

    return-object v0
.end method

.method public initialize(Lcom/odinnet/servermonitor/ssh/crypto/CryptoWishList;Lcom/odinnet/servermonitor/ssh/ServerHostKeyVerifier;Lcom/odinnet/servermonitor/ssh/DHGexParameters;ILjava/security/SecureRandom;Lcom/odinnet/servermonitor/ssh/ProxyData;)V
    .locals 8
    .param p1, "cwl"    # Lcom/odinnet/servermonitor/ssh/crypto/CryptoWishList;
    .param p2, "verifier"    # Lcom/odinnet/servermonitor/ssh/ServerHostKeyVerifier;
    .param p3, "dhgex"    # Lcom/odinnet/servermonitor/ssh/DHGexParameters;
    .param p4, "connectTimeout"    # I
    .param p5, "rnd"    # Ljava/security/SecureRandom;
    .param p6, "proxyData"    # Lcom/odinnet/servermonitor/ssh/ProxyData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 450
    invoke-direct {p0, p6, p4}, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->establishConnection(Lcom/odinnet/servermonitor/ssh/ProxyData;I)V

    .line 457
    new-instance v2, Lcom/odinnet/servermonitor/ssh/transport/ClientServerHello;

    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->sock:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->sock:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lcom/odinnet/servermonitor/ssh/transport/ClientServerHello;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 459
    .local v2, "csh":Lcom/odinnet/servermonitor/ssh/transport/ClientServerHello;
    new-instance v0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;

    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->sock:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->sock:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v0, v1, v3, p5}, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/security/SecureRandom;)V

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->tc:Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;

    .line 461
    new-instance v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;

    iget-object v4, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->hostname:Ljava/lang/String;

    iget v5, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->port:I

    move-object v1, p0

    move-object v3, p1

    move-object v6, p2

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/odinnet/servermonitor/ssh/transport/KexManager;-><init>(Lcom/odinnet/servermonitor/ssh/transport/TransportManager;Lcom/odinnet/servermonitor/ssh/transport/ClientServerHello;Lcom/odinnet/servermonitor/ssh/crypto/CryptoWishList;Ljava/lang/String;ILcom/odinnet/servermonitor/ssh/ServerHostKeyVerifier;Ljava/security/SecureRandom;)V

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->km:Lcom/odinnet/servermonitor/ssh/transport/KexManager;

    .line 462
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->km:Lcom/odinnet/servermonitor/ssh/transport/KexManager;

    invoke-virtual {v0, p1, p3}, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->initiateKEX(Lcom/odinnet/servermonitor/ssh/crypto/CryptoWishList;Lcom/odinnet/servermonitor/ssh/DHGexParameters;)V

    .line 464
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/odinnet/servermonitor/ssh/transport/TransportManager$1;

    invoke-direct {v1, p0}, Lcom/odinnet/servermonitor/ssh/transport/TransportManager$1;-><init>(Lcom/odinnet/servermonitor/ssh/transport/TransportManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->receiveThread:Ljava/lang/Thread;

    .line 510
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->receiveThread:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 511
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->receiveThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 512
    return-void
.end method

.method public kexFinished()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 568
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->connectionSemaphore:Ljava/lang/Object;

    monitor-enter v0

    .line 570
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->flagKexOngoing:Z

    .line 571
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->connectionSemaphore:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 572
    monitor-exit v0

    .line 573
    return-void

    .line 572
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public receiveLoop()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 688
    const v11, 0x88b8

    new-array v5, v11, [B

    .line 692
    .local v5, "msg":[B
    :cond_0
    :goto_0
    iget-object v11, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->tc:Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;

    const/4 v12, 0x0

    array-length v13, v5

    invoke-virtual {v11, v5, v12, v13}, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->receiveMessage([BII)I

    move-result v6

    .line 694
    .local v6, "msglen":I
    const/4 v11, 0x0

    aget-byte v11, v5, v11

    and-int/lit16 v10, v11, 0xff

    .line 696
    .local v10, "type":I
    const/4 v11, 0x2

    if-eq v10, v11, :cond_0

    .line 699
    const/4 v11, 0x4

    if-ne v10, v11, :cond_3

    .line 701
    sget-object v11, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    invoke-virtual {v11}, Lcom/odinnet/servermonitor/ssh/log/Logger;->isEnabled()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 703
    new-instance v9, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;

    const/4 v11, 0x0

    invoke-direct {v9, v5, v11, v6}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;-><init>([BII)V

    .line 704
    .local v9, "tr":Lcom/odinnet/servermonitor/ssh/packets/TypesReader;
    invoke-virtual {v9}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readByte()I

    .line 705
    invoke-virtual {v9}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readBoolean()Z

    .line 706
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 707
    .local v1, "debugMessageBuffer":Ljava/lang/StringBuffer;
    const-string v11, "UTF-8"

    invoke-virtual {v9, v11}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 709
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v11

    if-ge v3, v11, :cond_2

    .line 711
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    .line 713
    .local v0, "c":C
    const/16 v11, 0x20

    if-lt v0, v11, :cond_1

    const/16 v11, 0x7e

    if-gt v0, v11, :cond_1

    .line 709
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 715
    :cond_1
    const v11, 0xfffd

    invoke-virtual {v1, v3, v11}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    goto :goto_2

    .line 718
    .end local v0    # "c":C
    :cond_2
    sget-object v11, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    const/16 v12, 0x32

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "DEBUG Message from remote: \'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/odinnet/servermonitor/ssh/log/Logger;->log(ILjava/lang/String;)V

    goto :goto_0

    .line 723
    .end local v1    # "debugMessageBuffer":Ljava/lang/StringBuffer;
    .end local v3    # "i":I
    .end local v9    # "tr":Lcom/odinnet/servermonitor/ssh/packets/TypesReader;
    :cond_3
    const/4 v11, 0x3

    if-ne v10, v11, :cond_4

    .line 725
    new-instance v11, Ljava/io/IOException;

    const-string v12, "Peer sent UNIMPLEMENTED message, that should not happen."

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 728
    :cond_4
    const/4 v11, 0x1

    if-ne v10, v11, :cond_8

    .line 730
    new-instance v9, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;

    const/4 v11, 0x0

    invoke-direct {v9, v5, v11, v6}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;-><init>([BII)V

    .line 731
    .restart local v9    # "tr":Lcom/odinnet/servermonitor/ssh/packets/TypesReader;
    invoke-virtual {v9}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readByte()I

    .line 732
    invoke-virtual {v9}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readUINT32()I

    move-result v8

    .line 733
    .local v8, "reason_code":I
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 734
    .local v7, "reasonBuffer":Ljava/lang/StringBuffer;
    const-string v11, "UTF-8"

    invoke-virtual {v9, v11}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 741
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v11

    const/16 v12, 0xff

    if-le v11, v12, :cond_5

    .line 743
    const/16 v11, 0xff

    invoke-virtual {v7, v11}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 744
    const/16 v11, 0xfe

    const/16 v12, 0x2e

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 745
    const/16 v11, 0xfd

    const/16 v12, 0x2e

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 746
    const/16 v11, 0xfc

    const/16 v12, 0x2e

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 756
    :cond_5
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v11

    if-ge v3, v11, :cond_7

    .line 758
    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    .line 760
    .restart local v0    # "c":C
    const/16 v11, 0x20

    if-lt v0, v11, :cond_6

    const/16 v11, 0x7e

    if-gt v0, v11, :cond_6

    .line 756
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 762
    :cond_6
    const v11, 0xfffd

    invoke-virtual {v7, v3, v11}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    goto :goto_4

    .line 765
    .end local v0    # "c":C
    :cond_7
    new-instance v11, Ljava/io/IOException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Peer sent DISCONNECT message (reason code "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "): "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 773
    .end local v3    # "i":I
    .end local v7    # "reasonBuffer":Ljava/lang/StringBuffer;
    .end local v8    # "reason_code":I
    .end local v9    # "tr":Lcom/odinnet/servermonitor/ssh/packets/TypesReader;
    :cond_8
    const/16 v11, 0x14

    if-eq v10, v11, :cond_9

    const/16 v11, 0x15

    if-eq v10, v11, :cond_9

    const/16 v11, 0x1e

    if-lt v10, v11, :cond_a

    const/16 v11, 0x31

    if-gt v10, v11, :cond_a

    .line 776
    :cond_9
    iget-object v11, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->km:Lcom/odinnet/servermonitor/ssh/transport/KexManager;

    invoke-virtual {v11, v5, v6}, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->handleMessage([BI)V

    goto/16 :goto_0

    .line 780
    :cond_a
    const/16 v11, 0x34

    if-ne v10, v11, :cond_b

    .line 781
    iget-object v11, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->tc:Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;

    invoke-virtual {v11}, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->startCompression()V

    .line 784
    :cond_b
    const/4 v4, 0x0

    .line 786
    .local v4, "mh":Lcom/odinnet/servermonitor/ssh/transport/MessageHandler;
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_5
    iget-object v11, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->messageHandlers:Ljava/util/Vector;

    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v11

    if-ge v3, v11, :cond_c

    .line 788
    iget-object v11, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->messageHandlers:Ljava/util/Vector;

    invoke-virtual {v11, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/odinnet/servermonitor/ssh/transport/TransportManager$HandlerEntry;

    .line 789
    .local v2, "he":Lcom/odinnet/servermonitor/ssh/transport/TransportManager$HandlerEntry;
    iget v11, v2, Lcom/odinnet/servermonitor/ssh/transport/TransportManager$HandlerEntry;->low:I

    if-gt v11, v10, :cond_d

    iget v11, v2, Lcom/odinnet/servermonitor/ssh/transport/TransportManager$HandlerEntry;->high:I

    if-gt v10, v11, :cond_d

    .line 791
    iget-object v4, v2, Lcom/odinnet/servermonitor/ssh/transport/TransportManager$HandlerEntry;->mh:Lcom/odinnet/servermonitor/ssh/transport/MessageHandler;

    .line 796
    .end local v2    # "he":Lcom/odinnet/servermonitor/ssh/transport/TransportManager$HandlerEntry;
    :cond_c
    if-nez v4, :cond_e

    .line 797
    new-instance v11, Ljava/io/IOException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unexpected SSH message (type "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 786
    .restart local v2    # "he":Lcom/odinnet/servermonitor/ssh/transport/TransportManager$HandlerEntry;
    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 799
    .end local v2    # "he":Lcom/odinnet/servermonitor/ssh/transport/TransportManager$HandlerEntry;
    :cond_e
    invoke-interface {v4, v5, v6}, Lcom/odinnet/servermonitor/ssh/transport/MessageHandler;->handleMessage([BI)V

    goto/16 :goto_0
.end method

.method public registerMessageHandler(Lcom/odinnet/servermonitor/ssh/transport/MessageHandler;II)V
    .locals 3
    .param p1, "mh"    # Lcom/odinnet/servermonitor/ssh/transport/MessageHandler;
    .param p2, "low"    # I
    .param p3, "high"    # I

    .prologue
    .line 516
    new-instance v0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager$HandlerEntry;

    invoke-direct {v0, p0}, Lcom/odinnet/servermonitor/ssh/transport/TransportManager$HandlerEntry;-><init>(Lcom/odinnet/servermonitor/ssh/transport/TransportManager;)V

    .line 517
    .local v0, "he":Lcom/odinnet/servermonitor/ssh/transport/TransportManager$HandlerEntry;
    iput-object p1, v0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager$HandlerEntry;->mh:Lcom/odinnet/servermonitor/ssh/transport/MessageHandler;

    .line 518
    iput p2, v0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager$HandlerEntry;->low:I

    .line 519
    iput p3, v0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager$HandlerEntry;->high:I

    .line 521
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->messageHandlers:Ljava/util/Vector;

    monitor-enter v1

    .line 523
    :try_start_0
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->messageHandlers:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 524
    monitor-exit v1

    .line 525
    return-void

    .line 524
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public removeMessageHandler(Lcom/odinnet/servermonitor/ssh/transport/MessageHandler;II)V
    .locals 4
    .param p1, "mh"    # Lcom/odinnet/servermonitor/ssh/transport/MessageHandler;
    .param p2, "low"    # I
    .param p3, "high"    # I

    .prologue
    .line 529
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->messageHandlers:Ljava/util/Vector;

    monitor-enter v2

    .line 531
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->messageHandlers:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 533
    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->messageHandlers:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager$HandlerEntry;

    .line 534
    .local v0, "he":Lcom/odinnet/servermonitor/ssh/transport/TransportManager$HandlerEntry;
    iget-object v3, v0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager$HandlerEntry;->mh:Lcom/odinnet/servermonitor/ssh/transport/MessageHandler;

    if-ne v3, p1, :cond_1

    iget v3, v0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager$HandlerEntry;->low:I

    if-ne v3, p2, :cond_1

    iget v3, v0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager$HandlerEntry;->high:I

    if-ne v3, p3, :cond_1

    .line 536
    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->messageHandlers:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->removeElementAt(I)V

    .line 540
    .end local v0    # "he":Lcom/odinnet/servermonitor/ssh/transport/TransportManager$HandlerEntry;
    :cond_0
    monitor-exit v2

    .line 541
    return-void

    .line 531
    .restart local v0    # "he":Lcom/odinnet/servermonitor/ssh/transport/TransportManager$HandlerEntry;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 540
    .end local v0    # "he":Lcom/odinnet/servermonitor/ssh/transport/TransportManager$HandlerEntry;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public sendAsynchronousMessage([B)V
    .locals 3
    .param p1, "msg"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 613
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->asynchronousQueue:Ljava/util/Vector;

    monitor-enter v0

    .line 615
    :try_start_0
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->asynchronousQueue:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 623
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->asynchronousQueue:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/16 v2, 0x64

    if-le v1, v2, :cond_0

    .line 624
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Error: the peer is not consuming our asynchronous replies."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 636
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 628
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->asynchronousThread:Ljava/lang/Thread;

    if-nez v1, :cond_1

    .line 630
    new-instance v1, Lcom/odinnet/servermonitor/ssh/transport/TransportManager$AsynchronousWorker;

    invoke-direct {v1, p0}, Lcom/odinnet/servermonitor/ssh/transport/TransportManager$AsynchronousWorker;-><init>(Lcom/odinnet/servermonitor/ssh/transport/TransportManager;)V

    iput-object v1, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->asynchronousThread:Ljava/lang/Thread;

    .line 631
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->asynchronousThread:Ljava/lang/Thread;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 632
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->asynchronousThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 636
    :cond_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 637
    return-void
.end method

.method public sendKexMessage([B)V
    .locals 4
    .param p1, "msg"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 545
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->connectionSemaphore:Ljava/lang/Object;

    monitor-enter v1

    .line 547
    :try_start_0
    iget-boolean v2, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->connectionClosed:Z

    if-eqz v2, :cond_0

    .line 549
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Sorry, this connection is closed."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->reasonClosedCause:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    .end local p0    # "this":Lcom/odinnet/servermonitor/ssh/transport/TransportManager;
    check-cast p0, Ljava/io/IOException;

    throw p0

    .line 563
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 552
    .restart local p0    # "this":Lcom/odinnet/servermonitor/ssh/transport/TransportManager;
    :cond_0
    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->flagKexOngoing:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 556
    :try_start_2
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->tc:Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;

    invoke-virtual {v2, p1}, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->sendMessage([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 563
    :try_start_3
    monitor-exit v1

    .line 564
    return-void

    .line 558
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 560
    .local v0, "e":Ljava/io/IOException;
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->close(Ljava/lang/Throwable;Z)V

    .line 561
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public sendMessage([B)V
    .locals 4
    .param p1, "msg"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 649
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->receiveThread:Ljava/lang/Thread;

    if-ne v1, v2, :cond_0

    .line 650
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Assertion error: sendMessage may never be invoked by the receiver thread!"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 652
    :cond_0
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->connectionSemaphore:Ljava/lang/Object;

    monitor-enter v1

    .line 656
    :goto_0
    :try_start_0
    iget-boolean v2, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->connectionClosed:Z

    if-eqz v2, :cond_1

    .line 658
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Sorry, this connection is closed."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->reasonClosedCause:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    .end local p0    # "this":Lcom/odinnet/servermonitor/ssh/transport/TransportManager;
    check-cast p0, Ljava/io/IOException;

    throw p0

    .line 683
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 662
    .restart local p0    # "this":Lcom/odinnet/servermonitor/ssh/transport/TransportManager;
    :cond_1
    :try_start_1
    iget-boolean v2, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->flagKexOngoing:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_2

    .line 676
    :try_start_2
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->tc:Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;

    invoke-virtual {v2, p1}, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->sendMessage([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 683
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 684
    return-void

    .line 667
    :cond_2
    :try_start_4
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->connectionSemaphore:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 669
    :catch_0
    move-exception v2

    goto :goto_0

    .line 678
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 680
    .local v0, "e":Ljava/io/IOException;
    const/4 v2, 0x0

    :try_start_5
    invoke-virtual {p0, v0, v2}, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->close(Ljava/lang/Throwable;Z)V

    .line 681
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public setConnectionMonitors(Ljava/util/Vector;)V
    .locals 1
    .param p1, "monitors"    # Ljava/util/Vector;

    .prologue
    .line 641
    monitor-enter p0

    .line 643
    :try_start_0
    invoke-virtual {p1}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->connectionMonitors:Ljava/util/Vector;

    .line 644
    monitor-exit p0

    .line 645
    return-void

    .line 644
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSoTimeout(I)V
    .locals 1
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 226
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->sock:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 227
    return-void
.end method

.method public setTcpNoDelay(Z)V
    .locals 1
    .param p1, "state"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 221
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->sock:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 222
    return-void
.end method

.method public startCompression()V
    .locals 1

    .prologue
    .line 608
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->tc:Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;

    invoke-virtual {v0}, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->startCompression()V

    .line 609
    return-void
.end method
