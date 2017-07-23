.class Lnet/sourceforge/jsocks/UDPRelayServer;
.super Ljava/lang/Object;
.source "UDPRelayServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static datagramSize:I

.field static iddleTimeout:I

.field static log:Ljava/io/PrintStream;

.field static proxy:Lnet/sourceforge/jsocks/Proxy;


# instance fields
.field auth:Lnet/sourceforge/jsocks/server/ServerAuthenticator;

.field client_sock:Ljava/net/DatagramSocket;

.field controlConnection:Ljava/net/Socket;

.field lastReadTime:J

.field master_thread:Ljava/lang/Thread;

.field pipe_thread1:Ljava/lang/Thread;

.field pipe_thread2:Ljava/lang/Thread;

.field relayIP:Ljava/net/InetAddress;

.field relayPort:I

.field remote_sock:Ljava/net/DatagramSocket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    sput-object v0, Lnet/sourceforge/jsocks/UDPRelayServer;->log:Ljava/io/PrintStream;

    .line 28
    sput-object v0, Lnet/sourceforge/jsocks/UDPRelayServer;->proxy:Lnet/sourceforge/jsocks/Proxy;

    .line 29
    const v0, 0xffff

    sput v0, Lnet/sourceforge/jsocks/UDPRelayServer;->datagramSize:I

    .line 30
    const v0, 0x2bf20

    sput v0, Lnet/sourceforge/jsocks/UDPRelayServer;->iddleTimeout:I

    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;ILjava/lang/Thread;Ljava/net/Socket;Lnet/sourceforge/jsocks/server/ServerAuthenticator;)V
    .locals 4
    .param p1, "clientIP"    # Ljava/net/InetAddress;
    .param p2, "clientPort"    # I
    .param p3, "master_thread"    # Ljava/lang/Thread;
    .param p4, "controlConnection"    # Ljava/net/Socket;
    .param p5, "auth"    # Lnet/sourceforge/jsocks/server/ServerAuthenticator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p3, p0, Lnet/sourceforge/jsocks/UDPRelayServer;->master_thread:Ljava/lang/Thread;

    .line 52
    iput-object p4, p0, Lnet/sourceforge/jsocks/UDPRelayServer;->controlConnection:Ljava/net/Socket;

    .line 53
    iput-object p5, p0, Lnet/sourceforge/jsocks/UDPRelayServer;->auth:Lnet/sourceforge/jsocks/server/ServerAuthenticator;

    .line 55
    new-instance v0, Lnet/sourceforge/jsocks/Socks5DatagramSocket;

    const/4 v1, 0x1

    invoke-interface {p5}, Lnet/sourceforge/jsocks/server/ServerAuthenticator;->getUdpEncapsulation()Lnet/sourceforge/jsocks/UDPEncapsulation;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1, p2}, Lnet/sourceforge/jsocks/Socks5DatagramSocket;-><init>(ZLnet/sourceforge/jsocks/UDPEncapsulation;Ljava/net/InetAddress;I)V

    iput-object v0, p0, Lnet/sourceforge/jsocks/UDPRelayServer;->client_sock:Ljava/net/DatagramSocket;

    .line 57
    iget-object v0, p0, Lnet/sourceforge/jsocks/UDPRelayServer;->client_sock:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->getLocalPort()I

    move-result v0

    iput v0, p0, Lnet/sourceforge/jsocks/UDPRelayServer;->relayPort:I

    .line 58
    iget-object v0, p0, Lnet/sourceforge/jsocks/UDPRelayServer;->client_sock:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lnet/sourceforge/jsocks/UDPRelayServer;->relayIP:Ljava/net/InetAddress;

    .line 60
    iget-object v0, p0, Lnet/sourceforge/jsocks/UDPRelayServer;->relayIP:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0.0.0.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lnet/sourceforge/jsocks/UDPRelayServer;->relayIP:Ljava/net/InetAddress;

    .line 63
    :cond_0
    sget-object v0, Lnet/sourceforge/jsocks/UDPRelayServer;->proxy:Lnet/sourceforge/jsocks/Proxy;

    if-nez v0, :cond_1

    .line 64
    new-instance v0, Ljava/net/DatagramSocket;

    invoke-direct {v0}, Ljava/net/DatagramSocket;-><init>()V

    iput-object v0, p0, Lnet/sourceforge/jsocks/UDPRelayServer;->remote_sock:Ljava/net/DatagramSocket;

    .line 67
    :goto_0
    return-void

    .line 66
    :cond_1
    new-instance v0, Lnet/sourceforge/jsocks/Socks5DatagramSocket;

    sget-object v1, Lnet/sourceforge/jsocks/UDPRelayServer;->proxy:Lnet/sourceforge/jsocks/Proxy;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lnet/sourceforge/jsocks/Socks5DatagramSocket;-><init>(Lnet/sourceforge/jsocks/Proxy;ILjava/net/InetAddress;)V

    iput-object v0, p0, Lnet/sourceforge/jsocks/UDPRelayServer;->remote_sock:Ljava/net/DatagramSocket;

    goto :goto_0
