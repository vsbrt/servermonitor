.class public Lnet/sourceforge/jsocks/ProxyServer;
.super Ljava/lang/Object;
.source "ProxyServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final ABORT_MODE:I = 0x3

.field static final ACCEPT_MODE:I = 0x1

.field static final BUF_SIZE:I = 0x2000

.field static final PIPE_MODE:I = 0x2

.field static final START_MODE:I

.field static acceptTimeout:I

.field static final command_names:[Ljava/lang/String;

.field protected static iddleTimeout:I

.field static log:Ljava/io/PrintStream;

.field static proxy:Lnet/sourceforge/jsocks/Proxy;


# instance fields
.field auth:Lnet/sourceforge/jsocks/server/ServerAuthenticator;

.field in:Ljava/io/InputStream;

.field lastReadTime:J

.field mode:I

.field msg:Lnet/sourceforge/jsocks/ProxyMessage;

.field out:Ljava/io/OutputStream;

.field pipe_thread1:Ljava/lang/Thread;

.field pipe_thread2:Ljava/lang/Thread;

.field relayServer:Lnet/sourceforge/jsocks/UDPRelayServer;

.field remote_in:Ljava/io/InputStream;

.field remote_out:Ljava/io/OutputStream;

.field remote_sock:Ljava/net/Socket;

.field sock:Ljava/net/Socket;

.field ss:Ljava/net/ServerSocket;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const v0, 0x2bf20

    .line 52
    sput v0, Lnet/sourceforge/jsocks/ProxyServer;->iddleTimeout:I

    .line 53
    sput v0, Lnet/sourceforge/jsocks/ProxyServer;->acceptTimeout:I

    .line 55
    const/4 v0, 0x0

    sput-object v0, Lnet/sourceforge/jsocks/ProxyServer;->log:Ljava/io/PrintStream;

    .line 585
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "CONNECT"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "BIND"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "UDP_ASSOCIATE"

    aput-object v2, v0, v1

    sput-object v0, Lnet/sourceforge/jsocks/ProxyServer;->command_names:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lnet/sourceforge/jsocks/server/ServerAuthenticator;)V
    .locals 1
    .param p1, "auth"    # Lnet/sourceforge/jsocks/server/ServerAuthenticator;

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object v0, p0, Lnet/sourceforge/jsocks/ProxyServer;->msg:Lnet/sourceforge/jsocks/ProxyMessage;

    .line 35
    iput-object v0, p0, Lnet/sourceforge/jsocks/ProxyServer;->sock:Ljava/net/Socket;

    iput-object v0, p0, Lnet/sourceforge/jsocks/ProxyServer;->remote_sock:Ljava/net/Socket;

    .line 36
    iput-object v0, p0, Lnet/sourceforge/jsocks/ProxyServer;->ss:Ljava/net/ServerSocket;

    .line 37
    iput-object v0, p0, Lnet/sourceforge/jsocks/ProxyServer;->relayServer:Lnet/sourceforge/jsocks/UDPRelayServer;

    .line 68
    iput-object p1, p0, Lnet/sourceforge/jsocks/ProxyServer;->auth:Lnet/sourceforge/jsocks/server/ServerAuthenticator;

    .line 69
    return-void
.end method

.method protected constructor <init>(Lnet/sourceforge/jsocks/server/ServerAuthenticator;Ljava/net/Socket;)V
    .locals 1
    .param p1, "auth"    # Lnet/sourceforge/jsocks/server/ServerAuthenticator;
    .param p2, "s"    # Ljava/net/Socket;

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object v0, p0, Lnet/sourceforge/jsocks/ProxyServer;->msg:Lnet/sourceforge/jsocks/ProxyMessage;

    .line 35
    iput-object v0, p0, Lnet/sourceforge/jsocks/ProxyServer;->sock:Ljava/net/Socket;

    iput-object v0, p0, Lnet/sourceforge/jsocks/ProxyServer;->remote_sock:Ljava/net/Socket;

    .line 36
    iput-object v0, p0, Lnet/sourceforge/jsocks/ProxyServer;->ss:Ljava/net/ServerSocket;

    .line 37
    iput-object v0, p0, Lnet/sourceforge/jsocks/ProxyServer;->relayServer:Lnet/sourceforge/jsocks/UDPRelayServer;

    .line 75
    iput-object p1, p0, Lnet/sourceforge/jsocks/ProxyServer;->auth:Lnet/sourceforge/jsocks/server/ServerAuthenticator;

    .line 76
    iput-object p2, p0, Lnet/sourceforge/jsocks/ProxyServer;->sock:Ljava/net/Socket;

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Lnet/sourceforge/jsocks/ProxyServer;->mode:I

    .line 78
    return-void
.end method

