.class public Lcom/odinnet/servermonitor/ssh/packets/PacketKexDhGexRequest;
.super Ljava/lang/Object;
.source "PacketKexDhGexRequest.java"


# instance fields
.field max:I

.field min:I

.field n:I

.field payload:[B


# direct methods
.method public constructor <init>(Lcom/odinnet/servermonitor/ssh/DHGexParameters;)V
    .locals 1
    .param p1, "para"    # Lcom/odinnet/servermonitor/ssh/DHGexParameters;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p1}, Lcom/odinnet/servermonitor/ssh/DHGexParameters;->getMin_group_len()I

    move-result v0

    iput v0, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketKexDhGexRequest;->min:I

    .line 22
    invoke-virtual {p1}, Lcom/odinnet/servermonitor/ssh/DHGexParameters;->getPref_group_len()I

    move-result v0

    iput v0, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketKexDhGexRequest;->n:I

    .line 23
    invoke-virtual {p1}, Lcom/odinnet/servermonitor/ssh/DHGexParameters;->getMax_group_len()I

    move-result v0

    iput v0, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketKexDhGexRequest;->max:I

    .line 24
    return-void
.end method


# virtual methods
.method public getPayload()[B
    .locals 2

    .prologue
    .line 28
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketKexDhGexRequest;->payload:[B

    if-nez v1, :cond_0

    .line 30
    new-instance v0, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;

    invoke-direct {v0}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;-><init>()V

    .line 31
    .local v0, "tw":Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;
    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeByte(I)V

    .line 32
    iget v1, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketKexDhGexRequest;->min:I

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeUINT32(I)V

    .line 33
    iget v1, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketKexDhGexRequest;->n:I

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeUINT32(I)V

    .line 34
    iget v1, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketKexDhGexRequest;->max:I

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeUINT32(I)V

    .line 35
    invoke-virtual {v0}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->getBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketKexDhGexRequest;->payload:[B

    .line 37
    .end local v0    # "tw":Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;
    :cond_0
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketKexDhGexRequest;->payload:[B

    return-object v1
.end method
