.class public final Lcom/odinnet/servermonitor/ssh/channel/ChannelOutputStream;
.super Ljava/io/OutputStream;
.source "ChannelOutputStream.java"


# instance fields
.field c:Lcom/odinnet/servermonitor/ssh/channel/Channel;

.field isClosed:Z

.field private writeBuffer:[B


# direct methods
.method constructor <init>(Lcom/odinnet/servermonitor/ssh/channel/Channel;)V
    .locals 1
    .param p1, "c"    # Lcom/odinnet/servermonitor/ssh/channel/Channel;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelOutputStream;->isClosed:Z

    .line 22
    iput-object p1, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelOutputStream;->c:Lcom/odinnet/servermonitor/ssh/channel/Channel;

    .line 23
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelOutputStream;->writeBuffer:[B

    .line 24
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelOutputStream;->isClosed:Z

    if-nez v0, :cond_0

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelOutputStream;->isClosed:Z

    .line 38
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelOutputStream;->c:Lcom/odinnet/servermonitor/ssh/channel/Channel;

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->cm:Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;

    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelOutputStream;->c:Lcom/odinnet/servermonitor/ssh/channel/Channel;

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->sendEOF(Lcom/odinnet/servermonitor/ssh/channel/Channel;)V

    .line 40
    :cond_0
    return-void
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelOutputStream;->isClosed:Z

    if-eqz v0, :cond_0

    .line 45
    new-instance v0, Ljava/io/IOException;

    const-string v1, "This OutputStream is closed."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    return-void
.end method

.method public write(I)V
    .locals 3
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 28
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelOutputStream;->writeBuffer:[B

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    .line 30
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelOutputStream;->writeBuffer:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/odinnet/servermonitor/ssh/channel/ChannelOutputStream;->write([BII)V

    .line 31
    return-void
.end method

.method public write([B)V
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/odinnet/servermonitor/ssh/channel/ChannelOutputStream;->write([BII)V

    .line 70
    return-void
.end method

.method public write([BII)V
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelOutputStream;->isClosed:Z

    if-eqz v0, :cond_0

    .line 53
    new-instance v0, Ljava/io/IOException;

    const-string v1, "This OutputStream is closed."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_0
    if-nez p1, :cond_1

    .line 56
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 58
    :cond_1
    if-ltz p2, :cond_2

    if-ltz p3, :cond_2

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_2

    add-int v0, p2, p3

    if-ltz v0, :cond_2

    array-length v0, p1

    if-le p2, v0, :cond_3

    .line 59
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 61
    :cond_3
    if-nez p3, :cond_4

    .line 65
    :goto_0
    return-void

    .line 64
    :cond_4
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelOutputStream;->c:Lcom/odinnet/servermonitor/ssh/channel/Channel;

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/channel/Channel;->cm:Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;

    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/channel/ChannelOutputStream;->c:Lcom/odinnet/servermonitor/ssh/channel/Channel;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/odinnet/servermonitor/ssh/channel/ChannelManager;->sendData(Lcom/odinnet/servermonitor/ssh/channel/Channel;[BII)V

    goto :goto_0
.end method
