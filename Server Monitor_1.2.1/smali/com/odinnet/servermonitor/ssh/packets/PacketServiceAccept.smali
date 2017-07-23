.class public Lcom/odinnet/servermonitor/ssh/packets/PacketServiceAccept;
.super Ljava/lang/Object;
.source "PacketServiceAccept.java"


# instance fields
.field payload:[B

.field serviceName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "serviceName"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketServiceAccept;->serviceName:Ljava/lang/String;

    .line 21
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
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-array v2, p3, [B

    iput-object v2, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketServiceAccept;->payload:[B

    .line 26
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketServiceAccept;->payload:[B

    const/4 v3, 0x0

    invoke-static {p1, p2, v2, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 28
    new-instance v1, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;

    invoke-direct {v1, p1, p2, p3}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;-><init>([BII)V

    .line 30
    .local v1, "tr":Lcom/odinnet/servermonitor/ssh/packets/TypesReader;
    invoke-virtual {v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readByte()I

    move-result v0

    .line 32
    .local v0, "packet_type":I
    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    .line 33
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "This is not a SSH_MSG_SERVICE_ACCEPT! ("

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

    .line 37
    :cond_0
    invoke-virtual {v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->remain()I

    move-result v2

    if-lez v2, :cond_1

    .line 39
    invoke-virtual {v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketServiceAccept;->serviceName:Ljava/lang/String;

    .line 46
    :goto_0
    invoke-virtual {v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->remain()I

    move-result v2

    if-eqz v2, :cond_2

    .line 47
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Padding in SSH_MSG_SERVICE_ACCEPT packet!"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 43
    :cond_1
    const-string v2, ""

    iput-object v2, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketServiceAccept;->serviceName:Ljava/lang/String;

    goto :goto_0

    .line 48
    :cond_2
    return-void
.end method


# virtual methods
.method public getPayload()[B
    .locals 2

    .prologue
    .line 52
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketServiceAccept;->payload:[B

    if-nez v1, :cond_0

    .line 54
    new-instance v0, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;

    invoke-direct {v0}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;-><init>()V

    .line 55
    .local v0, "tw":Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeByte(I)V

    .line 56
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketServiceAccept;->serviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v0}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->getBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketServiceAccept;->payload:[B

    .line 59
    .end local v0    # "tw":Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;
    :cond_0
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketServiceAccept;->payload:[B

    return-object v1
.end method
