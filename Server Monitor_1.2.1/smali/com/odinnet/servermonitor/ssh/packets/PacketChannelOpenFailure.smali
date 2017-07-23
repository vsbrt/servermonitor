.class public Lcom/odinnet/servermonitor/ssh/packets/PacketChannelOpenFailure;
.super Ljava/lang/Object;
.source "PacketChannelOpenFailure.java"


# instance fields
.field public description:Ljava/lang/String;

.field public languageTag:Ljava/lang/String;

.field payload:[B

.field public reasonCode:I

.field public recipientChannelID:I


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "recipientChannelID"    # I
    .param p2, "reasonCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "languageTag"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketChannelOpenFailure;->recipientChannelID:I

    .line 24
    iput p2, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketChannelOpenFailure;->reasonCode:I

    .line 25
    iput-object p3, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketChannelOpenFailure;->description:Ljava/lang/String;

    .line 26
    iput-object p4, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketChannelOpenFailure;->languageTag:Ljava/lang/String;

    .line 27
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
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-array v2, p3, [B

    iput-object v2, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketChannelOpenFailure;->payload:[B

    .line 32
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketChannelOpenFailure;->payload:[B

    const/4 v3, 0x0

    invoke-static {p1, p2, v2, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    new-instance v1, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;

    invoke-direct {v1, p1, p2, p3}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;-><init>([BII)V

    .line 36
    .local v1, "tr":Lcom/odinnet/servermonitor/ssh/packets/TypesReader;
    invoke-virtual {v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readByte()I

    move-result v0

    .line 38
    .local v0, "packet_type":I
    const/16 v2, 0x5c

    if-eq v0, v2, :cond_0

    .line 39
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "This is not a SSH_MSG_CHANNEL_OPEN_FAILURE! ("

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

    .line 43
    :cond_0
    invoke-virtual {v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readUINT32()I

    move-result v2

    iput v2, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketChannelOpenFailure;->recipientChannelID:I

    .line 44
    invoke-virtual {v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readUINT32()I

    move-result v2

    iput v2, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketChannelOpenFailure;->reasonCode:I

    .line 45
    invoke-virtual {v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketChannelOpenFailure;->description:Ljava/lang/String;

    .line 46
    invoke-virtual {v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketChannelOpenFailure;->languageTag:Ljava/lang/String;

    .line 48
    invoke-virtual {v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->remain()I

    move-result v2

    if-eqz v2, :cond_1

    .line 49
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Padding in SSH_MSG_CHANNEL_OPEN_FAILURE packet!"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 50
    :cond_1
    return-void
.end method


# virtual methods
.method public getPayload()[B
    .locals 2

    .prologue
    .line 54
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketChannelOpenFailure;->payload:[B

    if-nez v1, :cond_0

    .line 56
    new-instance v0, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;

    invoke-direct {v0}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;-><init>()V

    .line 57
    .local v0, "tw":Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;
    const/16 v1, 0x5c

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeByte(I)V

    .line 58
    iget v1, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketChannelOpenFailure;->recipientChannelID:I

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeUINT32(I)V

    .line 59
    iget v1, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketChannelOpenFailure;->reasonCode:I

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeUINT32(I)V

    .line 60
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketChannelOpenFailure;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketChannelOpenFailure;->languageTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v0}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->getBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketChannelOpenFailure;->payload:[B

    .line 64
    .end local v0    # "tw":Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;
    :cond_0
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketChannelOpenFailure;->payload:[B

    return-object v1
.end method