.method private declared-synchronized abort()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 536
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lnet/sourceforge/jsocks/ProxyServer;->mode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_1

    .line 547
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 537
    :cond_1
    const/4 v0, 0x3

    :try_start_1
    iput v0, p0, Lnet/sourceforge/jsocks/ProxyServer;->mode:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 539
    :try_start_2
    const-string v0, "Aborting operation"

    invoke-static {v0}, Lnet/sourceforge/jsocks/ProxyServer;->log(Ljava/lang/String;)V

    .line 540
    iget-object v0, p0, Lnet/sourceforge/jsocks/ProxyServer;->remote_sock:Ljava/net/Socket;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/sourceforge/jsocks/ProxyServer;->remote_sock:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 541
    :cond_2
    iget-object v0, p0, Lnet/sourceforge/jsocks/ProxyServer;->sock:Ljava/net/Socket;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnet/sourceforge/jsocks/ProxyServer;->sock:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 542
    :cond_3
    iget-object v0, p0, Lnet/sourceforge/jsocks/ProxyServer;->relayServer:Lnet/sourceforge/jsocks/UDPRelayServer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lnet/sourceforge/jsocks/ProxyServer;->relayServer:Lnet/sourceforge/jsocks/UDPRelayServer;

    invoke-virtual {v0}, Lnet/sourceforge/jsocks/UDPRelayServer;->stop()V

    .line 543
    :cond_4
    iget-object v0, p0, Lnet/sourceforge/jsocks/ProxyServer;->ss:Ljava/net/ServerSocket;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lnet/sourceforge/jsocks/ProxyServer;->ss:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    .line 544
    :cond_5
    iget-object v0, p0, Lnet/sourceforge/jsocks/ProxyServer;->pipe_thread1:Ljava/lang/Thread;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lnet/sourceforge/jsocks/ProxyServer;->pipe_thread1:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 545
    :cond_6
    iget-object v0, p0, Lnet/sourceforge/jsocks/ProxyServer;->pipe_thread2:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/jsocks/ProxyServer;->pipe_thread2:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 546
    :catch_0
    move-exception v0

    goto :goto_0

    .line 536
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static final command2String(I)Ljava/lang/String;
    .locals 2
    .param p0, "cmd"    # I

    .prologue
    .line 588
    if-lez p0, :cond_0

    const/4 v0, 0x4

    if-ge p0, v0, :cond_0

    sget-object v0, Lnet/sourceforge/jsocks/ProxyServer;->command_names:[Ljava/lang/String;

    const/4 v1, 0x1

    sub-int v1, p0, v1

    aget-object v0, v0, v1

    .line 589
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown Command "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private doAccept()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 440
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 443
    .local v3, "startTime":J
    :goto_0
    iget-object v5, p0, Lnet/sourceforge/jsocks/ProxyServer;->ss:Ljava/net/ServerSocket;

    invoke-virtual {v5}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v2

    .line 444
    .local v2, "s":Ljava/net/Socket;
    invoke-virtual {v2}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v5

    iget-object v6, p0, Lnet/sourceforge/jsocks/ProxyServer;->msg:Lnet/sourceforge/jsocks/ProxyMessage;

    iget-object v6, v6, Lnet/sourceforge/jsocks/ProxyMessage;->ip:Ljava/net/InetAddress;

    invoke-virtual {v5, v6}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 447
    iget-object v5, p0, Lnet/sourceforge/jsocks/ProxyServer;->ss:Ljava/net/ServerSocket;

    invoke-virtual {v5}, Ljava/net/ServerSocket;->close()V

    .line 467
    iput-object v2, p0, Lnet/sourceforge/jsocks/ProxyServer;->remote_sock:Ljava/net/Socket;

    .line 468
    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    iput-object v5, p0, Lnet/sourceforge/jsocks/ProxyServer;->remote_in:Ljava/io/InputStream;

    .line 469
    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    iput-object v5, p0, Lnet/sourceforge/jsocks/ProxyServer;->remote_out:Ljava/io/OutputStream;

    .line 472
    iget-object v5, p0, Lnet/sourceforge/jsocks/ProxyServer;->remote_sock:Ljava/net/Socket;

    sget v6, Lnet/sourceforge/jsocks/ProxyServer;->iddleTimeout:I

    invoke-virtual {v5, v6}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 474
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Accepted from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/net/Socket;->getPort()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lnet/sourceforge/jsocks/ProxyServer;->log(Ljava/lang/String;)V

    .line 478
    iget-object v5, p0, Lnet/sourceforge/jsocks/ProxyServer;->msg:Lnet/sourceforge/jsocks/ProxyMessage;

    iget v5, v5, Lnet/sourceforge/jsocks/ProxyMessage;->version:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_4

    .line 479
    new-instance v1, Lnet/sourceforge/jsocks/Socks5Message;

    const/4 v5, 0x0

    invoke-virtual {v2}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v2}, Ljava/net/Socket;->getPort()I

    move-result v7

    invoke-direct {v1, v5, v6, v7}, Lnet/sourceforge/jsocks/Socks5Message;-><init>(ILjava/net/InetAddress;I)V

    .line 484
    .local v1, "response":Lnet/sourceforge/jsocks/ProxyMessage;
    :goto_1
    iget-object v5, p0, Lnet/sourceforge/jsocks/ProxyServer;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, v5}, Lnet/sourceforge/jsocks/ProxyMessage;->write(Ljava/io/OutputStream;)V

    .line 485
    return-void

    .line 449
    .end local v1    # "response":Lnet/sourceforge/jsocks/ProxyMessage;
    :cond_0
    iget-object v5, p0, Lnet/sourceforge/jsocks/ProxyServer;->ss:Ljava/net/ServerSocket;

    instance-of v5, v5, Lnet/sourceforge/jsocks/SocksServerSocket;

    if-eqz v5, :cond_1

    .line 451
    invoke-virtual {v2}, Ljava/net/Socket;->close()V

    .line 452
    iget-object v5, p0, Lnet/sourceforge/jsocks/ProxyServer;->ss:Ljava/net/ServerSocket;

    invoke-virtual {v5}, Ljava/net/ServerSocket;->close()V

    .line 453
    new-instance v5, Lnet/sourceforge/jsocks/SocksException;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Lnet/sourceforge/jsocks/SocksException;-><init>(I)V

    throw v5

    .line 455
    :cond_1
    sget v5, Lnet/sourceforge/jsocks/ProxyServer;->acceptTimeout:I

    if-eqz v5, :cond_3

    .line 456
    sget v5, Lnet/sourceforge/jsocks/ProxyServer;->acceptTimeout:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v3

    long-to-int v6, v6

    sub-int v0, v5, v6

    .line 458
    .local v0, "newTimeout":I
    if-gtz v0, :cond_2

    new-instance v5, Ljava/io/InterruptedIOException;

    const-string v6, "In doAccept()"

    invoke-direct {v5, v6}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 460
    :cond_2
    iget-object v5, p0, Lnet/sourceforge/jsocks/ProxyServer;->ss:Ljava/net/ServerSocket;

    invoke-virtual {v5, v0}, Ljava/net/ServerSocket;->setSoTimeout(I)V

    .line 462
    .end local v0    # "newTimeout":I
    :cond_3
    invoke-virtual {v2}, Ljava/net/Socket;->close()V

    goto/16 :goto_0

    .line 482
    :cond_4
    new-instance v1, Lnet/sourceforge/jsocks/Socks4Message;

    const/16 v5, 0x5a

    invoke-virtual {v2}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v2}, Ljava/net/Socket;->getPort()I

    move-result v7

    invoke-direct {v1, v5, v6, v7}, Lnet/sourceforge/jsocks/Socks4Message;-><init>(ILjava/net/InetAddress;I)V

    .restart local v1    # "response":Lnet/sourceforge/jsocks/ProxyMessage;
    goto :goto_1
.end method

.method public static getProxy()Lnet/sourceforge/jsocks/Proxy;
    .locals 1

    .prologue
    .line 116
    sget-object v0, Lnet/sourceforge/jsocks/ProxyServer;->proxy:Lnet/sourceforge/jsocks/Proxy;

    return-object v0
.end method

