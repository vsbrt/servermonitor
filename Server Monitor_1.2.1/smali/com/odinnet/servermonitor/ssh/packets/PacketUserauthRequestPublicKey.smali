.class public Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthRequestPublicKey;
.super Ljava/lang/Object;
.source "PacketUserauthRequestPublicKey.java"


# instance fields
.field password:Ljava/lang/String;

.field payload:[B

.field pk:[B

.field pkAlgoName:Ljava/lang/String;

.field serviceName:Ljava/lang/String;

.field sig:[B

.field userName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V
    .locals 0
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "user"    # Ljava/lang/String;
    .param p3, "pkAlgorithmName"    # Ljava/lang/String;
    .param p4, "pk"    # [B
    .param p5, "sig"    # [B

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthRequestPublicKey;->serviceName:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthRequestPublicKey;->userName:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthRequestPublicKey;->pkAlgoName:Ljava/lang/String;

    .line 28
    iput-object p4, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthRequestPublicKey;->pk:[B

    .line 29
    iput-object p5, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthRequestPublicKey;->sig:[B

    .line 30
    return-void
.end method

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
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-array v2, p3, [B

    iput-object v2, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthRequestPublicKey;->payload:[B

    .line 35
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthRequestPublicKey;->payload:[B

    const/4 v3, 0x0

    invoke-static {p1, p2, v2, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    new-instance v1, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;

    invoke-direct {v1, p1, p2, p3}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;-><init>([BII)V

    .line 39
    .local v1, "tr":Lcom/odinnet/servermonitor/ssh/packets/TypesReader;
    invoke-virtual {v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readByte()I

    move-result v0

    .line 41
    .local v0, "packet_type":I
    const/16 v2, 0x32

    if-eq v0, v2, :cond_0

    .line 42
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "This is not a SSH_MSG_USERAUTH_REQUEST! ("

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

    .line 45
    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Not implemented!"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public getPayload()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 50
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthRequestPublicKey;->payload:[B

    if-nez v1, :cond_0

    .line 52
    new-instance v0, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;

    invoke-direct {v0}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;-><init>()V

    .line 53
    .local v0, "tw":Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;
    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeByte(I)V

    .line 54
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthRequestPublicKey;->userName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 55
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthRequestPublicKey;->serviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 56
    const-string v1, "publickey"

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 57
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeBoolean(Z)V

    .line 58
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthRequestPublicKey;->pkAlgoName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 59
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthRequestPublicKey;->pk:[B

    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthRequestPublicKey;->pk:[B

    array-length v2, v2

    invoke-virtual {v0, v1, v3, v2}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeString([BII)V

    .line 60
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthRequestPublicKey;->sig:[B

    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthRequestPublicKey;->sig:[B

    array-length v2, v2

    invoke-virtual {v0, v1, v3, v2}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeString([BII)V

    .line 61
    invoke-virtual {v0}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->getBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthRequestPublicKey;->payload:[B

    .line 63
    .end local v0    # "tw":Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;
    :cond_0
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthRequestPublicKey;->payload:[B

    return-object v1
.end method
