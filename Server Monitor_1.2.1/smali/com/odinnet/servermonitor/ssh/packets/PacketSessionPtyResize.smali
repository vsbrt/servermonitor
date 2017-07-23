.class public Lcom/odinnet/servermonitor/ssh/packets/PacketSessionPtyResize;
.super Ljava/lang/Object;
.source "PacketSessionPtyResize.java"


# instance fields
.field public height:I

.field payload:[B

.field public pixelHeight:I

.field public pixelWidth:I

.field public recipientChannelID:I

.field public width:I


# direct methods
.method public constructor <init>(IIIII)V
    .locals 0
    .param p1, "recipientChannelID"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "pixelWidth"    # I
    .param p5, "pixelHeight"    # I

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketSessionPtyResize;->recipientChannelID:I

    .line 14
    iput p2, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketSessionPtyResize;->width:I

    .line 15
    iput p3, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketSessionPtyResize;->height:I

    .line 16
    iput p4, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketSessionPtyResize;->pixelWidth:I

    .line 17
    iput p5, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketSessionPtyResize;->pixelHeight:I

    .line 18
    return-void
.end method


# virtual methods
.method public getPayload()[B
    .locals 2

    .prologue
    .line 22
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketSessionPtyResize;->payload:[B

    if-nez v1, :cond_0

    .line 24
    new-instance v0, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;

    invoke-direct {v0}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;-><init>()V

    .line 25
    .local v0, "tw":Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;
    const/16 v1, 0x62

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeByte(I)V

    .line 26
    iget v1, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketSessionPtyResize;->recipientChannelID:I

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeUINT32(I)V

    .line 27
    const-string v1, "window-change"

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 28
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeBoolean(Z)V

    .line 29
    iget v1, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketSessionPtyResize;->width:I

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeUINT32(I)V

    .line 30
    iget v1, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketSessionPtyResize;->height:I

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeUINT32(I)V

    .line 31
    iget v1, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketSessionPtyResize;->pixelWidth:I

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeUINT32(I)V

    .line 32
    iget v1, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketSessionPtyResize;->pixelHeight:I

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeUINT32(I)V

    .line 34
    invoke-virtual {v0}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->getBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketSessionPtyResize;->payload:[B

    .line 36
    .end local v0    # "tw":Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;
    :cond_0
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketSessionPtyResize;->payload:[B

    return-object v1
.end method
