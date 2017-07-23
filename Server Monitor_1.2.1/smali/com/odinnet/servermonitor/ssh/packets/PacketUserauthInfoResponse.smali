.class public Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthInfoResponse;
.super Ljava/lang/Object;
.source "PacketUserauthInfoResponse.java"


# instance fields
.field payload:[B

.field responses:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 0
    .param p1, "responses"    # [Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthInfoResponse;->responses:[Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public getPayload()[B
    .locals 3

    .prologue
    .line 23
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthInfoResponse;->payload:[B

    if-nez v2, :cond_1

    .line 25
    new-instance v1, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;

    invoke-direct {v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;-><init>()V

    .line 26
    .local v1, "tw":Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;
    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeByte(I)V

    .line 27
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthInfoResponse;->responses:[Ljava/lang/String;

    array-length v2, v2

    invoke-virtual {v1, v2}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeUINT32(I)V

    .line 28
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthInfoResponse;->responses:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 29
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthInfoResponse;->responses:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 28
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->getBytes()[B

    move-result-object v2

    iput-object v2, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthInfoResponse;->payload:[B

    .line 33
    .end local v0    # "i":I
    .end local v1    # "tw":Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;
    :cond_1
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/packets/PacketUserauthInfoResponse;->payload:[B

    return-object v2
.end method
