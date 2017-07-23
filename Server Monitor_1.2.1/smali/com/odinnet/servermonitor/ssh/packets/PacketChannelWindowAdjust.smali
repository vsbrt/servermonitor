.class public Lcom/odinnet/servermonitor/ssh/packets/PacketChannelWindowAdjust;
.super Ljava/lang/Object;
.source "PacketChannelWindowAdjust.java"


# instance fields
.field payload:[B

.field public recipientChannelID:I

.field public windowChange:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "recipientChannelID"    # I
    .param p2, "windowChange"    # I

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketChannelWindowAdjust;->recipientChannelID:I

    .line 21
    iput p2, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketChannelWindowAdjust;->windowChange:I

    .line 22
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
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-array v2, p3, [B

    iput-object v2, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketChannelWindowAdjust;->payload:[B

    .line 27
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketChannelWindowAdjust;->payload:[B

    const/4 v3, 0x0

    invoke-static {p1, p2, v2, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 29
    new-instance v1, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;

    invoke-direct {v1, p1, p2, p3}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;-><init>([BII)V

    .line 31
    .local v1, "tr":Lcom/odinnet/servermonitor/ssh/packets/TypesReader;
    invoke-virtual {v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readByte()I

    move-result v0

    .line 33
    .local v0, "packet_type":I
    const/16 v2, 0x5d

    if-eq v0, v2, :cond_0

    .line 34
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "This is not a SSH_MSG_CHANNEL_WINDOW_ADJUST! ("

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

    .line 38
    :cond_0
    invoke-virtual {v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readUINT32()I

    move-result v2

    iput v2, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketChannelWindowAdjust;->recipientChannelID:I

    .line 39
    invoke-virtual {v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readUINT32()I

    move-result v2

    iput v2, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketChannelWindowAdjust;->windowChange:I

    .line 41
    invoke-virtual {v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->remain()I

    move-result v2

    if-eqz v2, :cond_1

    .line 42
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Padding in SSH_MSG_CHANNEL_WINDOW_ADJUST packet!"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 43
    :cond_1
    return-void
.end method


# virtual methods
.method public getPayload()[B
    .locals 2

    .prologue
    .line 47
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketChannelWindowAdjust;->payload:[B

    if-nez v1, :cond_0

    .line 49
    new-instance v0, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;

    invoke-direct {v0}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;-><init>()V

    .line 50
    .local v0, "tw":Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeByte(I)V

    .line 51
    iget v1, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketChannelWindowAdjust;->recipientChannelID:I

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeUINT32(I)V

    .line 52
    iget v1, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketChannelWindowAdjust;->windowChange:I

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeUINT32(I)V

    .line 53
    invoke-virtual {v0}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->getBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketChannelWindowAdjust;->payload:[B

    .line 55
    .end local v0    # "tw":Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;
    :cond_0
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketChannelWindowAdjust;->payload:[B

    return-object v1
.end method
