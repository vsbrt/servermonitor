.class public Lcom/odinnet/servermonitor/ssh/crypto/SimpleDERReader;
.super Ljava/lang/Object;
.source "SimpleDERReader.java"


# instance fields
.field buffer:[B

.field count:I

.field pos:I


# direct methods
.method public constructor <init>([B)V
    .locals 0
    .param p1, "b"    # [B

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p0, p1}, Lcom/odinnet/servermonitor/ssh/crypto/SimpleDERReader;->resetInput([B)V

    .line 22
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 0
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p0, p1, p2, p3}, Lcom/odinnet/servermonitor/ssh/crypto/SimpleDERReader;->resetInput([BII)V

    .line 27
    return-void
.end method

.method private readByte()B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    iget v0, p0, Lcom/odinnet/servermonitor/ssh/crypto/SimpleDERReader;->count:I

    if-gtz v0, :cond_0

    .line 44
    new-instance v0, Ljava/io/IOException;

    const-string v1, "DER byte array: out of data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_0
    iget v0, p0, Lcom/odinnet/servermonitor/ssh/crypto/SimpleDERReader;->count:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/odinnet/servermonitor/ssh/crypto/SimpleDERReader;->count:I

    .line 46
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/crypto/SimpleDERReader;->buffer:[B

    iget v1, p0, Lcom/odinnet/servermonitor/ssh/crypto/SimpleDERReader;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/odinnet/servermonitor/ssh/crypto/SimpleDERReader;->pos:I

    aget-byte v0, v0, v1

    return v0
.end method

.method private readBytes(I)[B
    .locals 4
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    iget v1, p0, Lcom/odinnet/servermonitor/ssh/crypto/SimpleDERReader;->count:I

    if-le p1, v1, :cond_0

    .line 52
    new-instance v1, Ljava/io/IOException;

    const-string v2, "DER byte array: out of data"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 54
    :cond_0
    new-array v0, p1, [B

    .line 56
    .local v0, "b":[B
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/crypto/SimpleDERReader;->buffer:[B

    iget v2, p0, Lcom/odinnet/servermonitor/ssh/crypto/SimpleDERReader;->pos:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58
    iget v1, p0, Lcom/odinnet/servermonitor/ssh/crypto/SimpleDERReader;->pos:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/odinnet/servermonitor/ssh/crypto/SimpleDERReader;->pos:I

    .line 59
    iget v1, p0, Lcom/odinnet/servermonitor/ssh/crypto/SimpleDERReader;->count:I

    sub-int/2addr v1, p1

    iput v1, p0, Lcom/odinnet/servermonitor/ssh/crypto/SimpleDERReader;->count:I

    .line 61
    return-object v0
.end method

.method private readLength()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/odinnet/servermonitor/ssh/crypto/SimpleDERReader;->readByte()B

    move-result v2

    and-int/lit16 v0, v2, 0xff

    .line 73
    .local v0, "len":I
    and-int/lit16 v2, v0, 0x80

    if-nez v2, :cond_0

    move v2, v0

    .line 90
    :goto_0
    return v2

    .line 76
    :cond_0
    and-int/lit8 v1, v0, 0x7f

    .line 78
    .local v1, "remain":I
    if-nez v1, :cond_1

    .line 79
    const/4 v2, -0x1

    goto :goto_0

    .line 81
    :cond_1
    const/4 v0, 0x0

    .line 83
    :goto_1
    if-lez v1, :cond_2

    .line 85
    shl-int/lit8 v0, v0, 0x8

    .line 86
    invoke-direct {p0}, Lcom/odinnet/servermonitor/ssh/crypto/SimpleDERReader;->readByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    .line 87
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_2
    move v2, v0

    .line 90
    goto :goto_0
.end method


# virtual methods
.method public available()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/odinnet/servermonitor/ssh/crypto/SimpleDERReader;->count:I

    return v0
.end method

.method public ignoreNextObject()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/odinnet/servermonitor/ssh/crypto/SimpleDERReader;->readByte()B

    move-result v2

    and-int/lit16 v1, v2, 0xff

    .line 97
    .local v1, "type":I
    invoke-direct {p0}, Lcom/odinnet/servermonitor/ssh/crypto/SimpleDERReader;->readLength()I

    move-result v0

    .line 99
    .local v0, "len":I
    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/odinnet/servermonitor/ssh/crypto/SimpleDERReader;->available()I

    move-result v2

    if-le v0, v2, :cond_1

    .line 100
    :cond_0
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal len in DER object ("

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

    .line 102
    :cond_1
    invoke-direct {p0, v0}, Lcom/odinnet/servermonitor/ssh/crypto/SimpleDERReader;->readBytes(I)[B

    .line 104
    return v1
.end method

.method public readInt()Ljava/math/BigInteger;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/odinnet/servermonitor/ssh/crypto/SimpleDERReader;->readByte()B

    move-result v4

    and-int/lit16 v3, v4, 0xff

    .line 111
    .local v3, "type":I
    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 112
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected DER Integer, but found type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 114
    :cond_0
    invoke-direct {p0}, Lcom/odinnet/servermonitor/ssh/crypto/SimpleDERReader;->readLength()I

    move-result v2

    .line 116
    .local v2, "len":I
    if-ltz v2, :cond_1

    invoke-virtual {p0}, Lcom/odinnet/servermonitor/ssh/crypto/SimpleDERReader;->available()I

    move-result v4

    if-le v2, v4, :cond_2

    .line 117
    :cond_1
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Illegal len in DER object ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 119
    :cond_2
    invoke-direct {p0, v2}, Lcom/odinnet/servermonitor/ssh/crypto/SimpleDERReader;->readBytes(I)[B

    move-result-object v0

    .line 121
    .local v0, "b":[B
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>([B)V

    .line 123
    .local v1, "bi":Ljava/math/BigInteger;
    return-object v1
.end method

.method public readOctetString()[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/odinnet/servermonitor/ssh/crypto/SimpleDERReader;->readByte()B

    move-result v3

    and-int/lit16 v2, v3, 0xff

    .line 147
    .local v2, "type":I
    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    .line 148
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected DER Octetstring, but found type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 150
    :cond_0
    invoke-direct {p0}, Lcom/odinnet/servermonitor/ssh/crypto/SimpleDERReader;->readLength()I

    move-result v1

    .line 152
    .local v1, "len":I
    if-ltz v1, :cond_1

    invoke-virtual {p0}, Lcom/odinnet/servermonitor/ssh/crypto/SimpleDERReader;->available()I

    move-result v3

    if-le v1, v3, :cond_2

    .line 153
    :cond_1
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal len in DER object ("

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

    .line 155
    :cond_2
    invoke-direct {p0, v1}, Lcom/odinnet/servermonitor/ssh/crypto/SimpleDERReader;->readBytes(I)[B

    move-result-object v0

    .line 157
    .local v0, "b":[B
    return-object v0
.end method

.method public readSequenceAsByteArray()[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/odinnet/servermonitor/ssh/crypto/SimpleDERReader;->readByte()B

    move-result v3

    and-int/lit16 v2, v3, 0xff

    .line 130
    .local v2, "type":I
    const/16 v3, 0x30

    if-eq v2, v3, :cond_0

    .line 131
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected DER Sequence, but found type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 133
    :cond_0
    invoke-direct {p0}, Lcom/odinnet/servermonitor/ssh/crypto/SimpleDERReader;->readLength()I

    move-result v1

    .line 135
    .local v1, "len":I
    if-ltz v1, :cond_1

    invoke-virtual {p0}, Lcom/odinnet/servermonitor/ssh/crypto/SimpleDERReader;->available()I

    move-result v3

    if-le v1, v3, :cond_2

    .line 136
    :cond_1
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal len in DER object ("

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

    .line 138
    :cond_2
    invoke-direct {p0, v1}, Lcom/odinnet/servermonitor/ssh/crypto/SimpleDERReader;->readBytes(I)[B

    move-result-object v0

    .line 140
    .local v0, "b":[B
    return-object v0
.end method

.method public resetInput([B)V
    .locals 2
    .param p1, "b"    # [B

    .prologue
    .line 31
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/odinnet/servermonitor/ssh/crypto/SimpleDERReader;->resetInput([BII)V

    .line 32
    return-void
.end method

.method public resetInput([BII)V
    .locals 0
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 36
    iput-object p1, p0, Lcom/odinnet/servermonitor/ssh/crypto/SimpleDERReader;->buffer:[B

    .line 37
    iput p2, p0, Lcom/odinnet/servermonitor/ssh/crypto/SimpleDERReader;->pos:I

    .line 38
    iput p3, p0, Lcom/odinnet/servermonitor/ssh/crypto/SimpleDERReader;->count:I

    .line 39
    return-void
.end method
