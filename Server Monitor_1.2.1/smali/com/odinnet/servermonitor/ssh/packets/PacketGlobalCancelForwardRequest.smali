.class public Lcom/odinnet/servermonitor/ssh/packets/PacketGlobalCancelForwardRequest;
.super Ljava/lang/Object;
.source "PacketGlobalCancelForwardRequest.java"


# instance fields
.field public bindAddress:Ljava/lang/String;

.field public bindPort:I

.field payload:[B

.field public wantReply:Z


# direct methods
.method public constructor <init>(ZLjava/lang/String;I)V
    .locals 0
    .param p1, "wantReply"    # Z
    .param p2, "bindAddress"    # Ljava/lang/String;
    .param p3, "bindPort"    # I

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-boolean p1, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketGlobalCancelForwardRequest;->wantReply:Z

    .line 22
    iput-object p2, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketGlobalCancelForwardRequest;->bindAddress:Ljava/lang/String;

    .line 23
    iput p3, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketGlobalCancelForwardRequest;->bindPort:I

    .line 24
    return-void
.end method


# virtual methods
.method public getPayload()[B
    .locals 2

    .prologue
    .line 28
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketGlobalCancelForwardRequest;->payload:[B

    if-nez v1, :cond_0

    .line 30
    new-instance v0, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;

    invoke-direct {v0}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;-><init>()V

    .line 31
    .local v0, "tw":Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;
    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeByte(I)V

    .line 33
    const-string v1, "cancel-tcpip-forward"

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 34
    iget-boolean v1, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketGlobalCancelForwardRequest;->wantReply:Z

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeBoolean(Z)V

    .line 35
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketGlobalCancelForwardRequest;->bindAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 36
    iget v1, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketGlobalCancelForwardRequest;->bindPort:I

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeUINT32(I)V

    .line 38
    invoke-virtual {v0}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->getBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketGlobalCancelForwardRequest;->payload:[B

    .line 40
    .end local v0    # "tw":Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;
    :cond_0
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketGlobalCancelForwardRequest;->payload:[B

    return-object v1
.end method
