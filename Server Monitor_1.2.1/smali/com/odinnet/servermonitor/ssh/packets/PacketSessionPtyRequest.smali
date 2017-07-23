.class public Lcom/odinnet/servermonitor/ssh/packets/PacketSessionPtyRequest;
.super Ljava/lang/Object;
.source "PacketSessionPtyRequest.java"


# instance fields
.field public character_height:I

.field public character_width:I

.field payload:[B

.field public pixel_height:I

.field public pixel_width:I

.field public recipientChannelID:I

.field public term:Ljava/lang/String;

.field public terminal_modes:[B

.field public wantReply:Z


# direct methods
.method public constructor <init>(IZLjava/lang/String;IIII[B)V
    .locals 0
    .param p1, "recipientChannelID"    # I
    .param p2, "wantReply"    # Z
    .param p3, "term"    # Ljava/lang/String;
    .param p4, "character_width"    # I
    .param p5, "character_height"    # I
    .param p6, "pixel_width"    # I
    .param p7, "pixel_height"    # I
    .param p8, "terminal_modes"    # [B

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketSessionPtyRequest;->recipientChannelID:I

    .line 28
    iput-boolean p2, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketSessionPtyRequest;->wantReply:Z

    .line 29
    iput-object p3, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketSessionPtyRequest;->term:Ljava/lang/String;

    .line 30
    iput p4, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketSessionPtyRequest;->character_width:I

    .line 31
    iput p5, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketSessionPtyRequest;->character_height:I

    .line 32
    iput p6, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketSessionPtyRequest;->pixel_width:I

    .line 33
    iput p7, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketSessionPtyRequest;->pixel_height:I

    .line 34
    iput-object p8, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketSessionPtyRequest;->terminal_modes:[B

    .line 35
    return-void
.end method


# virtual methods
.method public getPayload()[B
    .locals 4

    .prologue
    .line 39
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketSessionPtyRequest;->payload:[B

    if-nez v1, :cond_0

    .line 41
    new-instance v0, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;

    invoke-direct {v0}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;-><init>()V

    .line 42
    .local v0, "tw":Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;
    const/16 v1, 0x62

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeByte(I)V

    .line 43
    iget v1, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketSessionPtyRequest;->recipientChannelID:I

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeUINT32(I)V

    .line 44
    const-string v1, "pty-req"

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 45
    iget-boolean v1, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketSessionPtyRequest;->wantReply:Z

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeBoolean(Z)V

    .line 46
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketSessionPtyRequest;->term:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 47
    iget v1, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketSessionPtyRequest;->character_width:I

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeUINT32(I)V

    .line 48
    iget v1, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketSessionPtyRequest;->character_height:I

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeUINT32(I)V

    .line 49
    iget v1, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketSessionPtyRequest;->pixel_width:I

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeUINT32(I)V

    .line 50
    iget v1, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketSessionPtyRequest;->pixel_height:I

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeUINT32(I)V

    .line 51
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketSessionPtyRequest;->terminal_modes:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketSessionPtyRequest;->terminal_modes:[B

    array-length v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeString([BII)V

    .line 53
    invoke-virtual {v0}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->getBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketSessionPtyRequest;->payload:[B

    .line 55
    .end local v0    # "tw":Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;
    :cond_0
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketSessionPtyRequest;->payload:[B

    return-object v1
.end method
