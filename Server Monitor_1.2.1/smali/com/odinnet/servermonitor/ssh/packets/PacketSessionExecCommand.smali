.class public Lcom/odinnet/servermonitor/ssh/packets/PacketSessionExecCommand;
.super Ljava/lang/Object;
.source "PacketSessionExecCommand.java"


# instance fields
.field public command:Ljava/lang/String;

.field payload:[B

.field public recipientChannelID:I

.field public wantReply:Z


# direct methods
.method public constructor <init>(IZLjava/lang/String;)V
    .locals 0
    .param p1, "recipientChannelID"    # I
    .param p2, "wantReply"    # Z
    .param p3, "command"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketSessionExecCommand;->recipientChannelID:I

    .line 21
    iput-boolean p2, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketSessionExecCommand;->wantReply:Z

    .line 22
    iput-object p3, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketSessionExecCommand;->command:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public getPayload()[B
    .locals 2

    .prologue
    .line 27
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketSessionExecCommand;->payload:[B

    if-nez v1, :cond_0

    .line 29
    new-instance v0, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;

    invoke-direct {v0}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;-><init>()V

    .line 30
    .local v0, "tw":Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;
    const/16 v1, 0x62

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeByte(I)V

    .line 31
    iget v1, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketSessionExecCommand;->recipientChannelID:I

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeUINT32(I)V

    .line 32
    const-string v1, "exec"

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 33
    iget-boolean v1, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketSessionExecCommand;->wantReply:Z

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeBoolean(Z)V

    .line 34
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketSessionExecCommand;->command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v0}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->getBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketSessionExecCommand;->payload:[B

    .line 37
    .end local v0    # "tw":Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;
    :cond_0
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketSessionExecCommand;->payload:[B

    return-object v1
.end method
