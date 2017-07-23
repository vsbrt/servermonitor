.class public Lcom/odinnet/servermonitor/ssh/packets/PacketKexDHReply;
.super Ljava/lang/Object;
.source "PacketKexDHReply.java"


# instance fields
.field f:Ljava/math/BigInteger;

.field hostKey:[B

.field payload:[B

.field signature:[B


# direct methods
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
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-array v2, p3, [B

    iput-object v2, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketKexDHReply;->payload:[B

    .line 24
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketKexDHReply;->payload:[B

    const/4 v3, 0x0

    invoke-static {p1, p2, v2, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26
    new-instance v1, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;

    invoke-direct {v1, p1, p2, p3}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;-><init>([BII)V

    .line 28
    .local v1, "tr":Lcom/odinnet/servermonitor/ssh/packets/TypesReader;
    invoke-virtual {v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readByte()I

    move-result v0

    .line 30
    .local v0, "packet_type":I
    const/16 v2, 0x1f

    if-eq v0, v2, :cond_0

    .line 31
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "This is not a SSH_MSG_KEXDH_REPLY! ("

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

    .line 34
    :cond_0
    invoke-virtual {v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readByteString()[B

    move-result-object v2

    iput-object v2, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketKexDHReply;->hostKey:[B

    .line 35
    invoke-virtual {v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readMPINT()Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketKexDHReply;->f:Ljava/math/BigInteger;

    .line 36
    invoke-virtual {v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readByteString()[B

    move-result-object v2

    iput-object v2, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketKexDHReply;->signature:[B

    .line 38
    invoke-virtual {v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->remain()I

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/io/IOException;

    const-string v3, "PADDING IN SSH_MSG_KEXDH_REPLY!"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 39
    :cond_1
    return-void
.end method


# virtual methods
.method public getF()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketKexDHReply;->f:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getHostKey()[B
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketKexDHReply;->hostKey:[B

    return-object v0
.end method

.method public getSignature()[B
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketKexDHReply;->signature:[B

    return-object v0
.end method
