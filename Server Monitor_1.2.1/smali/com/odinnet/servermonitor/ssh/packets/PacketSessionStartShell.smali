.class public Lcom/odinnet/servermonitor/ssh/packets/PacketSessionStartShell;
.super Ljava/lang/Object;
.source "PacketSessionStartShell.java"


# instance fields
.field payload:[B

.field public recipientChannelID:I

.field public wantReply:Z


# direct methods
.method public constructor <init>(IZ)V
    .locals 0
    .param p1, "recipientChannelID"    # I
    .param p2, "wantReply"    # Z

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketSessionStartShell;->recipientChannelID:I

    .line 20
    iput-boolean p2, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketSessionStartShell;->wantReply:Z

    .line 21
    return-void
.end method


# virtual methods
.method public getPayload()[B
    .locals 2

    .prologue
    .line 25
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketSessionStartShell;->payload:[B

    if-nez v1, :cond_0

    .line 27
    new-instance v0, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;

    invoke-direct {v0}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;-><init>()V

    .line 28
    .local v0, "tw":Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;
    const/16 v1, 0x62

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeByte(I)V

    .line 29
    iget v1, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketSessionStartShell;->recipientChannelID:I

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeUINT32(I)V

    .line 30
    const-string v1, "shell"

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 31
    iget-boolean v1, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketSessionStartShell;->wantReply:Z

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeBoolean(Z)V

    .line 32
    invoke-virtual {v0}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->getBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketSessionStartShell;->payload:[B

    .line 34
    .end local v0    # "tw":Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;
    :cond_0
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketSessionStartShell;->payload:[B

    return-object v1
.end method