.method private handleException(Ljava/io/IOException;)V
    .locals 3
    .param p1, "ioe"    # Ljava/io/IOException;

    .prologue
    .line 305
    iget-object v1, p0, Lnet/sourceforge/jsocks/ProxyServer;->msg:Lnet/sourceforge/jsocks/ProxyMessage;

    if-nez v1, :cond_1

    .line 327
    .end local p1    # "ioe":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-void

    .line 307
    .restart local p1    # "ioe":Ljava/io/IOException;
    :cond_1
    iget v1, p0, Lnet/sourceforge/jsocks/ProxyServer;->mode:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 309
    iget v1, p0, Lnet/sourceforge/jsocks/ProxyServer;->mode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 311
    const/4 v0, 0x1

    .line 313
    .local v0, "error_code":I
    instance-of v1, p1, Lnet/sourceforge/jsocks/SocksException;

    if-eqz v1, :cond_5

    .line 314
    check-cast p1, Lnet/sourceforge/jsocks/SocksException;

    .end local p1    # "ioe":Ljava/io/IOException;
    iget v0, p1, Lnet/sourceforge/jsocks/SocksException;->errCode:I

    .line 322
    :cond_2
    :goto_1
    const/16 v1, 0x8

    if-gt v0, v1, :cond_3

    if-gez v0, :cond_4

    .line 323
    :cond_3
    const/4 v0, 0x1

    .line 326
    :cond_4
    invoke-direct {p0, v0}, Lnet/sourceforge/jsocks/ProxyServer;->sendErrorMessage(I)V

    goto :goto_0

    .line 315
    .restart local p1    # "ioe":Ljava/io/IOException;
    :cond_5
    instance-of v1, p1, Ljava/net/NoRouteToHostException;

    if-eqz v1, :cond_6

    .line 316
    const/4 v0, 0x4

    goto :goto_1

    .line 317
    :cond_6
    instance-of v1, p1, Ljava/net/ConnectException;

    if-eqz v1, :cond_7

    .line 318
    const/4 v0, 0x5

    goto :goto_1

    .line 319
    :cond_7
    instance-of v1, p1, Ljava/io/InterruptedIOException;

    if-eqz v1, :cond_2

    .line 320
    const/4 v0, 0x6

    goto :goto_1
.end method

.method static final log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 550
    sget-object v0, Lnet/sourceforge/jsocks/ProxyServer;->log:Ljava/io/PrintStream;

    if-eqz v0, :cond_0

    .line 551
    sget-object v0, Lnet/sourceforge/jsocks/ProxyServer;->log:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 552
    sget-object v0, Lnet/sourceforge/jsocks/ProxyServer;->log:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    .line 554
    :cond_0
    return-void
.end method

