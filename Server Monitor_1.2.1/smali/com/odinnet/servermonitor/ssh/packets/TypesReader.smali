.class public Lcom/odinnet/servermonitor/ssh/packets/TypesReader;
.super Ljava/lang/Object;
.source "TypesReader.java"


# instance fields
.field arr:[B

.field max:I

.field pos:I


# direct methods
.method public constructor <init>([B)V
    .locals 1
    .param p1, "arr"    # [B

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput v0, p0, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->pos:I

    .line 20
    iput v0, p0, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->max:I

    .line 24
    iput-object p1, p0, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->arr:[B

    .line 25
    iput v0, p0, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->pos:I

    .line 26
    array-length v0, p1

    iput v0, p0, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->max:I

    .line 27
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 2
    .param p1, "arr"    # [B
    .param p2, "off"    # I

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput v0, p0, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->pos:I

    .line 20
    iput v0, p0, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->max:I

    .line 31
    iput-object p1, p0, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->arr:[B

    .line 32
    iput p2, p0, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->pos:I

    .line 33
    array-length v0, p1

    iput v0, p0, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->max:I

    .line 35
    iget v0, p0, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->pos:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->pos:I

    array-length v1, p1

    if-le v0, v1, :cond_1

    .line 36
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal offset."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_1
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 2
    .param p1, "arr"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput v0, p0, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->pos:I

    .line 20
    iput v0, p0, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->max:I

    .line 41
    iput-object p1, p0, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->arr:[B

    .line 42
    iput p2, p0, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->pos:I

    .line 43
    add-int v0, p2, p3

    iput v0, p0, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->max:I

    .line 45
    iget v0, p0, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->pos:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->pos:I

    array-length v1, p1

    if-le v0, v1, :cond_1

    .line 46
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal offset."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_1
    iget v0, p0, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->max:I

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->max:I

    array-length v1, p1

    if-le v0, v1, :cond_3

    .line 49
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal length."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_3
    return-void
.end method


# virtual methods
.method public readBoolean()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    iget v0, p0, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->pos:I

    iget v1, p0, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->max:I

    if-lt v0, v1, :cond_0

    .line 85
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Packet too short."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->arr:[B

    iget v1, p0, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->pos:I

    aget-byte v0, v0, v1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readByte()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    iget v0, p0, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->pos:I

    iget v1, p0, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->max:I

    if-lt v0, v1, :cond_0

    .line 55
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Packet too short."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->arr:[B

    iget v1, p0, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->pos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public readByteString()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readUINT32()I

    move-result v0

    .line 131
    .local v0, "len":I
    iget v2, p0, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->pos:I

    add-int/2addr v2, v0

    iget v3, p0, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->max:I

    if-le v2, v3, :cond_0

    .line 132
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Malformed SSH byte string."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 134
    :cond_0
    new-array v1, v0, [B

    .line 135
    .local v1, "res":[B
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->arr:[B

    iget v3, p0, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->pos:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 136
    iget v2, p0, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->pos:I

    .line 137
    return-object v1
.end method

.method public readBytes([BII)V
    .locals 2
    .param p1, "dst"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    iget v0, p0, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->pos:I

    add-int/2addr v0, p3

    iget v1, p0, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->max:I

    if-le v0, v1, :cond_0

    .line 76
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Packet too short."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->arr:[B

    iget v1, p0, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->pos:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    iget v0, p0, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->pos:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->pos:I

    .line 80
    return-void
.end method

.method public readBytes(I)[B
    .locals 4
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    iget v1, p0, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->pos:I

    add-int/2addr v1, p1

    iget v2, p0, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->max:I

    if-le v1, v2, :cond_0

    .line 63
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Packet too short."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 65
    :cond_0
    new-array v0, p1, [B

    .line 67
    .local v0, "res":[B
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->arr:[B

    iget v2, p0, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->pos:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    iget v1, p0, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->pos:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->pos:I

    .line 70
    return-object v0
.end method

.method public readMPINT()Ljava/math/BigInteger;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readByteString()[B

    move-result-object v1

    .line 119
    .local v1, "raw":[B
    array-length v2, v1

    if-nez v2, :cond_0

    .line 120
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 124
    .local v0, "b":Ljava/math/BigInteger;
    :goto_0
    return-object v0

    .line 122
    .end local v0    # "b":Ljava/math/BigInteger;
    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    .restart local v0    # "b":Ljava/math/BigInteger;
    goto :goto_0
.end method

.method public readNameList()[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2c

    invoke-static {v0, v1}, Lcom/odinnet/servermonitor/ssh/util/Tokenizer;->parseTokens(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readString()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readUINT32()I

    move-result v0

    .line 157
    .local v0, "len":I
    iget v2, p0, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->pos:I

    add-int/2addr v2, v0

    iget v3, p0, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->max:I

    if-le v2, v3, :cond_0

    .line 158
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Malformed SSH string."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 160
    :cond_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->arr:[B

    iget v3, p0, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->pos:I

    const-string v4, "ISO-8859-1"

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 162
    .local v1, "res":Ljava/lang/String;
    iget v2, p0, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->pos:I

    .line 164
    return-object v1
.end method

.method public readString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readUINT32()I

    move-result v0

    .line 144
    .local v0, "len":I
    iget v2, p0, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->pos:I

    add-int/2addr v2, v0

    iget v3, p0, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->max:I

    if-le v2, v3, :cond_0

    .line 145
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Malformed SSH string."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 147
    :cond_0
    if-nez p1, :cond_1

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->arr:[B

    iget v4, p0, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->pos:I

    invoke-direct {v2, v3, v4, v0}, Ljava/lang/String;-><init>([BII)V

    move-object v1, v2

    .line 148
    .local v1, "res":Ljava/lang/String;
    :goto_0
    iget v2, p0, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->pos:I

    .line 150
    return-object v1

    .line 147
    .end local v1    # "res":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->arr:[B

    iget v4, p0, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->pos:I

    invoke-direct {v2, v3, v4, v0, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    move-object v1, v2

    goto :goto_0
.end method

.method public readUINT32()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    iget v0, p0, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->pos:I

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->max:I

    if-le v0, v1, :cond_0

    .line 93
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Packet too short."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->arr:[B

    iget v1, p0, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->pos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->arr:[B

    iget v2, p0, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->pos:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->arr:[B

    iget v2, p0, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->pos:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->arr:[B

    iget v2, p0, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->pos:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public readUINT64()J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    iget v4, p0, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->pos:I

    add-int/lit8 v4, v4, 0x8

    iget v5, p0, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->max:I

    if-le v4, v5, :cond_0

    .line 102
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Packet too short."

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 104
    :cond_0
    iget-object v4, p0, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->arr:[B

    iget v5, p0, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->pos:I

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    iget-object v5, p0, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->arr:[B

    iget v6, p0, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->pos:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->pos:I

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    iget-object v5, p0, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->arr:[B

    iget v6, p0, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->pos:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->pos:I

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    iget-object v5, p0, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->arr:[B

    iget v6, p0, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->pos:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->pos:I

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    int-to-long v0, v4

    .line 107
    .local v0, "high":J
    iget-object v4, p0, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->arr:[B

    iget v5, p0, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->pos:I

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    iget-object v5, p0, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->arr:[B

    iget v6, p0, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->pos:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->pos:I

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    iget-object v5, p0, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->arr:[B

    iget v6, p0, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->pos:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->pos:I

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    iget-object v5, p0, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->arr:[B

    iget v6, p0, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->pos:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->pos:I

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    int-to-long v2, v4

    .line 110
    .local v2, "low":J
    const/16 v4, 0x20

    shl-long v4, v0, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v6, v2

    or-long/2addr v4, v6

    return-wide v4
.end method

.method public remain()I
    .locals 2

    .prologue
    .line 174
    iget v0, p0, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->max:I

    iget v1, p0, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->pos:I

    sub-int/2addr v0, v1

    return v0
.end method
