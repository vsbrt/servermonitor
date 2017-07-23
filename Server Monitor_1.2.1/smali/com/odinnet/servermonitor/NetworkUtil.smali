.class public Lcom/odinnet/servermonitor/NetworkUtil;
.super Ljava/lang/Object;
.source "NetworkUtil.java"


# static fields
.field public static final RESP_AUTH_ERROR:I = 0x4

.field public static final RESP_CONNECTION_OK:I = 0x1

.field public static final RESP_GEN_NET_ERROR:I = 0x3

.field public static final RESP_UNKNOWN_HOST:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static connect(Ljava/lang/String;I)I
    .locals 5
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "port"    # I

    .prologue
    .line 54
    const/4 v3, 0x1

    .line 56
    .local v3, "status":I
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 57
    .local v1, "ip":Ljava/net/InetAddress;
    new-instance v2, Ljava/net/Socket;

    invoke-direct {v2, v1, p1}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;I)V

    .line 58
    .local v2, "socket":Ljava/net/Socket;
    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 65
    .end local v1    # "ip":Ljava/net/InetAddress;
    .end local v2    # "socket":Ljava/net/Socket;
    :goto_0
    return v3

    .line 59
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 60
    .local v0, "e":Ljava/net/UnknownHostException;
    const/4 v3, 0x2

    .line 63
    goto :goto_0

    .line 61
    .end local v0    # "e":Ljava/net/UnknownHostException;
    :catch_1
    move-exception v4

    move-object v0, v4

    .line 62
    .local v0, "e":Ljava/io/IOException;
    const/4 v3, 0x3

    goto :goto_0
.end method