.method static final log(Lnet/sourceforge/jsocks/ProxyMessage;)V
    .locals 3
    .param p0, "msg"    # Lnet/sourceforge/jsocks/ProxyMessage;

    .prologue
    .line 557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/sourceforge/jsocks/ProxyMessage;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tCommand: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/sourceforge/jsocks/ProxyMessage;->command:I

    invoke-static {v1}, Lnet/sourceforge/jsocks/ProxyServer;->command2String(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/sourceforge/jsocks/ProxyServer;->log(Ljava/lang/String;)V

    .line 559
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IP:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/sourceforge/jsocks/ProxyMessage;->ip:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tPort:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/sourceforge/jsocks/ProxyMessage;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/sourceforge/jsocks/ProxyMessage;->version:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\tUser:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/sourceforge/jsocks/ProxyMessage;->user:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/sourceforge/jsocks/ProxyServer;->log(Ljava/lang/String;)V

    .line 561
    return-void

    .line 559
    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method private onBind(Lnet/sourceforge/jsocks/ProxyMessage;)V
    .locals 11
    .param p1, "msg"    # Lnet/sourceforge/jsocks/ProxyMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 351
    const/4 v3, 0x0

    .line 353
    .local v3, "response":Lnet/sourceforge/jsocks/ProxyMessage;
    sget-object v4, Lnet/sourceforge/jsocks/ProxyServer;->proxy:Lnet/sourceforge/jsocks/Proxy;

    if-nez v4, :cond_2

    .line 354
    new-instance v4, Ljava/net/ServerSocket;

    invoke-direct {v4, v8}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v4, p0, Lnet/sourceforge/jsocks/ProxyServer;->ss:Ljava/net/ServerSocket;

    .line 358
    :goto_0
    iget-object v4, p0, Lnet/sourceforge/jsocks/ProxyServer;->ss:Ljava/net/ServerSocket;

    sget v5, Lnet/sourceforge/jsocks/ProxyServer;->acceptTimeout:I

    invoke-virtual {v4, v5}, Ljava/net/ServerSocket;->setSoTimeout(I)V

    .line 360
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Trying accept on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lnet/sourceforge/jsocks/ProxyServer;->ss:Ljava/net/ServerSocket;

    invoke-virtual {v5}, Ljava/net/ServerSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lnet/sourceforge/jsocks/ProxyServer;->ss:Ljava/net/ServerSocket;

    invoke-virtual {v5}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lnet/sourceforge/jsocks/ProxyServer;->log(Ljava/lang/String;)V

    .line 362
    iget v4, p1, Lnet/sourceforge/jsocks/ProxyMessage;->version:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_3

    .line 363
    new-instance v3, Lnet/sourceforge/jsocks/Socks5Message;

    .end local v3    # "response":Lnet/sourceforge/jsocks/ProxyMessage;
    iget-object v4, p0, Lnet/sourceforge/jsocks/ProxyServer;->ss:Ljava/net/ServerSocket;

    invoke-virtual {v4}, Ljava/net/ServerSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v4

    iget-object v5, p0, Lnet/sourceforge/jsocks/ProxyServer;->ss:Ljava/net/ServerSocket;

    invoke-virtual {v5}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v5

    invoke-direct {v3, v8, v4, v5}, Lnet/sourceforge/jsocks/Socks5Message;-><init>(ILjava/net/InetAddress;I)V

    .line 369
    .restart local v3    # "response":Lnet/sourceforge/jsocks/ProxyMessage;
    :goto_1
    iget-object v4, p0, Lnet/sourceforge/jsocks/ProxyServer;->out:Ljava/io/OutputStream;

    invoke-virtual {v3, v4}, Lnet/sourceforge/jsocks/ProxyMessage;->write(Ljava/io/OutputStream;)V

    .line 371
    iput v9, p0, Lnet/sourceforge/jsocks/ProxyServer;->mode:I

    .line 373
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    iput-object v4, p0, Lnet/sourceforge/jsocks/ProxyServer;->pipe_thread1:Ljava/lang/Thread;

    .line 374
    new-instance v4, Ljava/lang/Thread;

    invoke-direct {v4, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v4, p0, Lnet/sourceforge/jsocks/ProxyServer;->pipe_thread2:Ljava/lang/Thread;

    .line 375
    iget-object v4, p0, Lnet/sourceforge/jsocks/ProxyServer;->pipe_thread2:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 378
    iget-object v4, p0, Lnet/sourceforge/jsocks/ProxyServer;->sock:Ljava/net/Socket;

    invoke-virtual {v4, v8}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 379
    const/4 v0, 0x0

    .line 382
    .local v0, "eof":I
    :cond_0
    :try_start_0
    iget-object v4, p0, Lnet/sourceforge/jsocks/ProxyServer;->in:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_5

    .line 383
    iget v4, p0, Lnet/sourceforge/jsocks/ProxyServer;->mode:I

    if-eq v4, v9, :cond_0

    .line 384
    iget v4, p0, Lnet/sourceforge/jsocks/ProxyServer;->mode:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v4, v10, :cond_4

    .line 409
    :cond_1
    :goto_2
    return-void

    .line 356
    .end local v0    # "eof":I
    :cond_2
    new-instance v4, Lnet/sourceforge/jsocks/SocksServerSocket;

    sget-object v5, Lnet/sourceforge/jsocks/ProxyServer;->proxy:Lnet/sourceforge/jsocks/Proxy;

    iget-object v6, p1, Lnet/sourceforge/jsocks/ProxyMessage;->ip:Ljava/net/InetAddress;

    iget v7, p1, Lnet/sourceforge/jsocks/ProxyMessage;->port:I

    invoke-direct {v4, v5, v6, v7}, Lnet/sourceforge/jsocks/SocksServerSocket;-><init>(Lnet/sourceforge/jsocks/Proxy;Ljava/net/InetAddress;I)V

    iput-object v4, p0, Lnet/sourceforge/jsocks/ProxyServer;->ss:Ljava/net/ServerSocket;

    goto/16 :goto_0

    .line 366
    :cond_3
    new-instance v3, Lnet/sourceforge/jsocks/Socks4Message;

    .end local v3    # "response":Lnet/sourceforge/jsocks/ProxyMessage;
    const/16 v4, 0x5a

    iget-object v5, p0, Lnet/sourceforge/jsocks/ProxyServer;->ss:Ljava/net/ServerSocket;

    invoke-virtual {v5}, Ljava/net/ServerSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v5

    iget-object v6, p0, Lnet/sourceforge/jsocks/ProxyServer;->ss:Ljava/net/ServerSocket;

    invoke-virtual {v6}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v6

    invoke-direct {v3, v4, v5, v6}, Lnet/sourceforge/jsocks/Socks4Message;-><init>(ILjava/net/InetAddress;I)V

    .restart local v3    # "response":Lnet/sourceforge/jsocks/ProxyMessage;
    goto :goto_1

    .line 386
    .restart local v0    # "eof":I
    :cond_4
    :try_start_1
    iget-object v4, p0, Lnet/sourceforge/jsocks/ProxyServer;->remote_out:Ljava/io/OutputStream;

    invoke-virtual {v4, v0}, Ljava/io/OutputStream;->write(I)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 402
    :cond_5
    if-ltz v0, :cond_1

    .line 408
    iget-object v4, p0, Lnet/sourceforge/jsocks/ProxyServer;->in:Ljava/io/InputStream;

    iget-object v5, p0, Lnet/sourceforge/jsocks/ProxyServer;->remote_out:Ljava/io/OutputStream;

    invoke-direct {p0, v4, v5}, Lnet/sourceforge/jsocks/ProxyServer;->pipe(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    goto :goto_2

    .line 390
    :catch_0
    move-exception v4

    move-object v1, v4

    .local v1, "eofe":Ljava/io/EOFException;
    goto :goto_2

    .line 393
    .end local v1    # "eofe":Ljava/io/EOFException;
    :catch_1
    move-exception v4

    move-object v2, v4

    .line 396
    .local v2, "iioe":Ljava/io/InterruptedIOException;
    :try_start_2
    iget v4, p0, Lnet/sourceforge/jsocks/ProxyServer;->mode:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eq v4, v10, :cond_5

    goto :goto_2

    .line 398
    .end local v2    # "iioe":Ljava/io/InterruptedIOException;
    :catchall_0
    move-exception v4

    throw v4
.end method

.method private onConnect(Lnet/sourceforge/jsocks/ProxyMessage;)V
    .locals 5
    .param p1, "msg"    # Lnet/sourceforge/jsocks/ProxyMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 331
    const/4 v0, 0x0

    .line 333
    .local v0, "response":Lnet/sourceforge/jsocks/ProxyMessage;
    new-instance v1, Ljava/net/Socket;

    iget-object v2, p1, Lnet/sourceforge/jsocks/ProxyMessage;->ip:Ljava/net/InetAddress;

    iget v3, p1, Lnet/sourceforge/jsocks/ProxyMessage;->port:I

    invoke-direct {v1, v2, v3}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;I)V

    .line 335
    .local v1, "s":Ljava/net/Socket;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connected to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/net/Socket;->getPort()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/sourceforge/jsocks/ProxyServer;->log(Ljava/lang/String;)V

    .line 337
    instance-of v2, p1, Lnet/sourceforge/jsocks/Socks5Message;

    if-eqz v2, :cond_0

    .line 338
    new-instance v0, Lnet/sourceforge/jsocks/Socks5Message;

    .end local v0    # "response":Lnet/sourceforge/jsocks/ProxyMessage;
    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v1}, Ljava/net/Socket;->getLocalPort()I

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Lnet/sourceforge/jsocks/Socks5Message;-><init>(ILjava/net/InetAddress;I)V

    .line 346
    .restart local v0    # "response":Lnet/sourceforge/jsocks/ProxyMessage;
    :goto_0
    iget-object v2, p0, Lnet/sourceforge/jsocks/ProxyServer;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v2}, Lnet/sourceforge/jsocks/ProxyMessage;->write(Ljava/io/OutputStream;)V

    .line 347
    invoke-direct {p0, v1}, Lnet/sourceforge/jsocks/ProxyServer;->startPipe(Ljava/net/Socket;)V

    .line 348
    return-void

    .line 342
    :cond_0
    new-instance v0, Lnet/sourceforge/jsocks/Socks4Message;

    .end local v0    # "response":Lnet/sourceforge/jsocks/ProxyMessage;
    const/16 v2, 0x5a

    invoke-virtual {v1}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v1}, Ljava/net/Socket;->getLocalPort()I

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Lnet/sourceforge/jsocks/Socks4Message;-><init>(ILjava/net/InetAddress;I)V

    .restart local v0    # "response":Lnet/sourceforge/jsocks/ProxyMessage;
    goto :goto_0
.end method

