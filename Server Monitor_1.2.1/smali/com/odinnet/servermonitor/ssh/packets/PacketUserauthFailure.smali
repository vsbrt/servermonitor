.class public Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthFailure;
.super Ljava/lang/Object;
.source "PacketUserauthFailure.java"


# instance fields
.field authThatCanContinue:[Ljava/lang/String;

.field partialSuccess:Z

.field payload:[B


# direct methods
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
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-array v2, p3, [B

    iput-object v2, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthFailure;->payload:[B

    .line 28
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthFailure;->payload:[B

    const/4 v3, 0x0

    invoke-static {p1, p2, v2, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30
    new-instance v1, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;

    invoke-direct {v1, p1, p2, p3}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;-><init>([BII)V

    .line 32
    .local v1, "tr":Lcom/odinnet/servermonitor/ssh/packets/TypesReader;
    invoke-virtual {v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readByte()I

    move-result v0

    .line 34
    .local v0, "packet_type":I
    const/16 v2, 0x33

    if-eq v0, v2, :cond_0

    .line 35
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "This is not a SSH_MSG_USERAUTH_FAILURE! ("

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
    invoke-virtual {v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readNameList()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthFailure;->authThatCanContinue:[Ljava/lang/String;

    .line 38
    invoke-virtual {v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthFailure;->partialSuccess:Z

    .line 40
    invoke-virtual {v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->remain()I

    move-result v2

    if-eqz v2, :cond_1

    .line 41
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Padding in SSH_MSG_USERAUTH_FAILURE packet!"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 42
    :cond_1
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Z)V
    .locals 0
    .param p1, "authThatCanContinue"    # [Ljava/lang/String;
    .param p2, "partialSuccess"    # Z

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthFailure;->authThatCanContinue:[Ljava/lang/String;

    .line 22
    iput-boolean p2, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthFailure;->partialSuccess:Z

    .line 23
    return-void
.end method


# virtual methods
.method public getAuthThatCanContinue()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthFailure;->authThatCanContinue:[Ljava/lang/String;

    return-object v0
.end method

.method public isPartialSuccess()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthFailure;->partialSuccess:Z

    return v0
.end method
