.class public Lcom/odinnet/servermonitor/ssh/crypto/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field static final alphabet:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/odinnet/servermonitor/ssh/crypto/Base64;->alphabet:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode([C)[B
    .locals 9
    .param p0, "message"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    const/4 v0, 0x4

    new-array v2, v0, [B

    .line 69
    .local v2, "buff":[B
    array-length v0, p0

    new-array v4, v0, [B

    .line 71
    .local v4, "dest":[B
    const/4 v0, 0x0

    .line 72
    .local v0, "bpos":I
    const/4 v1, 0x0

    .line 74
    .local v1, "destpos":I
    const/4 v3, 0x0

    .local v3, "i":I
    move v6, v3

    .end local v3    # "i":I
    .local v6, "i":I
    move v5, v1

    .end local v1    # "destpos":I
    .local v5, "destpos":I
    :goto_0
    array-length v1, p0

    if-ge v6, v1, :cond_c

    .line 76
    aget-char v3, p0, v6

    .line 78
    .local v3, "c":I
    const/16 v1, 0xa

    if-eq v3, v1, :cond_b

    const/16 v1, 0xd

    if-eq v3, v1, :cond_b

    const/16 v1, 0x20

    if-eq v3, v1, :cond_b

    const/16 v1, 0x9

    if-ne v3, v1, :cond_0

    move v1, v5

    .line 74
    .end local v3    # "c":I
    .end local v5    # "destpos":I
    .restart local v1    # "destpos":I
    :goto_1
    add-int/lit8 v3, v6, 0x1

    .end local v6    # "i":I
    .local v3, "i":I
    move v6, v3

    .end local v3    # "i":I
    .restart local v6    # "i":I
    move v5, v1

    .end local v1    # "destpos":I
    .restart local v5    # "destpos":I
    goto :goto_0

    .line 81
    .local v3, "c":I
    :cond_0
    const/16 v1, 0x41

    if-lt v3, v1, :cond_1

    const/16 v1, 0x5a

    if-gt v3, v1, :cond_1

    .line 83
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "bpos":I
    .local v1, "bpos":I
    const/16 v7, 0x41

    sub-int/2addr v3, v7

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .end local v3    # "c":I
    move v0, v1

    .line 110
    .end local v1    # "bpos":I
    .restart local v0    # "bpos":I
    :goto_2
    const/4 v1, 0x4

    if-ne v0, v1, :cond_b

    .line 112
    const/4 v0, 0x0

    .line 114
    const/4 v1, 0x0

    aget-byte v1, v2, v1

    const/16 v3, 0x40

    if-ne v1, v3, :cond_7

    move p0, v0

    .end local v0    # "bpos":I
    .local p0, "bpos":I
    move v0, v5

    .line 143
    .end local v2    # "buff":[B
    .end local v5    # "destpos":I
    .local v0, "destpos":I
    :goto_3
    new-array p0, v0, [B

    .line 144
    .local p0, "res":[B
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v4, v1, p0, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 146
    return-object p0

    .line 85
    .local v0, "bpos":I
    .restart local v2    # "buff":[B
    .restart local v3    # "c":I
    .restart local v5    # "destpos":I
    .local p0, "message":[C
    :cond_1
    const/16 v1, 0x61

    if-lt v3, v1, :cond_2

    const/16 v1, 0x7a

    if-gt v3, v1, :cond_2

    .line 87
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "bpos":I
    .restart local v1    # "bpos":I
    const/16 v7, 0x61

    sub-int/2addr v3, v7

    add-int/lit8 v3, v3, 0x1a

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .end local v3    # "c":I
    move v0, v1

    .end local v1    # "bpos":I
    .restart local v0    # "bpos":I
    goto :goto_2

    .line 89
    .restart local v3    # "c":I
    :cond_2
    const/16 v1, 0x30

    if-lt v3, v1, :cond_3

    const/16 v1, 0x39

    if-gt v3, v1, :cond_3

    .line 91
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "bpos":I
    .restart local v1    # "bpos":I
    const/16 v7, 0x30

    sub-int/2addr v3, v7

    add-int/lit8 v3, v3, 0x34

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .end local v3    # "c":I
    move v0, v1

    .end local v1    # "bpos":I
    .restart local v0    # "bpos":I
    goto :goto_2

    .line 93
    .restart local v3    # "c":I
    :cond_3
    const/16 v1, 0x2b

    if-ne v3, v1, :cond_4

    .line 95
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "bpos":I
    .restart local v1    # "bpos":I
    const/16 v3, 0x3e

    aput-byte v3, v2, v0

    .end local v3    # "c":I
    move v0, v1

    .end local v1    # "bpos":I
    .restart local v0    # "bpos":I
    goto :goto_2

    .line 97
    .restart local v3    # "c":I
    :cond_4
    const/16 v1, 0x2f

    if-ne v3, v1, :cond_5

    .line 99
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "bpos":I
    .restart local v1    # "bpos":I
    const/16 v3, 0x3f

    aput-byte v3, v2, v0

    .end local v3    # "c":I
    move v0, v1

    .end local v1    # "bpos":I
    .restart local v0    # "bpos":I
    goto :goto_2

    .line 101
    .restart local v3    # "c":I
    :cond_5
    const/16 v1, 0x3d

    if-ne v3, v1, :cond_6

    .line 103
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "bpos":I
    .restart local v1    # "bpos":I
    const/16 v3, 0x40

    aput-byte v3, v2, v0

    .end local v3    # "c":I
    move v0, v1

    .end local v1    # "bpos":I
    .restart local v0    # "bpos":I
    goto :goto_2

    .line 107
    .restart local v3    # "c":I
    :cond_6
    new-instance p0, Ljava/io/IOException;

    .end local p0    # "message":[C
    const-string v0, "Illegal char in base64 code."

    .end local v0    # "bpos":I
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 117
    .end local v3    # "c":I
    .restart local v0    # "bpos":I
    .restart local p0    # "message":[C
    :cond_7
    const/4 v1, 0x1

    aget-byte v1, v2, v1

    const/16 v3, 0x40

    if-ne v1, v3, :cond_8

    .line 118
    new-instance p0, Ljava/io/IOException;

    .end local p0    # "message":[C
    const-string v0, "Unexpected \'=\' in base64 code."

    .end local v0    # "bpos":I
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 120
    .restart local v0    # "bpos":I
    .restart local p0    # "message":[C
    :cond_8
    const/4 v1, 0x2

    aget-byte v1, v2, v1

    const/16 v3, 0x40

    if-ne v1, v3, :cond_9

    .line 122
    const/4 p0, 0x0

    aget-byte p0, v2, p0

    .end local p0    # "message":[C
    and-int/lit8 p0, p0, 0x3f

    shl-int/lit8 p0, p0, 0x6

    const/4 v1, 0x1

    aget-byte v1, v2, v1

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v1, p0

    .line 123
    .local v1, "v":I
    add-int/lit8 p0, v5, 0x1

    .end local v5    # "destpos":I
    .local p0, "destpos":I
    shr-int/lit8 v1, v1, 0x4

    int-to-byte v1, v1

    aput-byte v1, v4, v5

    .end local v1    # "v":I
    move v8, p0

    .end local p0    # "destpos":I
    .local v8, "destpos":I
    move p0, v0

    .end local v0    # "bpos":I
    .local p0, "bpos":I
    move v0, v8

    .line 124
    .end local v8    # "destpos":I
    .local v0, "destpos":I
    goto/16 :goto_3

    .line 126
    .local v0, "bpos":I
    .restart local v5    # "destpos":I
    .local p0, "message":[C
    :cond_9
    const/4 v1, 0x3

    aget-byte v1, v2, v1

    const/16 v3, 0x40

    if-ne v1, v3, :cond_a

    .line 128
    const/4 p0, 0x0

    aget-byte p0, v2, p0

    .end local p0    # "message":[C
    and-int/lit8 p0, p0, 0x3f

    shl-int/lit8 p0, p0, 0xc

    const/4 v1, 0x1

    aget-byte v1, v2, v1

    and-int/lit8 v1, v1, 0x3f

    shl-int/lit8 v1, v1, 0x6

    or-int/2addr p0, v1

    const/4 v1, 0x2

    aget-byte v1, v2, v1

    and-int/lit8 v1, v1, 0x3f

    or-int v2, p0, v1

    .line 129
    .local v2, "v":I
    add-int/lit8 p0, v5, 0x1

    .end local v5    # "destpos":I
    .local p0, "destpos":I
    shr-int/lit8 v1, v2, 0xa

    int-to-byte v1, v1

    aput-byte v1, v4, v5

    .line 130
    add-int/lit8 v1, p0, 0x1

    .end local p0    # "destpos":I
    .local v1, "destpos":I
    shr-int/lit8 v2, v2, 0x2

    int-to-byte v2, v2

    aput-byte v2, v4, p0

    .end local v2    # "v":I
    move p0, v0

    .end local v0    # "bpos":I
    .local p0, "bpos":I
    move v0, v1

    .line 131
    .end local v1    # "destpos":I
    .local v0, "destpos":I
    goto/16 :goto_3

    .line 135
    .local v0, "bpos":I
    .local v2, "buff":[B
    .restart local v5    # "destpos":I
    .local p0, "message":[C
    :cond_a
    const/4 v1, 0x0

    aget-byte v1, v2, v1

    and-int/lit8 v1, v1, 0x3f

    shl-int/lit8 v1, v1, 0x12

    const/4 v3, 0x1

    aget-byte v3, v2, v3

    and-int/lit8 v3, v3, 0x3f

    shl-int/lit8 v3, v3, 0xc

    or-int/2addr v1, v3

    const/4 v3, 0x2

    aget-byte v3, v2, v3

    and-int/lit8 v3, v3, 0x3f

    shl-int/lit8 v3, v3, 0x6

    or-int/2addr v1, v3

    const/4 v3, 0x3

    aget-byte v3, v2, v3

    and-int/lit8 v3, v3, 0x3f

    or-int v7, v1, v3

    .line 136
    .local v7, "v":I
    add-int/lit8 v1, v5, 0x1

    .end local v5    # "destpos":I
    .restart local v1    # "destpos":I
    shr-int/lit8 v3, v7, 0x10

    int-to-byte v3, v3

    aput-byte v3, v4, v5

    .line 137
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "destpos":I
    .local v3, "destpos":I
    shr-int/lit8 v5, v7, 0x8

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    .line 138
    add-int/lit8 v1, v3, 0x1

    .end local v3    # "destpos":I
    .restart local v1    # "destpos":I
    int-to-byte v5, v7

    aput-byte v5, v4, v3

    goto/16 :goto_1

    .end local v1    # "destpos":I
    .end local v7    # "v":I
    .restart local v5    # "destpos":I
    :cond_b
    move v1, v5

    .end local v5    # "destpos":I
    .restart local v1    # "destpos":I
    goto/16 :goto_1

    .end local v1    # "destpos":I
    .restart local v5    # "destpos":I
    :cond_c
    move p0, v0

    .end local v0    # "bpos":I
    .local p0, "bpos":I
    move v0, v5

    .end local v5    # "destpos":I
    .local v0, "destpos":I
    goto/16 :goto_3
.end method

.method public static encode([B)[C
    .locals 8
    .param p0, "content"    # [B

    .prologue
    const/4 v7, 0x1

    const/16 v6, 0x3d

    .line 19
    new-instance v0, Ljava/io/CharArrayWriter;

    array-length v4, p0

    mul-int/lit8 v4, v4, 0x4

    div-int/lit8 v4, v4, 0x3

    invoke-direct {v0, v4}, Ljava/io/CharArrayWriter;-><init>(I)V

    .line 21
    .local v0, "cw":Ljava/io/CharArrayWriter;
    const/4 v2, 0x0

    .line 23
    .local v2, "idx":I
    const/4 v3, 0x0

    .line 25
    .local v3, "x":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, p0

    if-ge v1, v4, :cond_3

    .line 27
    if-nez v2, :cond_1

    .line 28
    aget-byte v4, p0, v1

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v3, v4, 0x10

    .line 34
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 36
    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    .line 38
    sget-object v4, Lcom/odinnet/servermonitor/ssh/crypto/Base64;->alphabet:[C

    shr-int/lit8 v5, v3, 0x12

    aget-char v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/io/CharArrayWriter;->write(I)V

    .line 39
    sget-object v4, Lcom/odinnet/servermonitor/ssh/crypto/Base64;->alphabet:[C

    shr-int/lit8 v5, v3, 0xc

    and-int/lit8 v5, v5, 0x3f

    aget-char v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/io/CharArrayWriter;->write(I)V

    .line 40
    sget-object v4, Lcom/odinnet/servermonitor/ssh/crypto/Base64;->alphabet:[C

    shr-int/lit8 v5, v3, 0x6

    and-int/lit8 v5, v5, 0x3f

    aget-char v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/io/CharArrayWriter;->write(I)V

    .line 41
    sget-object v4, Lcom/odinnet/servermonitor/ssh/crypto/Base64;->alphabet:[C

    and-int/lit8 v5, v3, 0x3f

    aget-char v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/io/CharArrayWriter;->write(I)V

    .line 43
    const/4 v2, 0x0

    .line 25
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 29
    :cond_1
    if-ne v2, v7, :cond_2

    .line 30
    aget-byte v4, p0, v1

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    goto :goto_1

    .line 32
    :cond_2
    aget-byte v4, p0, v1

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    goto :goto_1

    .line 47
    :cond_3
    if-ne v2, v7, :cond_4

    .line 49
    sget-object v4, Lcom/odinnet/servermonitor/ssh/crypto/Base64;->alphabet:[C

    shr-int/lit8 v5, v3, 0x12

    aget-char v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/io/CharArrayWriter;->write(I)V

    .line 50
    sget-object v4, Lcom/odinnet/servermonitor/ssh/crypto/Base64;->alphabet:[C

    shr-int/lit8 v5, v3, 0xc

    and-int/lit8 v5, v5, 0x3f

    aget-char v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/io/CharArrayWriter;->write(I)V

    .line 51
    invoke-virtual {v0, v6}, Ljava/io/CharArrayWriter;->write(I)V

    .line 52
    invoke-virtual {v0, v6}, Ljava/io/CharArrayWriter;->write(I)V

    .line 55
    :cond_4
    const/4 v4, 0x2

    if-ne v2, v4, :cond_5

    .line 57
    sget-object v4, Lcom/odinnet/servermonitor/ssh/crypto/Base64;->alphabet:[C

    shr-int/lit8 v5, v3, 0x12

    aget-char v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/io/CharArrayWriter;->write(I)V

    .line 58
    sget-object v4, Lcom/odinnet/servermonitor/ssh/crypto/Base64;->alphabet:[C

    shr-int/lit8 v5, v3, 0xc

    and-int/lit8 v5, v5, 0x3f

    aget-char v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/io/CharArrayWriter;->write(I)V

    .line 59
    sget-object v4, Lcom/odinnet/servermonitor/ssh/crypto/Base64;->alphabet:[C

    shr-int/lit8 v5, v3, 0x6

    and-int/lit8 v5, v5, 0x3f

    aget-char v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/io/CharArrayWriter;->write(I)V

    .line 60
    invoke-virtual {v0, v6}, Ljava/io/CharArrayWriter;->write(I)V

    .line 63
    :cond_5
    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toCharArray()[C

    move-result-object v4

    return-object v4
.end method
