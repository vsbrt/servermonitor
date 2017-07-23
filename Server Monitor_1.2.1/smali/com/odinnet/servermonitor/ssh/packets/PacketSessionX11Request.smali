.class public Lcom/odinnet/servermonitor/ssh/packets/PacketSessionX11Request;
.super Ljava/lang/Object;
.source "PacketSessionX11Request.java"


# instance fields
.field payload:[B

.field public recipientChannelID:I

.field public singleConnection:Z

.field public wantReply:Z

.field x11AuthenticationCookie:Ljava/lang/String;

.field x11AuthenticationProtocol:Ljava/lang/String;

.field x11ScreenNumber:I


# direct methods
.method public constructor <init>(IZZLjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "recipientChannelID"    # I
    .param p2, "wantReply"    # Z
    .param p3, "singleConnection"    # Z
    .param p4, "x11AuthenticationProtocol"    # Ljava/lang/String;
    .param p5, "x11AuthenticationCookie"    # Ljava/lang/String;
    .param p6, "x11ScreenNumber"    # I

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketSessionX11Request;->recipientChannelID:I

    .line 26
    iput-boolean p2, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketSessionX11Request;->wantReply:Z

    .line 28
    iput-boolean p3, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketSessionX11Request;->singleConnection:Z

    .line 29
    iput-object p4, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketSessionX11Request;->x11AuthenticationProtocol:Ljava/lang/String;

    .line 30
    iput-object p5, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketSessionX11Request;->x11AuthenticationCookie:Ljava/lang/String;

    .line 31
    iput p6, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketSessionX11Request;->x11ScreenNumber:I

    .line 32
    return-void
.end method


# virtual methods
.method public getPayload()[B
    .locals 2

    .prologue
    .line 36
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketSessionX11Request;->payload:[B

    if-nez v1, :cond_0

    .line 38
    new-instance v0, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;

    invoke-direct {v0}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;-><init>()V

    .line 39
    .local v0, "tw":Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;
    const/16 v1, 0x62

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeByte(I)V

    .line 40
    iget v1, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketSessionX11Request;->recipientChannelID:I

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeUINT32(I)V

    .line 41
    const-string v1, "x11-req"

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 42
    iget-boolean v1, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketSessionX11Request;->wantReply:Z

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeBoolean(Z)V

    .line 44
    iget-boolean v1, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketSessionX11Request;->singleConnection:Z

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeBoolean(Z)V

    .line 45
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketSessionX11Request;->x11AuthenticationProtocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 46
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketSessionX11Request;->x11AuthenticationCookie:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 47
    iget v1, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketSessionX11Request;->x11ScreenNumber:I

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeUINT32(I)V

    .line 49
    invoke-virtual {v0}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->getBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketSessionX11Request;->payload:[B

    .line 51
    .end local v0    # "tw":Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;
    :cond_0
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketSessionX11Request;->payload:[B

    return-object v1
.end method
