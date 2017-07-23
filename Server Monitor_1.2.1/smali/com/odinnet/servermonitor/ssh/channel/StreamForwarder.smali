.class public Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;
.super Ljava/lang/Thread;
.source "StreamForwarder.java"


# instance fields
.field buffer:[B

.field c:Lcom/odinnet/servermonitor/ssh/channel/Channel;

.field is:Ljava/io/InputStream;

.field mode:Ljava/lang/String;

.field os:Ljava/io/OutputStream;

.field s:Ljava/net/Socket;

.field sibling:Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;


# direct methods
.method constructor <init>(Lcom/odinnet/servermonitor/ssh/channel/Channel;Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;Ljava/net/Socket;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .param p1, "c"    # Lcom/odinnet/servermonitor/ssh/channel/Channel;
    .param p2, "sibling"    # Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;
    .param p3, "s"    # Ljava/net/Socket;
    .param p4, "is"    # Ljava/io/InputStream;
    .param p5, "os"    # Ljava/io/OutputStream;
    .param p6, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 22
    const/16 v0, 0x7530

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;->buffer:[B

    .line 31
    iput-object p4, p0, Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;->is:Ljava/io/InputStream;

    .line 32
    iput-object p5, p0, Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;->os:Ljava/io/OutputStream;

    .line 33
    iput-object p6, p0, Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;->mode:Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;->c:Lcom/odinnet/servermonitor/ssh/channel/Channel;

    .line 35
    iput-object p2, p0, Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;->sibling:Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;

    .line 36
    iput-object p3, p0, Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;->s:Ljava/net/Socket;

    .line 37
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const-string v2, "StreamForwarder ("

    const-string v2, ") is cleaning up the connection"

    .line 45
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;->is:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;->buffer:[B

    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 46
    .local v1, "len":I
    if-gtz v1, :cond_0

    .line 67
    :try_start_1
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;->os:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    .line 74
    :goto_1
    :try_start_2
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;->is:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    .line 80
    :goto_2
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;->sibling:Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;

    if-eqz v2, :cond_4

    .line 82
    :goto_3
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;->sibling:Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;

    invoke-virtual {v2}, Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 86
    :try_start_3
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;->sibling:Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;

    invoke-virtual {v2}, Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;->join()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 88
    :catch_0
    move-exception v2

    goto :goto_3

    .line 48
    :cond_0
    :try_start_4
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;->os:Ljava/io/OutputStream;

    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;->buffer:[B

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 49
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;->os:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 52
    .end local v1    # "len":I
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 56
    .local v0, "ignore":Ljava/io/IOException;
    :try_start_5
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;->c:Lcom/odinnet/servermonitor/ssh/channel/Channel;

    iget-object v2, v2, Lcom/odinnet/servermonitor/ssh/channel/Channel;->cm:Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;

    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;->c:Lcom/odinnet/servermonitor/ssh/channel/Channel;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Closed due to exception in StreamForwarder ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;->mode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->closeChannel(Lcom/odinnet/servermonitor/ssh/channel/Channel;Ljava/lang/String;Z)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_f
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 67
    :goto_4
    :try_start_6
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;->os:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_e

    .line 74
    :goto_5
    :try_start_7
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;->is:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_d

    .line 80
    :goto_6
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;->sibling:Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;

    if-eqz v2, :cond_4

    .line 82
    :goto_7
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;->sibling:Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;

    invoke-virtual {v2}, Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 86
    :try_start_8
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;->sibling:Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;

    invoke-virtual {v2}, Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;->join()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_7

    .line 88
    :catch_2
    move-exception v2

    goto :goto_7

    .line 95
    .end local v0    # "ignore":Ljava/io/IOException;
    :cond_1
    :try_start_9
    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;->c:Lcom/odinnet/servermonitor/ssh/channel/Channel;

    iget-object v3, v3, Lcom/odinnet/servermonitor/ssh/channel/Channel;->cm:Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;

    iget-object v4, p0, Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;->c:Lcom/odinnet/servermonitor/ssh/channel/Channel;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "StreamForwarder ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;->mode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") is cleaning up the connection"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->closeChannel(Lcom/odinnet/servermonitor/ssh/channel/Channel;Ljava/lang/String;Z)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9

    .line 103
    :goto_8
    :try_start_a
    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;->s:Ljava/net/Socket;

    if-eqz v3, :cond_2

    .line 104
    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;->s:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 65
    :cond_2
    :goto_9
    throw v2

    .line 95
    .restart local v0    # "ignore":Ljava/io/IOException;
    :cond_3
    :try_start_b
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;->c:Lcom/odinnet/servermonitor/ssh/channel/Channel;

    iget-object v2, v2, Lcom/odinnet/servermonitor/ssh/channel/Channel;->cm:Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;

    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;->c:Lcom/odinnet/servermonitor/ssh/channel/Channel;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "StreamForwarder ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;->mode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") is cleaning up the connection"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->closeChannel(Lcom/odinnet/servermonitor/ssh/channel/Channel;Ljava/lang/String;Z)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_c

    .line 103
    :goto_a
    :try_start_c
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;->s:Ljava/net/Socket;

    if-eqz v2, :cond_4

    .line 104
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;->s:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    .line 111
    .end local v0    # "ignore":Ljava/io/IOException;
    :cond_4
    :goto_b
    return-void

    .line 65
    :catchall_0
    move-exception v2

    .line 67
    :try_start_d
    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;->os:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_b

    .line 74
    :goto_c
    :try_start_e
    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;->is:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_a

    .line 80
    :goto_d
    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;->sibling:Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;

    if-eqz v3, :cond_2

    .line 82
    :goto_e
    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;->sibling:Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;

    invoke-virtual {v3}, Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 86
    :try_start_f
    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;->sibling:Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;

    invoke-virtual {v3}, Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;->join()V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_f} :catch_3

    goto :goto_e

    .line 88
    :catch_3
    move-exception v3

    goto :goto_e

    .line 95
    .restart local v1    # "len":I
    :cond_5
    :try_start_10
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;->c:Lcom/odinnet/servermonitor/ssh/channel/Channel;

    iget-object v2, v2, Lcom/odinnet/servermonitor/ssh/channel/Channel;->cm:Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;

    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;->c:Lcom/odinnet/servermonitor/ssh/channel/Channel;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "StreamForwarder ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;->mode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") is cleaning up the connection"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->closeChannel(Lcom/odinnet/servermonitor/ssh/channel/Channel;Ljava/lang/String;Z)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_5

    .line 103
    :goto_f
    :try_start_11
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;->s:Ljava/net/Socket;

    if-eqz v2, :cond_4

    .line 104
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/channel/StreamForwarder;->s:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_4

    goto :goto_b

    .line 106
    .end local v1    # "len":I
    :catch_4
    move-exception v2

    goto :goto_b

    .line 97
    .restart local v1    # "len":I
    :catch_5
    move-exception v2

    goto :goto_f

    .line 76
    :catch_6
    move-exception v2

    goto/16 :goto_2

    .line 69
    :catch_7
    move-exception v2

    goto/16 :goto_1

    .line 106
    .end local v1    # "len":I
    :catch_8
    move-exception v3

    goto/16 :goto_9

    .line 97
    :catch_9
    move-exception v3

    goto/16 :goto_8

    .line 76
    :catch_a
    move-exception v3

    goto :goto_d

    .line 69
    :catch_b
    move-exception v3

    goto :goto_c

    .line 97
    .restart local v0    # "ignore":Ljava/io/IOException;
    :catch_c
    move-exception v2

    goto :goto_a

    .line 76
    :catch_d
    move-exception v2

    goto/16 :goto_6

    .line 69
    :catch_e
    move-exception v2

    goto/16 :goto_5

    .line 59
    :catch_f
    move-exception v2

    goto/16 :goto_4
.end method
