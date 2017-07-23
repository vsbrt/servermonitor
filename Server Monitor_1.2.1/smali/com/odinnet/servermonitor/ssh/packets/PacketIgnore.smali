.class public Lcom/odinnet/servermonitor/ssh/packets/PacketIgnore;
.super Ljava/lang/Object;
.source "PacketIgnore.java"


# instance fields
.field data:[B

.field payload:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 5
    .param p1, "payload"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-array v2, p3, [B

    iput-object v2, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketIgnore;->payload:[B

    .line 31
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketIgnore;->payload:[B

    const/4 v3, 0x0

    invoke-static {p1, p2, v2, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 33
    new-instance v1, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;

    invoke-direct {v1, p1, p2, p3}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;-><init>([BII)V

    .line 35
    .local v1, "tr":Lcom/odinnet/servermonitor/ssh/packets/TypesReader;
    invoke-virtual {v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readByte()I

    move-result v0

    .line 37
    .local v0, "packet_type":I
    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 38
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "This is not a SSH_MSG_IGNORE packet! ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 41
    :cond_0
    return-void
.end method


# virtual methods
.method public getPayload()[B
    .locals 4

    .prologue
    .line 45
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketIgnore;->payload:[B

    if-nez v1, :cond_0

    .line 47
    new-instance v0, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;

    invoke-direct {v0}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;-><init>()V

    .line 48
    .local v0, "tw":Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeByte(I)V

    .line 50
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketIgnore;->data:[B

    if-eqz v1, :cond_1

    .line 51
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketIgnore;->data:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketIgnore;->data:[B

    array-length v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeString([BII)V

    .line 55
    :goto_0
    invoke-virtual {v0}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->getBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketIgnore;->payload:[B

    .line 57
    .end local v0    # "tw":Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;
    :cond_0
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketIgnore;->payload:[B

    return-object v1

    .line 53
    .restart local v0    # "tw":Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;
    :cond_1
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setData([B)V
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 20
    iput-object p1, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketIgnore;->data:[B

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketIgnore;->payload:[B

    .line 22
    return-void
.end method
