.class public Lcom/odinnet/servermonitor/ssh/packets/PacketChannelAuthAgentReq;
.super Ljava/lang/Object;
.source "PacketChannelAuthAgentReq.java"


# instance fields
.field payload:[B

.field public recipientChannelID:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "recipientChannelID"    # I

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketChannelAuthAgentReq;->recipientChannelID:I

    .line 18
    return-void
.end method


# virtual methods
.method public getPayload()[B
    .locals 2

    .prologue
    .line 22
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketChannelAuthAgentReq;->payload:[B

    if-nez v1, :cond_0

    .line 24
    new-instance v0, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;

    invoke-direct {v0}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;-><init>()V

    .line 25
    .local v0, "tw":Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;
    const/16 v1, 0x62

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeByte(I)V

    .line 26
    iget v1, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketChannelAuthAgentReq;->recipientChannelID:I

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeUINT32(I)V

    .line 27
    const-string v1, "auth-agent-req@openssh.com"

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 28
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeBoolean(Z)V

    .line 29
    invoke-virtual {v0}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->getBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketChannelAuthAgentReq;->payload:[B

    .line 31
    .end local v0    # "tw":Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;
    :cond_0
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketChannelAuthAgentReq;->payload:[B

    return-object v1
.end method
