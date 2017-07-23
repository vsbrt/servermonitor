.class public Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthInfoRequest;
.super Ljava/lang/Object;
.source "PacketUserauthInfoRequest.java"


# instance fields
.field echo:[Z

.field instruction:Ljava/lang/String;

.field languageTag:Ljava/lang/String;

.field name:Ljava/lang/String;

.field numPrompts:I

.field payload:[B

.field prompt:[Ljava/lang/String;


# direct methods
.method public constructor <init>([BII)V
    .locals 6
    .param p1, "payload"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-array v3, p3, [B

    iput-object v3, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthInfoRequest;->payload:[B

    .line 27
    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthInfoRequest;->payload:[B

    const/4 v4, 0x0

    invoke-static {p1, p2, v3, v4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 29
    new-instance v2, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;

    invoke-direct {v2, p1, p2, p3}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;-><init>([BII)V

    .line 31
    .local v2, "tr":Lcom/odinnet/servermonitor/ssh/packets/TypesReader;
    invoke-virtual {v2}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readByte()I

    move-result v1

    .line 33
    .local v1, "packet_type":I
    const/16 v3, 0x3c

    if-eq v1, v3, :cond_0

    .line 34
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "This is not a SSH_MSG_USERAUTH_INFO_REQUEST! ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 36
    :cond_0
    invoke-virtual {v2}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthInfoRequest;->name:Ljava/lang/String;

    .line 37
    invoke-virtual {v2}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthInfoRequest;->instruction:Ljava/lang/String;

    .line 38
    invoke-virtual {v2}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthInfoRequest;->languageTag:Ljava/lang/String;

    .line 40
    invoke-virtual {v2}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readUINT32()I

    move-result v3

    iput v3, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthInfoRequest;->numPrompts:I

    .line 42
    iget v3, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthInfoRequest;->numPrompts:I

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthInfoRequest;->prompt:[Ljava/lang/String;

    .line 43
    iget v3, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthInfoRequest;->numPrompts:I

    new-array v3, v3, [Z

    iput-object v3, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthInfoRequest;->echo:[Z

    .line 45
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthInfoRequest;->numPrompts:I

    if-ge v0, v3, :cond_1

    .line 47
    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthInfoRequest;->prompt:[Ljava/lang/String;

    invoke-virtual {v2}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 48
    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthInfoRequest;->echo:[Z

    invoke-virtual {v2}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readBoolean()Z

    move-result v4

    aput-boolean v4, v3, v0

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    :cond_1
    invoke-virtual {v2}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->remain()I

    move-result v3

    if-eqz v3, :cond_2

    .line 52
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Padding in SSH_MSG_USERAUTH_INFO_REQUEST packet!"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 53
    :cond_2
    return-void
.end method


# virtual methods
.method public getEcho()[Z
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthInfoRequest;->echo:[Z

    return-object v0
.end method

.method public getInstruction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthInfoRequest;->instruction:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguageTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthInfoRequest;->languageTag:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthInfoRequest;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNumPrompts()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthInfoRequest;->numPrompts:I

    return v0
.end method

.method public getPrompt()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthInfoRequest;->prompt:[Ljava/lang/String;

    return-object v0
.end method
