.class Lcom/odinnet/servermonitor/ssh/channel/DynamicAcceptThread$DynamicAcceptRunnable;
.super Ljava/lang/Object;
.source "DynamicAcceptThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/odinnet/servermonitor/ssh/channel/DynamicAcceptThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DynamicAcceptRunnable"
.end annotation


# static fields
.field private static final idleTimeout:I = 0x2bf20


# instance fields
.field private auth:Lnet/sourceforge/jsocks/server/ServerAuthenticator;

.field private in:Ljava/io/InputStream;

.field private msg:Lnet/sourceforge/jsocks/ProxyMessage;

.field private out:Ljava/io/OutputStream;

.field private sock:Ljava/net/Socket;

.field final synthetic this$0:Lcom/odinnet/servermonitor/ssh/channel/DynamicAcceptThread;


# direct methods
.method public constructor <init>(Lcom/odinnet/servermonitor/ssh/channel/DynamicAcceptThread;Lnet/sourceforge/jsocks/server/ServerAuthenticator;Ljava/net/Socket;)V
    .locals 1
    .param p2, "auth"    # Lnet/sourceforge/jsocks/server/ServerAuthenticator;
    .param p3, "sock"    # Ljava/net/Socket;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/odinnet/servermonitor/ssh/channel/DynamicAcceptThread$DynamicAcceptRunnable;->this$0:Lcom/odinnet/servermonitor/ssh/channel/DynamicAcceptThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p2, p0, Lcom/odinnet/servermonitor/ssh/channel/DynamicAcceptThread$DynamicAcceptRunnable;->auth:Lnet/sourceforge/jsocks/server/ServerAuthenticator;

    .line 61
    iput-object p3, p0, Lcom/odinnet/servermonitor/ssh/channel/DynamicAcceptThread$DynamicAcceptRunnable;->sock:Ljava/net/Socket;

    .line 63
    const-string v0, "DynamicAcceptRunnable"

    invoke-virtual {p1, v0}, Lcom/odinnet/servermonitor/ssh/channel/DynamicAcceptThread;->setName(Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method private handleRequest(Lnet/sourceforge/jsocks/ProxyMessage;)V
    .locals 2
    .param p1, "msg"    # Lnet/sourceforge/jsocks/ProxyMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/channel/DynamicAcceptThread$DynamicAcceptRunnable;->auth:Lnet/sourceforge/jsocks/server/ServerAuthenticator;

    invoke-interface {v0, p1}, Lnet/sourceforge/jsocks/server/ServerAuthenticator;->checkRequest(Lnet/sourceforge/jsocks/ProxyMessage;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Lnet/sourceforge/jsocks/SocksException;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lnet/sourceforge/jsocks/SocksException;-><init>(I)V

    throw v0

    .line 131
    :cond_0
    iget v0, p1, Lnet/sourceforge/jsocks/ProxyMessage;->command:I

    packed-switch v0, :pswitch_data_0

    .line 136
    new-instance v0, Lnet/sourceforge/jsocks/SocksException;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lnet/sourceforge/jsocks/SocksException;-><init>(I)V

    throw v0

    .line 133
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/odinnet/servermonitor/ssh/channel/DynamicAcceptThread$DynamicAcceptRunnable;->onConnect(Lnet/sourceforge/jsocks/ProxyMessage;)V

    .line 138
    return-void

    .line 131
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private onConnect(Lnet/sourceforge/jsocks/ProxyMessage;)V
    .locals 14
    .param p1, "msg"    # Lnet/sourceforge/jsocks/ProxyMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 165
    const/4 v13, 0x0

    .line 166
    .local v13, "response":Lnet/sourceforge/jsocks/ProxyMessage;
    const/4 v1, 0x0

    .line 167
    .local v1, "cn":Lcom/odinnet/servermonitor/ssh/channel/Channel;
    const/4 v12, 0x0

    .line 168
    .local v12, "r2l":Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;
    const/4 v11, 0x0

    .line 170
    .local v11, "l2r":Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;
    instance-of v3, p1, Lnet/sourceforge/jsocks/Socks5Message;

    if-eqz v3, :cond_1

    .line 171
    new-instance v13, Lnet/sourceforge/jsocks/Socks5Message;

    .end local v13    # "response":Lnet/sourceforge/jsocks/ProxyMessage;
    const/4 v3, 0x0

    const/4 v0, 0x0

    check-cast v0, Ljava/net/InetAddress;

    const/4 v4, 0x0

    invoke-direct {v13, v3, v0, v4}, Lnet/sourceforge/jsocks/Socks5Message;-><init>(ILjava/net/InetAddress;I)V

    .line 175
    .restart local v13    # "response":Lnet/sourceforge/jsocks/ProxyMessage;
    :goto_0
    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/channel/DynamicAcceptThread$DynamicAcceptRunnable;->out:Ljava/io/OutputStream;

    invoke-virtual {v13, v3}, Lnet/sourceforge/jsocks/ProxyMessage;->write(Ljava/io/OutputStream;)V

    .line 177
    iget-object v9, p1, Lnet/sourceforge/jsocks/ProxyMessage;->host:Ljava/lang/String;

    .line 178
    .local v9, "destHost":Ljava/lang/String;
    iget-object v3, p1, Lnet/sourceforge/jsocks/ProxyMessage;->ip:Ljava/net/InetAddress;

    if-eqz v3, :cond_0

    .line 179
    iget-object v3, p1, Lnet/sourceforge/jsocks/ProxyMessage;->ip:Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    .line 187
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/channel/DynamicAcceptThread$DynamicAcceptRunnable;->this$0:Lcom/odinnet/servermonitor/ssh/channel/DynamicAcceptThread;

    # getter for: Lcom/odinnet/servermonitor/ssh/channel/DynamicAcceptThread;->cm:Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;
    invoke-static {v3}, Lcom/odinnet/servermonitor/ssh/channel/DynamicAcceptThread;->access$000(Lcom/odinnet/servermonitor/ssh/channel/DynamicAcceptThread;)Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;

    move-result-object v3

    iget v4, p1, Lnet/sourceforge/jsocks/ProxyMessage;->port:I

    const-string v5, "127.0.0.1"

    const/4 v6, 0x0

    invoke-virtual {v3, v9, v4, v5, v6}, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->openDirectTCPIPChannel(Ljava/lang/String;ILjava/lang/String;I)Lcom/odinnet/servermonitor/ssh/channel/Channel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 205
    :try_start_1
    new-instance v0, Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, v1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->stdoutStream:Lcom/odinnet/servermonitor/ssh/channel/ChannelInputStream;

    iget-object v5, p0, Lcom/odinnet/servermonitor/ssh/channel/DynamicAcceptThread$DynamicAcceptRunnable;->out:Ljava/io/OutputStream;

    const-string v6, "RemoteToLocal"

    invoke-direct/range {v0 .. v6}, Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;-><init>(Lcom/odinnet/servermonitor/ssh/channel/Channel;Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;Ljava/net/Socket;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 206
    .end local v12    # "r2l":Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;
    .local v0, "r2l":Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;
    :try_start_2
    new-instance v2, Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;

    iget-object v5, p0, Lcom/odinnet/servermonitor/ssh/channel/DynamicAcceptThread$DynamicAcceptRunnable;->sock:Ljava/net/Socket;

    iget-object v6, p0, Lcom/odinnet/servermonitor/ssh/channel/DynamicAcceptThread$DynamicAcceptRunnable;->in:Ljava/io/InputStream;

    iget-object v7, v1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->stdinStream:Lcom/odinnet/servermonitor/ssh/channel/ChannelOutputStream;

    const-string v8, "LocalToRemote"

    move-object v3, v1

    move-object v4, v0

    invoke-direct/range {v2 .. v8}, Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;-><init>(Lcom/odinnet/servermonitor/ssh/channel/Channel;Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;Ljava/net/Socket;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 222
    .end local v11    # "l2r":Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;
    .local v2, "l2r":Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;->setDaemon(Z)V

    .line 223
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;->setDaemon(Z)V

    .line 224
    invoke-virtual {v0}, Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;->start()V

    .line 225
    invoke-virtual {v2}, Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;->start()V

    .line 226
    :goto_1
    return-void

    .line 173
    .end local v0    # "r2l":Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;
    .end local v2    # "l2r":Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;
    .end local v9    # "destHost":Ljava/lang/String;
    .restart local v11    # "l2r":Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;
    .restart local v12    # "r2l":Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;
    :cond_1
    new-instance v13, Lnet/sourceforge/jsocks/Socks4Message;

    .end local v13    # "response":Lnet/sourceforge/jsocks/ProxyMessage;
    const/16 v3, 0x5a

    const/4 v0, 0x0

    check-cast v0, Ljava/net/InetAddress;

    const/4 v4, 0x0

    invoke-direct {v13, v3, v0, v4}, Lnet/sourceforge/jsocks/Socks4Message;-><init>(ILjava/net/InetAddress;I)V

    .restart local v13    # "response":Lnet/sourceforge/jsocks/ProxyMessage;
    goto :goto_0

    .line 190
    .restart local v9    # "destHost":Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v10, v3

    .line 197
    .local v10, "e":Ljava/io/IOException;
    :try_start_3
    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/channel/DynamicAcceptThread$DynamicAcceptRunnable;->sock:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    :goto_2
    move-object v2, v11

    .end local v11    # "l2r":Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;
    .restart local v2    # "l2r":Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;
    move-object v0, v12

    .line 201
    .end local v12    # "r2l":Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;
    .restart local v0    # "r2l":Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;
    goto :goto_1

    .line 207
    .end local v0    # "r2l":Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;
    .end local v2    # "l2r":Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;
    .end local v10    # "e":Ljava/io/IOException;
    .restart local v11    # "l2r":Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;
    .restart local v12    # "r2l":Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;
    :catch_1
    move-exception v3

    move-object v10, v3

    move-object v0, v12

    .line 213
    .end local v12    # "r2l":Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;
    .restart local v0    # "r2l":Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;
    .restart local v10    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_4
    iget-object v3, v1, Lcom/odinnet/servermonitor/ssh/channel/Channel;->cm:Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Weird error during creation of StreamForwarder ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v3, v1, v4, v5}, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->closeChannel(Lcom/odinnet/servermonitor/ssh/channel/Channel;Ljava/lang/String;Z)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :goto_4
    move-object v2, v11

    .line 219
    .end local v11    # "l2r":Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;
    .restart local v2    # "l2r":Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;
    goto :goto_1

    .line 216
    .end local v2    # "l2r":Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;
    .restart local v11    # "l2r":Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;
    :catch_2
    move-exception v3

    goto :goto_4

    .line 207
    .end local v10    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v3

    move-object v10, v3

    goto :goto_3

    .line 198
    .end local v0    # "r2l":Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;
    .restart local v10    # "e":Ljava/io/IOException;
    .restart local v12    # "r2l":Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;
    :catch_4
    move-exception v3

    goto :goto_2
.end method

.method private readMsg(Ljava/io/InputStream;)Lnet/sourceforge/jsocks/ProxyMessage;
    .locals 6
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 95
    instance-of v4, p1, Ljava/io/PushbackInputStream;

    if-eqz v4, :cond_0

    .line 96
    move-object v0, p1

    check-cast v0, Ljava/io/PushbackInputStream;

    move-object v2, v0

    .line 100
    .local v2, "push_in":Ljava/io/PushbackInputStream;
    :goto_0
    invoke-virtual {v2}, Ljava/io/PushbackInputStream;->read()I

    move-result v3

    .line 101
    .local v3, "version":I
    invoke-virtual {v2, v3}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 105
    const/4 v4, 0x5

    if-ne v3, v4, :cond_1

    .line 106
    new-instance v1, Lnet/sourceforge/jsocks/Socks5Message;

    invoke-direct {v1, v2, v5}, Lnet/sourceforge/jsocks/Socks5Message;-><init>(Ljava/io/InputStream;Z)V

    .line 112
    .local v1, "msg":Lnet/sourceforge/jsocks/ProxyMessage;
    :goto_1
    return-object v1

    .line 98
    .end local v1    # "msg":Lnet/sourceforge/jsocks/ProxyMessage;
    .end local v2    # "push_in":Ljava/io/PushbackInputStream;
    .end local v3    # "version":I
    :cond_0
    new-instance v2, Ljava/io/PushbackInputStream;

    invoke-direct {v2, p1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;)V

    .restart local v2    # "push_in":Ljava/io/PushbackInputStream;
    goto :goto_0

    .line 107
    .restart local v3    # "version":I
    :cond_1
    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 108
    new-instance v1, Lnet/sourceforge/jsocks/Socks4Message;

    invoke-direct {v1, v2, v5}, Lnet/sourceforge/jsocks/Socks4Message;-><init>(Ljava/io/InputStream;Z)V

    .restart local v1    # "msg":Lnet/sourceforge/jsocks/ProxyMessage;
    goto :goto_1

    .line 110
    .end local v1    # "msg":Lnet/sourceforge/jsocks/ProxyMessage;
    :cond_2
    new-instance v4, Lnet/sourceforge/jsocks/SocksException;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lnet/sourceforge/jsocks/SocksException;-><init>(I)V

    throw v4
.end method

.method private sendErrorMessage(I)V
    .locals 2
    .param p1, "error_code"    # I

    .prologue
    .line 117
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/channel/DynamicAcceptThread$DynamicAcceptRunnable;->msg:Lnet/sourceforge/jsocks/ProxyMessage;

    instance-of v1, v1, Lnet/sourceforge/jsocks/Socks4Message;

    if-eqz v1, :cond_0

    .line 118
    new-instance v0, Lnet/sourceforge/jsocks/Socks4Message;

    const/16 v1, 0x5b

    invoke-direct {v0, v1}, Lnet/sourceforge/jsocks/Socks4Message;-><init>(I)V

    .line 122
    .local v0, "err_msg":Lnet/sourceforge/jsocks/ProxyMessage;
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/channel/DynamicAcceptThread$DynamicAcceptRunnable;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Lnet/sourceforge/jsocks/ProxyMessage;->write(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :goto_1
    return-void

    .line 120
    .end local v0    # "err_msg":Lnet/sourceforge/jsocks/ProxyMessage;
    :cond_0
    new-instance v0, Lnet/sourceforge/jsocks/Socks5Message;

    invoke-direct {v0, p1}, Lnet/sourceforge/jsocks/Socks5Message;-><init>(I)V

    .restart local v0    # "err_msg":Lnet/sourceforge/jsocks/ProxyMessage;
    goto :goto_0

    .line 123
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private startSession()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 141
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/channel/DynamicAcceptThread$DynamicAcceptRunnable;->sock:Ljava/net/Socket;

    const v2, 0x2bf20

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 144
    :try_start_0
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/channel/DynamicAcceptThread$DynamicAcceptRunnable;->auth:Lnet/sourceforge/jsocks/server/ServerAuthenticator;

    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/channel/DynamicAcceptThread$DynamicAcceptRunnable;->sock:Ljava/net/Socket;

    invoke-interface {v1, v2}, Lnet/sourceforge/jsocks/server/ServerAuthenticator;->startSession(Ljava/net/Socket;)Lnet/sourceforge/jsocks/server/ServerAuthenticator;

    move-result-object v1

    iput-object v1, p0, Lcom/odinnet/servermonitor/ssh/channel/DynamicAcceptThread$DynamicAcceptRunnable;->auth:Lnet/sourceforge/jsocks/server/ServerAuthenticator;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/channel/DynamicAcceptThread$DynamicAcceptRunnable;->auth:Lnet/sourceforge/jsocks/server/ServerAuthenticator;

    if-nez v1, :cond_0

    .line 153
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "SOCKS auth failed"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 162
    :goto_0
    return-void

    .line 145
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 146
    .local v0, "ioe":Ljava/io/IOException;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Could not start SOCKS session"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 148
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/odinnet/servermonitor/ssh/channel/DynamicAcceptThread$DynamicAcceptRunnable;->auth:Lnet/sourceforge/jsocks/server/ServerAuthenticator;

    goto :goto_0

    .line 157
    .end local v0    # "ioe":Ljava/io/IOException;
    :cond_0
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/channel/DynamicAcceptThread$DynamicAcceptRunnable;->auth:Lnet/sourceforge/jsocks/server/ServerAuthenticator;

    invoke-interface {v1}, Lnet/sourceforge/jsocks/server/ServerAuthenticator;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/odinnet/servermonitor/ssh/channel/DynamicAcceptThread$DynamicAcceptRunnable;->in:Ljava/io/InputStream;

    .line 158
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/channel/DynamicAcceptThread$DynamicAcceptRunnable;->auth:Lnet/sourceforge/jsocks/server/ServerAuthenticator;

    invoke-interface {v1}, Lnet/sourceforge/jsocks/server/ServerAuthenticator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/odinnet/servermonitor/ssh/channel/DynamicAcceptThread$DynamicAcceptRunnable;->out:Ljava/io/OutputStream;

    .line 160
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/channel/DynamicAcceptThread$DynamicAcceptRunnable;->in:Ljava/io/InputStream;

    invoke-direct {p0, v1}, Lcom/odinnet/servermonitor/ssh/channel/DynamicAcceptThread$DynamicAcceptRunnable;->readMsg(Ljava/io/InputStream;)Lnet/sourceforge/jsocks/ProxyMessage;

    move-result-object v1

    iput-object v1, p0, Lcom/odinnet/servermonitor/ssh/channel/DynamicAcceptThread$DynamicAcceptRunnable;->msg:Lnet/sourceforge/jsocks/ProxyMessage;

    .line 161
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/channel/DynamicAcceptThread$DynamicAcceptRunnable;->msg:Lnet/sourceforge/jsocks/ProxyMessage;

    invoke-direct {p0, v1}, Lcom/odinnet/servermonitor/ssh/channel/DynamicAcceptThread$DynamicAcceptRunnable;->handleRequest(Lnet/sourceforge/jsocks/ProxyMessage;)V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 68
    :try_start_0
    invoke-direct {p0}, Lcom/odinnet/servermonitor/ssh/channel/DynamicAcceptThread$DynamicAcceptRunnable;->startSession()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/channel/DynamicAcceptThread$DynamicAcceptRunnable;->auth:Lnet/sourceforge/jsocks/server/ServerAuthenticator;

    if-eqz v2, :cond_0

    .line 89
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/channel/DynamicAcceptThread$DynamicAcceptRunnable;->auth:Lnet/sourceforge/jsocks/server/ServerAuthenticator;

    invoke-interface {v2}, Lnet/sourceforge/jsocks/server/ServerAuthenticator;->endSession()V

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v1

    .line 70
    .local v1, "ioe":Ljava/io/IOException;
    const/4 v0, 0x1

    .line 72
    .local v0, "error_code":I
    :try_start_1
    instance-of v2, v1, Lnet/sourceforge/jsocks/SocksException;

    if-eqz v2, :cond_4

    .line 73
    check-cast v1, Lnet/sourceforge/jsocks/SocksException;

    .end local v1    # "ioe":Ljava/io/IOException;
    iget v0, v1, Lnet/sourceforge/jsocks/SocksException;->errCode:I

    .line 81
    :cond_1
    :goto_1
    const/16 v2, 0x8

    if-gt v0, v2, :cond_2

    if-gez v0, :cond_3

    .line 83
    :cond_2
    const/4 v0, 0x1

    .line 86
    :cond_3
    invoke-direct {p0, v0}, Lcom/odinnet/servermonitor/ssh/channel/DynamicAcceptThread$DynamicAcceptRunnable;->sendErrorMessage(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/channel/DynamicAcceptThread$DynamicAcceptRunnable;->auth:Lnet/sourceforge/jsocks/server/ServerAuthenticator;

    if-eqz v2, :cond_0

    .line 89
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/channel/DynamicAcceptThread$DynamicAcceptRunnable;->auth:Lnet/sourceforge/jsocks/server/ServerAuthenticator;

    invoke-interface {v2}, Lnet/sourceforge/jsocks/server/ServerAuthenticator;->endSession()V

    goto :goto_0

    .line 74
    .restart local v1    # "ioe":Ljava/io/IOException;
    :cond_4
    :try_start_2
    instance-of v2, v1, Ljava/net/NoRouteToHostException;

    if-eqz v2, :cond_5

    .line 75
    const/4 v0, 0x4

    goto :goto_1

    .line 76
    :cond_5
    instance-of v2, v1, Ljava/net/ConnectException;

    if-eqz v2, :cond_6

    .line 77
    const/4 v0, 0x5

    goto :goto_1

    .line 78
    :cond_6
    instance-of v2, v1, Ljava/io/InterruptedIOException;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_1

    .line 79
    const/4 v0, 0x6

    goto :goto_1

    .line 88
    .end local v0    # "error_code":I
    .end local v1    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/channel/DynamicAcceptThread$DynamicAcceptRunnable;->auth:Lnet/sourceforge/jsocks/server/ServerAuthenticator;

    if-eqz v3, :cond_7

    .line 89
    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/channel/DynamicAcceptThread$DynamicAcceptRunnable;->auth:Lnet/sourceforge/jsocks/server/ServerAuthenticator;

    invoke-interface {v3}, Lnet/sourceforge/jsocks/server/ServerAuthenticator;->endSession()V

    :cond_7
    throw v2
.end method