.method private onUDP(Lnet/sourceforge/jsocks/ProxyMessage;)V
    .locals 8
    .param p1, "msg"    # Lnet/sourceforge/jsocks/ProxyMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 412
    iget-object v0, p1, Lnet/sourceforge/jsocks/ProxyMessage;->ip:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0.0.0.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lnet/sourceforge/jsocks/ProxyServer;->sock:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p1, Lnet/sourceforge/jsocks/ProxyMessage;->ip:Ljava/net/InetAddress;

    .line 414
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Creating UDP relay server for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lnet/sourceforge/jsocks/ProxyMessage;->ip:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lnet/sourceforge/jsocks/ProxyMessage;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/sourceforge/jsocks/ProxyServer;->log(Ljava/lang/String;)V

    .line 415
    new-instance v0, Lnet/sourceforge/jsocks/UDPRelayServer;

    iget-object v1, p1, Lnet/sourceforge/jsocks/ProxyMessage;->ip:Ljava/net/InetAddress;

    iget v2, p1, Lnet/sourceforge/jsocks/ProxyMessage;->port:I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    iget-object v4, p0, Lnet/sourceforge/jsocks/ProxyServer;->sock:Ljava/net/Socket;

    iget-object v5, p0, Lnet/sourceforge/jsocks/ProxyServer;->auth:Lnet/sourceforge/jsocks/server/ServerAuthenticator;

    invoke-direct/range {v0 .. v5}, Lnet/sourceforge/jsocks/UDPRelayServer;-><init>(Ljava/net/InetAddress;ILjava/lang/Thread;Ljava/net/Socket;Lnet/sourceforge/jsocks/server/ServerAuthenticator;)V

    iput-object v0, p0, Lnet/sourceforge/jsocks/ProxyServer;->relayServer:Lnet/sourceforge/jsocks/UDPRelayServer;

    .line 420
    new-instance v6, Lnet/sourceforge/jsocks/Socks5Message;

    iget-object v0, p0, Lnet/sourceforge/jsocks/ProxyServer;->relayServer:Lnet/sourceforge/jsocks/UDPRelayServer;

    iget-object v0, v0, Lnet/sourceforge/jsocks/UDPRelayServer;->relayIP:Ljava/net/InetAddress;

    iget-object v1, p0, Lnet/sourceforge/jsocks/ProxyServer;->relayServer:Lnet/sourceforge/jsocks/UDPRelayServer;

    iget v1, v1, Lnet/sourceforge/jsocks/UDPRelayServer;->relayPort:I

    invoke-direct {v6, v7, v0, v1}, Lnet/sourceforge/jsocks/Socks5Message;-><init>(ILjava/net/InetAddress;I)V

    .line 423
    .local v6, "response":Lnet/sourceforge/jsocks/ProxyMessage;
    iget-object v0, p0, Lnet/sourceforge/jsocks/ProxyServer;->out:Ljava/io/OutputStream;

    invoke-virtual {v6, v0}, Lnet/sourceforge/jsocks/ProxyMessage;->write(Ljava/io/OutputStream;)V

    .line 425
    iget-object v0, p0, Lnet/sourceforge/jsocks/ProxyServer;->relayServer:Lnet/sourceforge/jsocks/UDPRelayServer;

    invoke-virtual {v0}, Lnet/sourceforge/jsocks/UDPRelayServer;->start()V

    .line 428
    iget-object v0, p0, Lnet/sourceforge/jsocks/ProxyServer;->sock:Ljava/net/Socket;

    invoke-virtual {v0, v7}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 430
    :cond_1
    :try_start_0
    iget-object v0, p0, Lnet/sourceforge/jsocks/ProxyServer;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-gez v0, :cond_1

    .line 433
    :goto_0
    return-void

    .line 431
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private pipe(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 9
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 564
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lnet/sourceforge/jsocks/ProxyServer;->lastReadTime:J

    .line 565
    const/16 v5, 0x2000

    new-array v0, v5, [B

    .line 566
    .local v0, "buf":[B
    const/4 v2, 0x0

    .line 567
    .local v2, "len":I
    :goto_0
    if-ltz v2, :cond_1

    .line 569
    if-eqz v2, :cond_0

    .line 570
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p2, v0, v5, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 571
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 573
    :cond_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 574
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lnet/sourceforge/jsocks/ProxyServer;->lastReadTime:J
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 575
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 576
    .local v1, "iioe":Ljava/io/InterruptedIOException;
    sget v5, Lnet/sourceforge/jsocks/ProxyServer;->iddleTimeout:I

    if-nez v5, :cond_2

    .line 584
    .end local v1    # "iioe":Ljava/io/InterruptedIOException;
    :cond_1
    return-void

    .line 577
    .restart local v1    # "iioe":Ljava/io/InterruptedIOException;
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lnet/sourceforge/jsocks/ProxyServer;->lastReadTime:J

    sub-long v3, v5, v7

    .line 578
    .local v3, "timeSinceRead":J
    sget v5, Lnet/sourceforge/jsocks/ProxyServer;->iddleTimeout:I

    const/16 v6, 0x3e8

    sub-int/2addr v5, v6

    int-to-long v5, v5

    cmp-long v5, v3, v5

    if-gez v5, :cond_1

    .line 580
    const/4 v2, 0x0

    .line 582
    goto :goto_0
.end method

.method private sendErrorMessage(I)V
    .locals 2
    .param p1, "error_code"    # I

    .prologue
    .line 526
    iget-object v1, p0, Lnet/sourceforge/jsocks/ProxyServer;->msg:Lnet/sourceforge/jsocks/ProxyMessage;

    instance-of v1, v1, Lnet/sourceforge/jsocks/Socks4Message;

    if-eqz v1, :cond_0

    .line 527
    new-instance v0, Lnet/sourceforge/jsocks/Socks4Message;

    const/16 v1, 0x5b

    invoke-direct {v0, v1}, Lnet/sourceforge/jsocks/Socks4Message;-><init>(I)V

    .line 531
    .local v0, "err_msg":Lnet/sourceforge/jsocks/ProxyMessage;
    :goto_0
    :try_start_0
    iget-object v1, p0, Lnet/sourceforge/jsocks/ProxyServer;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Lnet/sourceforge/jsocks/ProxyMessage;->write(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 533
    :goto_1
    return-void

    .line 529
    .end local v0    # "err_msg":Lnet/sourceforge/jsocks/ProxyMessage;
    :cond_0
    new-instance v0, Lnet/sourceforge/jsocks/Socks5Message;

    invoke-direct {v0, p1}, Lnet/sourceforge/jsocks/Socks5Message;-><init>(I)V

    .restart local v0    # "err_msg":Lnet/sourceforge/jsocks/ProxyMessage;
    goto :goto_0

    .line 532
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public static setAcceptTimeout(I)V
    .locals 0
    .param p0, "timeout"    # I

    .prologue
    .line 135
    sput p0, Lnet/sourceforge/jsocks/ProxyServer;->acceptTimeout:I

    .line 136
    return-void
.end method

.method public static setDatagramSize(I)V
    .locals 0
    .param p0, "size"    # I

    .prologue
    .line 153
    invoke-static {p0}, Lnet/sourceforge/jsocks/UDPRelayServer;->setDatagramSize(I)V

    .line 154
    return-void
.end method

.method public static setIddleTimeout(I)V
    .locals 0
    .param p0, "timeout"    # I

    .prologue
    .line 126
    sput p0, Lnet/sourceforge/jsocks/ProxyServer;->iddleTimeout:I

    .line 127
    return-void
.end method

.method public static setLog(Ljava/io/OutputStream;)V
    .locals 2
    .param p0, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 87
    if-nez p0, :cond_0

    .line 88
    const/4 v0, 0x0

    sput-object v0, Lnet/sourceforge/jsocks/ProxyServer;->log:Ljava/io/PrintStream;

    .line 93
    :goto_0
    sget-object v0, Lnet/sourceforge/jsocks/ProxyServer;->log:Ljava/io/PrintStream;

    sput-object v0, Lnet/sourceforge/jsocks/UDPRelayServer;->log:Ljava/io/PrintStream;

    .line 94
    return-void

    .line 90
    :cond_0
    new-instance v0, Ljava/io/PrintStream;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;Z)V

    sput-object v0, Lnet/sourceforge/jsocks/ProxyServer;->log:Ljava/io/PrintStream;

    goto :goto_0
.end method

.method public static setProxy(Lnet/sourceforge/jsocks/Proxy;)V
    .locals 1
    .param p0, "p"    # Lnet/sourceforge/jsocks/Proxy;

    .prologue
    .line 107
    sput-object p0, Lnet/sourceforge/jsocks/ProxyServer;->proxy:Lnet/sourceforge/jsocks/Proxy;

    .line 108
    sget-object v0, Lnet/sourceforge/jsocks/ProxyServer;->proxy:Lnet/sourceforge/jsocks/Proxy;

    sput-object v0, Lnet/sourceforge/jsocks/UDPRelayServer;->proxy:Lnet/sourceforge/jsocks/Proxy;

    .line 109
    return-void
.end method

.method public static setUDPTimeout(I)V
    .locals 0
    .param p0, "timeout"    # I

    .prologue
    .line 144
    invoke-static {p0}, Lnet/sourceforge/jsocks/UDPRelayServer;->setTimeout(I)V

    .line 145
    return-void
.end method

.method private startPipe(Ljava/net/Socket;)V
    .locals 2
    .param p1, "s"    # Ljava/net/Socket;

    .prologue
    .line 511
    const/4 v0, 0x2

    iput v0, p0, Lnet/sourceforge/jsocks/ProxyServer;->mode:I

    .line 512
    iput-object p1, p0, Lnet/sourceforge/jsocks/ProxyServer;->remote_sock:Ljava/net/Socket;

    .line 514
    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lnet/sourceforge/jsocks/ProxyServer;->remote_in:Ljava/io/InputStream;

    .line 515
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lnet/sourceforge/jsocks/ProxyServer;->remote_out:Ljava/io/OutputStream;

    .line 516
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lnet/sourceforge/jsocks/ProxyServer;->pipe_thread1:Ljava/lang/Thread;

    .line 517
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lnet/sourceforge/jsocks/ProxyServer;->pipe_thread2:Ljava/lang/Thread;

    .line 518
    iget-object v0, p0, Lnet/sourceforge/jsocks/ProxyServer;->pipe_thread2:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 519
    iget-object v0, p0, Lnet/sourceforge/jsocks/ProxyServer;->in:Ljava/io/InputStream;

    iget-object v1, p0, Lnet/sourceforge/jsocks/ProxyServer;->remote_out:Ljava/io/OutputStream;

    invoke-direct {p0, v0, v1}, Lnet/sourceforge/jsocks/ProxyServer;->pipe(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 522
    :goto_0
    return-void

    .line 520
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private startSession()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 253
    iget-object v1, p0, Lnet/sourceforge/jsocks/ProxyServer;->sock:Ljava/net/Socket;

    sget v2, Lnet/sourceforge/jsocks/ProxyServer;->iddleTimeout:I

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 256
    :try_start_0
    iget-object v1, p0, Lnet/sourceforge/jsocks/ProxyServer;->auth:Lnet/sourceforge/jsocks/server/ServerAuthenticator;

    iget-object v2, p0, Lnet/sourceforge/jsocks/ProxyServer;->sock:Ljava/net/Socket;

    invoke-interface {v1, v2}, Lnet/sourceforge/jsocks/server/ServerAuthenticator;->startSession(Ljava/net/Socket;)Lnet/sourceforge/jsocks/server/ServerAuthenticator;

    move-result-object v1

    iput-object v1, p0, Lnet/sourceforge/jsocks/ProxyServer;->auth:Lnet/sourceforge/jsocks/server/ServerAuthenticator;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    iget-object v1, p0, Lnet/sourceforge/jsocks/ProxyServer;->auth:Lnet/sourceforge/jsocks/server/ServerAuthenticator;

    if-nez v1, :cond_0

    .line 264
    const-string v1, "Authentication failed"

    invoke-static {v1}, Lnet/sourceforge/jsocks/ProxyServer;->log(Ljava/lang/String;)V

    .line 273
    :goto_0
    return-void

    .line 257
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 258
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Auth throwed exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/sourceforge/jsocks/ProxyServer;->log(Ljava/lang/String;)V

    .line 259
    const/4 v1, 0x0

    iput-object v1, p0, Lnet/sourceforge/jsocks/ProxyServer;->auth:Lnet/sourceforge/jsocks/server/ServerAuthenticator;

    goto :goto_0

    .line 268
    .end local v0    # "ioe":Ljava/io/IOException;
    :cond_0
    iget-object v1, p0, Lnet/sourceforge/jsocks/ProxyServer;->auth:Lnet/sourceforge/jsocks/server/ServerAuthenticator;

    invoke-interface {v1}, Lnet/sourceforge/jsocks/server/ServerAuthenticator;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lnet/sourceforge/jsocks/ProxyServer;->in:Ljava/io/InputStream;

    .line 269
    iget-object v1, p0, Lnet/sourceforge/jsocks/ProxyServer;->auth:Lnet/sourceforge/jsocks/server/ServerAuthenticator;

    invoke-interface {v1}, Lnet/sourceforge/jsocks/server/ServerAuthenticator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iput-object v1, p0, Lnet/sourceforge/jsocks/ProxyServer;->out:Ljava/io/OutputStream;

    .line 271
    iget-object v1, p0, Lnet/sourceforge/jsocks/ProxyServer;->in:Ljava/io/InputStream;

    invoke-virtual {p0, v1}, Lnet/sourceforge/jsocks/ProxyServer;->readMsg(Ljava/io/InputStream;)Lnet/sourceforge/jsocks/ProxyMessage;

    move-result-object v1

    iput-object v1, p0, Lnet/sourceforge/jsocks/ProxyServer;->msg:Lnet/sourceforge/jsocks/ProxyMessage;

    .line 272
    iget-object v1, p0, Lnet/sourceforge/jsocks/ProxyServer;->msg:Lnet/sourceforge/jsocks/ProxyMessage;

    invoke-virtual {p0, v1}, Lnet/sourceforge/jsocks/ProxyServer;->handleRequest(Lnet/sourceforge/jsocks/ProxyMessage;)V

    goto :goto_0
.end method


# virtual methods
.method protected handleRequest(Lnet/sourceforge/jsocks/ProxyMessage;)V
    .locals 2
    .param p1, "msg"    # Lnet/sourceforge/jsocks/ProxyMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 277
    iget-object v0, p0, Lnet/sourceforge/jsocks/ProxyServer;->auth:Lnet/sourceforge/jsocks/server/ServerAuthenticator;

    invoke-interface {v0, p1}, Lnet/sourceforge/jsocks/server/ServerAuthenticator;->checkRequest(Lnet/sourceforge/jsocks/ProxyMessage;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lnet/sourceforge/jsocks/SocksException;

    invoke-direct {v0, v1}, Lnet/sourceforge/jsocks/SocksException;-><init>(I)V

    throw v0

    .line 280
    :cond_0
    iget-object v0, p1, Lnet/sourceforge/jsocks/ProxyMessage;->ip:Ljava/net/InetAddress;

    if-nez v0, :cond_1

    .line 281
    instance-of v0, p1, Lnet/sourceforge/jsocks/Socks5Message;

    if-eqz v0, :cond_2

    .line 282
    iget-object v0, p1, Lnet/sourceforge/jsocks/ProxyMessage;->host:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p1, Lnet/sourceforge/jsocks/ProxyMessage;->ip:Ljava/net/InetAddress;

    .line 286
    :cond_1
    invoke-static {p1}, Lnet/sourceforge/jsocks/ProxyServer;->log(Lnet/sourceforge/jsocks/ProxyMessage;)V

    .line 288
    iget v0, p1, Lnet/sourceforge/jsocks/ProxyMessage;->command:I

    packed-switch v0, :pswitch_data_0

    .line 299
    new-instance v0, Lnet/sourceforge/jsocks/SocksException;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lnet/sourceforge/jsocks/SocksException;-><init>(I)V

    throw v0

    .line 284
    :cond_2
    new-instance v0, Lnet/sourceforge/jsocks/SocksException;

    invoke-direct {v0, v1}, Lnet/sourceforge/jsocks/SocksException;-><init>(I)V

    throw v0

    .line 290
    :pswitch_0
    invoke-direct {p0, p1}, Lnet/sourceforge/jsocks/ProxyServer;->onConnect(Lnet/sourceforge/jsocks/ProxyMessage;)V

    .line 301
    :goto_0
    return-void

    .line 293
    :pswitch_1
    invoke-direct {p0, p1}, Lnet/sourceforge/jsocks/ProxyServer;->onBind(Lnet/sourceforge/jsocks/ProxyMessage;)V

    goto :goto_0

    .line 296
    :pswitch_2
    invoke-direct {p0, p1}, Lnet/sourceforge/jsocks/ProxyServer;->onUDP(Lnet/sourceforge/jsocks/ProxyMessage;)V

    goto :goto_0

    .line 288
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected readMsg(Ljava/io/InputStream;)Lnet/sourceforge/jsocks/ProxyMessage;
    .locals 6
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 489
    instance-of v4, p1, Ljava/io/PushbackInputStream;

    if-eqz v4, :cond_0

    .line 490
    move-object v0, p1

    check-cast v0, Ljava/io/PushbackInputStream;

    move-object v2, v0

    .line 494
    .local v2, "push_in":Ljava/io/PushbackInputStream;
    :goto_0
    invoke-virtual {v2}, Ljava/io/PushbackInputStream;->read()I

    move-result v3

    .line 495
    .local v3, "version":I
    invoke-virtual {v2, v3}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 500
    const/4 v4, 0x5

    if-ne v3, v4, :cond_1

    .line 501
    new-instance v1, Lnet/sourceforge/jsocks/Socks5Message;

    invoke-direct {v1, v2, v5}, Lnet/sourceforge/jsocks/Socks5Message;-><init>(Ljava/io/InputStream;Z)V

    .line 507
    .local v1, "msg":Lnet/sourceforge/jsocks/ProxyMessage;
    :goto_1
    return-object v1

    .line 492
    .end local v1    # "msg":Lnet/sourceforge/jsocks/ProxyMessage;
    .end local v2    # "push_in":Ljava/io/PushbackInputStream;
    .end local v3    # "version":I
    :cond_0
    new-instance v2, Ljava/io/PushbackInputStream;

    invoke-direct {v2, p1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;)V

    .restart local v2    # "push_in":Ljava/io/PushbackInputStream;
    goto :goto_0

    .line 502
    .restart local v3    # "version":I
    :cond_1
    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 503
    new-instance v1, Lnet/sourceforge/jsocks/Socks4Message;

    invoke-direct {v1, v2, v5}, Lnet/sourceforge/jsocks/Socks4Message;-><init>(Ljava/io/InputStream;Z)V

    .restart local v1    # "msg":Lnet/sourceforge/jsocks/ProxyMessage;
    goto :goto_1

    .line 505
    .end local v1    # "msg":Lnet/sourceforge/jsocks/ProxyMessage;
    :cond_2
    new-instance v4, Lnet/sourceforge/jsocks/SocksException;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lnet/sourceforge/jsocks/SocksException;-><init>(I)V

    throw v4
.end method

.method public run()V
    .locals 6

    .prologue
    const-string v5, "Support thread(remote->client) stopped"

    const-string v4, "Main thread(client->remote)stopped."

    const-string v3, "Accept thread(remote->client) stopped"

    .line 206
    iget v1, p0, Lnet/sourceforge/jsocks/ProxyServer;->mode:I

    packed-switch v1, :pswitch_data_0

    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected MODE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lnet/sourceforge/jsocks/ProxyServer;->mode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/sourceforge/jsocks/ProxyServer;->log(Ljava/lang/String;)V

    .line 248
    :goto_0
    :pswitch_0
    return-void

    .line 209
    :pswitch_1
    :try_start_0
    invoke-direct {p0}, Lnet/sourceforge/jsocks/ProxyServer;->startSession()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    invoke-direct {p0}, Lnet/sourceforge/jsocks/ProxyServer;->abort()V

    .line 215
    iget-object v1, p0, Lnet/sourceforge/jsocks/ProxyServer;->auth:Lnet/sourceforge/jsocks/server/ServerAuthenticator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/sourceforge/jsocks/ProxyServer;->auth:Lnet/sourceforge/jsocks/server/ServerAuthenticator;

    invoke-interface {v1}, Lnet/sourceforge/jsocks/server/ServerAuthenticator;->endSession()V

    .line 216
    :cond_0
    const-string v1, "Main thread(client->remote)stopped."

    :goto_1
    invoke-static {v4}, Lnet/sourceforge/jsocks/ProxyServer;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 210
    :catch_0
    move-exception v0

    .line 211
    .local v0, "ioe":Ljava/io/IOException;
    :try_start_1
    invoke-direct {p0, v0}, Lnet/sourceforge/jsocks/ProxyServer;->handleException(Ljava/io/IOException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 214
    invoke-direct {p0}, Lnet/sourceforge/jsocks/ProxyServer;->abort()V

    .line 215
    iget-object v1, p0, Lnet/sourceforge/jsocks/ProxyServer;->auth:Lnet/sourceforge/jsocks/server/ServerAuthenticator;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/sourceforge/jsocks/ProxyServer;->auth:Lnet/sourceforge/jsocks/server/ServerAuthenticator;

    invoke-interface {v1}, Lnet/sourceforge/jsocks/server/ServerAuthenticator;->endSession()V

    .line 216
    :cond_1
    const-string v1, "Main thread(client->remote)stopped."

    goto :goto_1

    .line 214
    .end local v0    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lnet/sourceforge/jsocks/ProxyServer;->abort()V

    .line 215
    iget-object v2, p0, Lnet/sourceforge/jsocks/ProxyServer;->auth:Lnet/sourceforge/jsocks/server/ServerAuthenticator;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lnet/sourceforge/jsocks/ProxyServer;->auth:Lnet/sourceforge/jsocks/server/ServerAuthenticator;

    invoke-interface {v2}, Lnet/sourceforge/jsocks/server/ServerAuthenticator;->endSession()V

    .line 216
    :cond_2
    const-string v2, "Main thread(client->remote)stopped."

    invoke-static {v4}, Lnet/sourceforge/jsocks/ProxyServer;->log(Ljava/lang/String;)V

    .line 214
    throw v1

    .line 221
    :pswitch_2
    :try_start_2
    invoke-direct {p0}, Lnet/sourceforge/jsocks/ProxyServer;->doAccept()V

    .line 222
    const/4 v1, 0x2

    iput v1, p0, Lnet/sourceforge/jsocks/ProxyServer;->mode:I

    .line 223
    iget-object v1, p0, Lnet/sourceforge/jsocks/ProxyServer;->pipe_thread1:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 225
    iget-object v1, p0, Lnet/sourceforge/jsocks/ProxyServer;->remote_in:Ljava/io/InputStream;

    iget-object v2, p0, Lnet/sourceforge/jsocks/ProxyServer;->out:Ljava/io/OutputStream;

    invoke-direct {p0, v1, v2}, Lnet/sourceforge/jsocks/ProxyServer;->pipe(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 230
    invoke-direct {p0}, Lnet/sourceforge/jsocks/ProxyServer;->abort()V

    .line 231
    const-string v1, "Accept thread(remote->client) stopped"

    :goto_2
    invoke-static {v3}, Lnet/sourceforge/jsocks/ProxyServer;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 226
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 228
    .restart local v0    # "ioe":Ljava/io/IOException;
    :try_start_3
    invoke-direct {p0, v0}, Lnet/sourceforge/jsocks/ProxyServer;->handleException(Ljava/io/IOException;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 230
    invoke-direct {p0}, Lnet/sourceforge/jsocks/ProxyServer;->abort()V

    .line 231
    const-string v1, "Accept thread(remote->client) stopped"

    goto :goto_2

    .line 230
    .end local v0    # "ioe":Ljava/io/IOException;
    :catchall_1
    move-exception v1

    invoke-direct {p0}, Lnet/sourceforge/jsocks/ProxyServer;->abort()V

    .line 231
    const-string v2, "Accept thread(remote->client) stopped"

    invoke-static {v3}, Lnet/sourceforge/jsocks/ProxyServer;->log(Ljava/lang/String;)V

    .line 230
    throw v1

    .line 236
    :pswitch_3
    :try_start_4
    iget-object v1, p0, Lnet/sourceforge/jsocks/ProxyServer;->remote_in:Ljava/io/InputStream;

    iget-object v2, p0, Lnet/sourceforge/jsocks/ProxyServer;->out:Ljava/io/OutputStream;

    invoke-direct {p0, v1, v2}, Lnet/sourceforge/jsocks/ProxyServer;->pipe(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 239
    invoke-direct {p0}, Lnet/sourceforge/jsocks/ProxyServer;->abort()V

    .line 240
    const-string v1, "Support thread(remote->client) stopped"

    :goto_3
    invoke-static {v5}, Lnet/sourceforge/jsocks/ProxyServer;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 239
    :catchall_2
    move-exception v1

    invoke-direct {p0}, Lnet/sourceforge/jsocks/ProxyServer;->abort()V

    .line 240
    const-string v2, "Support thread(remote->client) stopped"

    invoke-static {v5}, Lnet/sourceforge/jsocks/ProxyServer;->log(Ljava/lang/String;)V

    .line 239
    throw v1

    .line 237
    :catch_2
    move-exception v1

    .line 239
    invoke-direct {p0}, Lnet/sourceforge/jsocks/ProxyServer;->abort()V

    .line 240
    const-string v1, "Support thread(remote->client) stopped"

    goto :goto_3

    .line 206
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public start(I)V
    .locals 2
    .param p1, "port"    # I

    .prologue
    .line 162
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lnet/sourceforge/jsocks/ProxyServer;->start(IILjava/net/InetAddress;)V

    .line 163
    return-void
.end method

.method public start(IILjava/net/InetAddress;)V
    .locals 5
    .param p1, "port"    # I
    .param p2, "backlog"    # I
    .param p3, "localIP"    # Ljava/net/InetAddress;

    .prologue
    const-string v3, ":"

    .line 176
    :try_start_0
    new-instance v3, Ljava/net/ServerSocket;

    invoke-direct {v3, p1, p2, p3}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    iput-object v3, p0, Lnet/sourceforge/jsocks/ProxyServer;->ss:Ljava/net/ServerSocket;

    .line 177
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting SOCKS Proxy on:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lnet/sourceforge/jsocks/ProxyServer;->ss:Ljava/net/ServerSocket;

    invoke-virtual {v4}, Ljava/net/ServerSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lnet/sourceforge/jsocks/ProxyServer;->ss:Ljava/net/ServerSocket;

    invoke-virtual {v4}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnet/sourceforge/jsocks/ProxyServer;->log(Ljava/lang/String;)V

    .line 180
    :goto_0
    iget-object v3, p0, Lnet/sourceforge/jsocks/ProxyServer;->ss:Ljava/net/ServerSocket;

    invoke-virtual {v3}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v2

    .line 181
    .local v2, "s":Ljava/net/Socket;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Accepted from:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/net/Socket;->getPort()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnet/sourceforge/jsocks/ProxyServer;->log(Ljava/lang/String;)V

    .line 183
    new-instance v1, Lnet/sourceforge/jsocks/ProxyServer;

    iget-object v3, p0, Lnet/sourceforge/jsocks/ProxyServer;->auth:Lnet/sourceforge/jsocks/server/ServerAuthenticator;

    invoke-direct {v1, v3, v2}, Lnet/sourceforge/jsocks/ProxyServer;-><init>(Lnet/sourceforge/jsocks/server/ServerAuthenticator;Ljava/net/Socket;)V

    .line 184
    .local v1, "ps":Lnet/sourceforge/jsocks/ProxyServer;
    new-instance v3, Ljava/lang/Thread;

    invoke-direct {v3, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 186
    .end local v1    # "ps":Lnet/sourceforge/jsocks/ProxyServer;
    .end local v2    # "s":Ljava/net/Socket;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 187
    .local v0, "ioe":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 190
    return-void

    .line 188
    .end local v0    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    throw v3
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 198
    :try_start_0
    iget-object v0, p0, Lnet/sourceforge/jsocks/ProxyServer;->ss:Ljava/net/ServerSocket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/jsocks/ProxyServer;->ss:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 199
    :catch_0
    move-exception v0

    goto :goto_0
.end method
