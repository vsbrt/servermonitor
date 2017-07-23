.class public Lcom/odinnet/servermonitor/ssh/packets/PacketKexDhGexGroup;
.super Ljava/lang/Object;
.source "PacketKexDhGexGroup.java"


# instance fields
.field g:Ljava/math/BigInteger;

.field p:Ljava/math/BigInteger;

.field payload:[B


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
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-array v2, p3, [B

    iput-object v2, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketKexDhGexGroup;->payload:[B

    .line 23
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketKexDhGexGroup;->payload:[B

    const/4 v3, 0x0

    invoke-static {p1, p2, v2, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 25
    new-instance v1, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;

    invoke-direct {v1, p1, p2, p3}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;-><init>([BII)V

    .line 27
    .local v1, "tr":Lcom/odinnet/servermonitor/ssh/packets/TypesReader;
    invoke-virtual {v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readByte()I

    move-result v0

    .line 29
    .local v0, "packet_type":I
    const/16 v2, 0x1f

    if-eq v0, v2, :cond_0

    .line 30
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "This is not a SSH_MSG_KEX_DH_GEX_GROUP! ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 34
    :cond_0
    invoke-virtual {v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readMPINT()Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketKexDhGexGroup;->p:Ljava/math/BigInteger;

    .line 35
    invoke-virtual {v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readMPINT()Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketKexDhGexGroup;->g:Ljava/math/BigInteger;

    .line 37
    invoke-virtual {v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->remain()I

    move-result v2

    if-eqz v2, :cond_1

    .line 38
    new-instance v2, Ljava/io/IOException;

    const-string v3, "PADDING IN SSH_MSG_KEX_DH_GEX_GROUP!"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 39
    :cond_1
    return-void
.end method


# virtual methods
.method public getG()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketKexDhGexGroup;->g:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getP()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketKexDhGexGroup;->p:Ljava/math/BigInteger;

    return-object v0
.end method