.method public static isServerReachable(Ljava/lang/String;)Z
    .locals 12
    .param p0, "host"    # Ljava/lang/String;

    .prologue
    const/4 v11, -0x1

    .line 20
    const/4 v7, 0x0

    .line 22
    .local v7, "reachable":Z
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    .line 23
    .local v8, "runtime":Ljava/lang/Runtime;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ping -c 4 "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v6

    .line 25
    .local v6, "proc":Ljava/lang/Process;
    invoke-virtual {v6}, Ljava/lang/Process;->waitFor()I

    .line 27
    invoke-virtual {v6}, Ljava/lang/Process;->exitValue()I

    move-result v1

    .line 28
    .local v1, "exit":I
    if-nez v1, :cond_3

    .line 29
    invoke-virtual {v6}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 30
    .local v0, "b":I
    const-string v5, ""

    .line 31
    .local v5, "output":Ljava/lang/String;
    :goto_0
    if-eq v0, v11, :cond_0

    .line 32
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    int-to-char v10, v0

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 33
    invoke-virtual {v6}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_0

    .line 36
    :cond_0
    const-string v9, "\n"

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 37
    .local v4, "lines":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_1
    array-length v9, v4

    if-ge v2, v9, :cond_2

    .line 38
    aget-object v3, v4, v2

    .line 39
    .local v3, "line":Ljava/lang/String;
    const-string v9, "ttl="

    invoke-virtual {v3, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-eq v9, v11, :cond_1

    .line 40
    const/4 v7, 0x1

    .line 37
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 43
    .end local v3    # "line":Ljava/lang/String;
    :cond_2
    invoke-virtual {v6}, Ljava/lang/Process;->destroy()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .end local v0    # "b":I
    .end local v1    # "exit":I
    .end local v2    # "index":I
    .end local v4    # "lines":[Ljava/lang/String;
    .end local v5    # "output":Ljava/lang/String;
    .end local v6    # "proc":Ljava/lang/Process;
    .end local v8    # "runtime":Ljava/lang/Runtime;
    :goto_2
    return v7

    .line 45
    .restart local v1    # "exit":I
    .restart local v6    # "proc":Ljava/lang/Process;
    .restart local v8    # "runtime":Ljava/lang/Runtime;
    :cond_3
    const/4 v7, 0x0

    goto :goto_2

    .line 48
    .end local v1    # "exit":I
    .end local v6    # "proc":Ljava/lang/Process;
    .end local v8    # "runtime":Ljava/lang/Runtime;
    :catch_0
    move-exception v9

    goto :goto_2

    .line 47
    :catch_1
    move-exception v9

    goto :goto_2
.end method

.method public static sshConnect(Ljava/lang/String;Lcom/odinnet/servermonitor/data/ComponentConnection;)I
    .locals 9
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "conn"    # Lcom/odinnet/servermonitor/data/ComponentConnection;

    .prologue
    .line 69
    const/4 v5, 0x1

    .line 70
    .local v5, "status":I
    new-instance v0, Lcom/odinnet/servermonitor/ssh/Connection;

    invoke-virtual {p1}, Lcom/odinnet/servermonitor/data/ComponentConnection;->getSshPort()I

    move-result v6

    invoke-direct {v0, p0, v6}, Lcom/odinnet/servermonitor/ssh/Connection;-><init>(Ljava/lang/String;I)V

    .line 72
    .local v0, "con":Lcom/odinnet/servermonitor/ssh/Connection;
    :try_start_0
    invoke-virtual {v0}, Lcom/odinnet/servermonitor/ssh/Connection;->connect()Lcom/odinnet/servermonitor/ssh/ConnectionInfo;

    .line 74
    invoke-virtual {p1}, Lcom/odinnet/servermonitor/data/ComponentConnection;->getSshUsername()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/odinnet/servermonitor/data/ComponentConnection;->getSshPassword()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lcom/odinnet/servermonitor/ssh/Connection;->authenticateWithPassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 76
    .local v2, "isAuthenticated":Z
    if-nez v2, :cond_0

    .line 77
    const/4 v5, 0x4

    .line 95
    .end local v2    # "isAuthenticated":Z
    :goto_0
    return v5

    .line 79
    .restart local v2    # "isAuthenticated":Z
    :cond_0
    invoke-virtual {p1}, Lcom/odinnet/servermonitor/data/ComponentConnection;->getLocalPort()I

    move-result v6

    const-string v7, "localhost"

    invoke-virtual {p1}, Lcom/odinnet/servermonitor/data/ComponentConnection;->getRemotePort()I

    move-result v8

    invoke-virtual {v0, v6, v7, v8}, Lcom/odinnet/servermonitor/ssh/Connection;->createLocalPortForwarder(ILjava/lang/String;I)Lcom/odinnet/servermonitor/ssh/LocalPortForwarder;

    move-result-object v3

    .line 80
    .local v3, "lpw":Lcom/odinnet/servermonitor/ssh/LocalPortForwarder;
    new-instance v4, Ljava/net/Socket;

    const-string v6, ""

    invoke-virtual {p1}, Lcom/odinnet/servermonitor/data/ComponentConnection;->getLocalPort()I

    move-result v7

    invoke-direct {v4, v6, v7}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    .line 82
    .local v4, "socket":Ljava/net/Socket;
    invoke-virtual {v4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_1

    .line 83
    const/4 v5, 0x3

    .line 85
    :cond_1
    invoke-virtual {v4}, Ljava/net/Socket;->close()V

    .line 87
    invoke-virtual {v3}, Lcom/odinnet/servermonitor/ssh/LocalPortForwarder;->close()V

    .line 88
    invoke-virtual {v0}, Lcom/odinnet/servermonitor/ssh/Connection;->close()V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 90
    .end local v2    # "isAuthenticated":Z
    .end local v3    # "lpw":Lcom/odinnet/servermonitor/ssh/LocalPortForwarder;
    .end local v4    # "socket":Ljava/net/Socket;
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 91
    .local v1, "e":Ljava/net/UnknownHostException;
    const/4 v5, 0x2

    .line 94
    goto :goto_0

    .line 92
    .end local v1    # "e":Ljava/net/UnknownHostException;
    :catch_1
    move-exception v6

    move-object v1, v6

    .line 93
    .local v1, "e":Ljava/io/IOException;
    const/4 v5, 0x3

    goto :goto_0
.end method