.end method

.method private declared-synchronized abort()V
    .locals 1

    .prologue
    .line 158
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/sourceforge/jsocks/UDPRelayServer;->pipe_thread1:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 174
    :goto_0
    monitor-exit p0

    return-void

    .line 160
    :cond_0
    :try_start_1
    const-string v0, "Aborting UDP Relay Server"

    invoke-static {v0}, Lnet/sourceforge/jsocks/UDPRelayServer;->log(Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lnet/sourceforge/jsocks/UDPRelayServer;->remote_sock:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 163
    iget-object v0, p0, Lnet/sourceforge/jsocks/UDPRelayServer;->client_sock:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 165
    iget-object v0, p0, Lnet/sourceforge/jsocks/UDPRelayServer;->controlConnection:Ljava/net/Socket;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 166
    :try_start_2
    iget-object v0, p0, Lnet/sourceforge/jsocks/UDPRelayServer;->controlConnection:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 168
    :cond_1
    :goto_1
    :try_start_3
    iget-object v0, p0, Lnet/sourceforge/jsocks/UDPRelayServer;->master_thread:Ljava/lang/Thread;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/sourceforge/jsocks/UDPRelayServer;->master_thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 170
    :cond_2
    iget-object v0, p0, Lnet/sourceforge/jsocks/UDPRelayServer;->pipe_thread1:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 171
    iget-object v0, p0, Lnet/sourceforge/jsocks/UDPRelayServer;->pipe_thread2:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sourceforge/jsocks/UDPRelayServer;->pipe_thread1:Ljava/lang/Thread;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 166
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 178
    sget-object v0, Lnet/sourceforge/jsocks/UDPRelayServer;->log:Ljava/io/PrintStream;

    if-eqz v0, :cond_0

    .line 179
    sget-object v0, Lnet/sourceforge/jsocks/UDPRelayServer;->log:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 180
    sget-object v0, Lnet/sourceforge/jsocks/UDPRelayServer;->log:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    .line 182
    :cond_0
    return-void
.end method

.method private pipe(Ljava/net/DatagramSocket;Ljava/net/DatagramSocket;Z)V
    .locals 10
    .param p1, "from"    # Ljava/net/DatagramSocket;
    .param p2, "to"    # Ljava/net/DatagramSocket;
    .param p3, "out"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 186
    sget v6, Lnet/sourceforge/jsocks/UDPRelayServer;->datagramSize:I

    new-array v0, v6, [B

    .line 187
    .local v0, "data":[B
    new-instance v1, Ljava/net/DatagramPacket;

    array-length v6, v0

    invoke-direct {v1, v0, v6}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 191
    .local v1, "dp":Ljava/net/DatagramPacket;
    :goto_0
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 192
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lnet/sourceforge/jsocks/UDPRelayServer;->lastReadTime:J

    .line 194
    iget-object v6, p0, Lnet/sourceforge/jsocks/UDPRelayServer;->auth:Lnet/sourceforge/jsocks/server/ServerAuthenticator;

    invoke-interface {v6, v1, p3}, Lnet/sourceforge/jsocks/server/ServerAuthenticator;->checkRequest(Ljava/net/DatagramPacket;Z)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 195
    invoke-virtual {p2, v1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 209
    :cond_0
    :goto_1
    array-length v6, v0

    invoke-virtual {v1, v6}, Ljava/net/DatagramPacket;->setLength(I)V

    goto :goto_0

    .line 197
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 198
    .local v5, "uhe":Ljava/net/UnknownHostException;
    const-string v6, "Dropping datagram for unknown host"

    invoke-static {v6}, Lnet/sourceforge/jsocks/UDPRelayServer;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 199
    .end local v5    # "uhe":Ljava/net/UnknownHostException;
    :catch_1
    move-exception v6

    move-object v2, v6

    .line 202
    .local v2, "iioe":Ljava/io/InterruptedIOException;
    sget v6, Lnet/sourceforge/jsocks/UDPRelayServer;->iddleTimeout:I

    if-nez v6, :cond_1

    .line 207
    :goto_2
    return-void

    .line 205
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lnet/sourceforge/jsocks/UDPRelayServer;->lastReadTime:J

    sub-long v3, v6, v8

    .line 206
    .local v3, "timeSinceRead":J
    sget v6, Lnet/sourceforge/jsocks/UDPRelayServer;->iddleTimeout:I

    const/16 v7, 0x64

    sub-int/2addr v6, v7

    int-to-long v6, v6

    cmp-long v6, v3, v6

    if-ltz v6, :cond_0

    goto :goto_2
.end method

.method public static setDatagramSize(I)V
    .locals 0
    .param p0, "size"    # I

    .prologue
    .line 91
    sput p0, Lnet/sourceforge/jsocks/UDPRelayServer;->datagramSize:I

    .line 92
    return-void
.end method

.method public static setTimeout(I)V
    .locals 0
    .param p0, "timeout"    # I

    .prologue
    .line 81
    sput p0, Lnet/sourceforge/jsocks/UDPRelayServer;->iddleTimeout:I

    .line 82
    return-void
.end method


# virtual methods
.method public getRelayIP()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lnet/sourceforge/jsocks/UDPRelayServer;->relayIP:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getRelayPort()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lnet/sourceforge/jsocks/UDPRelayServer;->relayPort:I

    return v0
.end method

.method public run()V
    .locals 5

    .prologue
    const-string v4, "UDP Pipe thread "

    const-string v3, " stopped."

    .line 143
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pipe1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lnet/sourceforge/jsocks/UDPRelayServer;->remote_sock:Ljava/net/DatagramSocket;

    iget-object v1, p0, Lnet/sourceforge/jsocks/UDPRelayServer;->client_sock:Ljava/net/DatagramSocket;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lnet/sourceforge/jsocks/UDPRelayServer;->pipe(Ljava/net/DatagramSocket;Ljava/net/DatagramSocket;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    :goto_0
    invoke-direct {p0}, Lnet/sourceforge/jsocks/UDPRelayServer;->abort()V

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UDP Pipe thread "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " stopped."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lnet/sourceforge/jsocks/UDPRelayServer;->log(Ljava/lang/String;)V

    .line 153
    return-void

    .line 146
    :cond_0
    :try_start_1
    iget-object v0, p0, Lnet/sourceforge/jsocks/UDPRelayServer;->client_sock:Ljava/net/DatagramSocket;

    iget-object v1, p0, Lnet/sourceforge/jsocks/UDPRelayServer;->remote_sock:Ljava/net/DatagramSocket;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lnet/sourceforge/jsocks/UDPRelayServer;->pipe(Ljava/net/DatagramSocket;Ljava/net/DatagramSocket;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 147
    :catch_0
    move-exception v0

    .line 149
    invoke-direct {p0}, Lnet/sourceforge/jsocks/UDPRelayServer;->abort()V

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UDP Pipe thread "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " stopped."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 149
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lnet/sourceforge/jsocks/UDPRelayServer;->abort()V

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UDP Pipe thread "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " stopped."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/sourceforge/jsocks/UDPRelayServer;->log(Ljava/lang/String;)V

    .line 149
    throw v0
.end method

.method public start()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v2, ":"

    .line 112
    iget-object v0, p0, Lnet/sourceforge/jsocks/UDPRelayServer;->remote_sock:Ljava/net/DatagramSocket;

    sget v1, Lnet/sourceforge/jsocks/UDPRelayServer;->iddleTimeout:I

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 113
    iget-object v0, p0, Lnet/sourceforge/jsocks/UDPRelayServer;->client_sock:Ljava/net/DatagramSocket;

    sget v1, Lnet/sourceforge/jsocks/UDPRelayServer;->iddleTimeout:I

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting UDP relay server on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/sourceforge/jsocks/UDPRelayServer;->relayIP:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/sourceforge/jsocks/UDPRelayServer;->relayPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/sourceforge/jsocks/UDPRelayServer;->log(Ljava/lang/String;)V

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Remote socket "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/sourceforge/jsocks/UDPRelayServer;->remote_sock:Ljava/net/DatagramSocket;

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/sourceforge/jsocks/UDPRelayServer;->remote_sock:Ljava/net/DatagramSocket;

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->getLocalPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/sourceforge/jsocks/UDPRelayServer;->log(Ljava/lang/String;)V

    .line 119
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "pipe1"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lnet/sourceforge/jsocks/UDPRelayServer;->pipe_thread1:Ljava/lang/Thread;

    .line 120
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "pipe2"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lnet/sourceforge/jsocks/UDPRelayServer;->pipe_thread2:Ljava/lang/Thread;

    .line 122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/sourceforge/jsocks/UDPRelayServer;->lastReadTime:J

    .line 124
    iget-object v0, p0, Lnet/sourceforge/jsocks/UDPRelayServer;->pipe_thread1:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 125
    iget-object v0, p0, Lnet/sourceforge/jsocks/UDPRelayServer;->pipe_thread2:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 126
    return-void
.end method

.method public declared-synchronized stop()V
    .locals 1

    .prologue
    .line 134
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lnet/sourceforge/jsocks/UDPRelayServer;->master_thread:Ljava/lang/Thread;

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sourceforge/jsocks/UDPRelayServer;->controlConnection:Ljava/net/Socket;

    .line 136
    invoke-direct {p0}, Lnet/sourceforge/jsocks/UDPRelayServer;->abort()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    monitor-exit p0

    return-void

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
