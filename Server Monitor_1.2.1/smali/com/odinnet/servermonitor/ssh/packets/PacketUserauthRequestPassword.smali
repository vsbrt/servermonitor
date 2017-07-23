.class public Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthRequestPassword;
.super Ljava/lang/Object;
.source "PacketUserauthRequestPassword.java"


# instance fields
.field password:Ljava/lang/String;

.field payload:[B

.field serviceName:Ljava/lang/String;

.field userName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "user"    # Ljava/lang/String;
    .param p3, "pass"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthRequestPassword;->serviceName:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthRequestPassword;->userName:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthRequestPassword;->password:Ljava/lang/String;

    .line 24
    return-void
.end method

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
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-array v3, p3, [B

    iput-object v3, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthRequestPassword;->payload:[B

    .line 29
    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthRequestPassword;->payload:[B

    const/4 v4, 0x0

    invoke-static {p1, p2, v3, v4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 31
    new-instance v2, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;

    invoke-direct {v2, p1, p2, p3}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;-><init>([BII)V

    .line 33
    .local v2, "tr":Lcom/odinnet/servermonitor/ssh/packets/TypesReader;
    invoke-virtual {v2}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readByte()I

    move-result v1

    .line 35
    .local v1, "packet_type":I
    const/16 v3, 0x32

    if-eq v1, v3, :cond_0

    .line 36
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "This is not a SSH_MSG_USERAUTH_REQUEST! ("

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

    .line 38
    :cond_0
    invoke-virtual {v2}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthRequestPassword;->userName:Ljava/lang/String;

    .line 39
    invoke-virtual {v2}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthRequestPassword;->serviceName:Ljava/lang/String;

    .line 41
    invoke-virtual {v2}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "method":Ljava/lang/String;
    const-string v3, "password"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 44
    new-instance v3, Ljava/io/IOException;

    const-string v4, "This is not a SSH_MSG_USERAUTH_REQUEST with type password!"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 48
    :cond_1
    invoke-virtual {v2}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->remain()I

    move-result v3

    if-eqz v3, :cond_2

    .line 49
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Padding in SSH_MSG_USERAUTH_REQUEST packet!"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 50
    :cond_2
    return-void
.end method


# virtual methods
.method public getPayload()[B
    .locals 2

    .prologue
    .line 54
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthRequestPassword;->payload:[B

    if-nez v1, :cond_0

    .line 56
    new-instance v0, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;

    invoke-direct {v0}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;-><init>()V

    .line 57
    .local v0, "tw":Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;
    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeByte(I)V

    .line 58
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthRequestPassword;->userName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 59
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthRequestPassword;->serviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 60
    const-string v1, "password"

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 61
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeBoolean(Z)V

    .line 62
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthRequestPassword;->password:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v0}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->getBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthRequestPassword;->payload:[B

    .line 65
    .end local v0    # "tw":Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;
    :cond_0
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthRequestPassword;->payload:[B

    return-object v1
.end method
