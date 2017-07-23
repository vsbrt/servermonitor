.class public Lcom/odinnet/servermonitor/ssh/crypto/cipher/CipherInputStream;
.super Ljava/lang/Object;
.source "CipherInputStream.java"


# instance fields
.field final BUFF_SIZE:I

.field bi:Ljava/io/InputStream;

.field blockSize:I

.field buffer:[B

.field currentCipher:Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipher;

.field enc:[B

.field input_buffer:[B

.field input_buffer_pos:I

.field input_buffer_size:I

.field pos:I


# direct methods
.method public constructor <init>(Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipher;Ljava/io/InputStream;)V
    .locals 2
    .param p1, "tc"    # Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipher;
    .param p2, "bi"    # Ljava/io/InputStream;

    .prologue
    const/16 v0, 0x800

    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput v0, p0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CipherInputStream;->BUFF_SIZE:I

    .line 28
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CipherInputStream;->input_buffer:[B

    .line 29
    iput v1, p0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CipherInputStream;->input_buffer_pos:I

    .line 30
    iput v1, p0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CipherInputStream;->input_buffer_size:I

    .line 34
    iput-object p2, p0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CipherInputStream;->bi:Ljava/io/InputStream;

    .line 35
    invoke-virtual {p0, p1}, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CipherInputStream;->changeCipher(Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipher;)V

    .line 36
    return-void
.end method

.method private fill_buffer()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 40
    iput v3, p0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CipherInputStream;->input_buffer_pos:I

    .line 41
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CipherInputStream;->bi:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CipherInputStream;->input_buffer:[B

    const/16 v2, 0x800

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    iput v0, p0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CipherInputStream;->input_buffer_size:I

    .line 42
    iget v0, p0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CipherInputStream;->input_buffer_size:I

    return v0
.end method

.method private getBlock()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 76
    const/4 v2, 0x0

    .line 77
    .local v2, "n":I
    :goto_0
    iget v3, p0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CipherInputStream;->blockSize:I

    if-ge v2, v3, :cond_1

    .line 79
    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CipherInputStream;->enc:[B

    iget v4, p0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CipherInputStream;->blockSize:I

    sub-int/2addr v4, v2

    invoke-direct {p0, v3, v2, v4}, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CipherInputStream;->internal_read([BII)I

    move-result v1

    .line 80
    .local v1, "len":I
    if-gez v1, :cond_0

    .line 81
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Cannot read full block, EOF reached."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 82
    :cond_0
    add-int/2addr v2, v1

    .line 83
    goto :goto_0

    .line 87
    .end local v1    # "len":I
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CipherInputStream;->currentCipher:Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipher;

    iget-object v4, p0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CipherInputStream;->enc:[B

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CipherInputStream;->buffer:[B

    const/4 v7, 0x0

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipher;->transformBlock([BI[BI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    iput v8, p0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CipherInputStream;->pos:I

    .line 94
    return-void

    .line 89
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 91
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Error while decrypting block."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private internal_read([BII)I
    .locals 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 47
    iget v2, p0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CipherInputStream;->input_buffer_size:I

    if-gez v2, :cond_0

    move v2, v4

    .line 62
    :goto_0
    return v2

    .line 50
    :cond_0
    iget v2, p0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CipherInputStream;->input_buffer_pos:I

    iget v3, p0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CipherInputStream;->input_buffer_size:I

    if-lt v2, v3, :cond_1

    .line 52
    invoke-direct {p0}, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CipherInputStream;->fill_buffer()I

    move-result v2

    if-gtz v2, :cond_1

    move v2, v4

    .line 53
    goto :goto_0

    .line 56
    :cond_1
    iget v2, p0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CipherInputStream;->input_buffer_size:I

    iget v3, p0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CipherInputStream;->input_buffer_pos:I

    sub-int v0, v2, v3

    .line 57
    .local v0, "avail":I
    if-le p3, v0, :cond_2

    move v1, v0

    .line 59
    .local v1, "thiscopy":I
    :goto_1
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CipherInputStream;->input_buffer:[B

    iget v3, p0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CipherInputStream;->input_buffer_pos:I

    invoke-static {v2, v3, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    iget v2, p0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CipherInputStream;->input_buffer_pos:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CipherInputStream;->input_buffer_pos:I

    move v2, v1

    .line 62
    goto :goto_0

    .end local v1    # "thiscopy":I
    :cond_2
    move v1, p3

    .line 57
    goto :goto_1
.end method


# virtual methods
.method public changeCipher(Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipher;)V
    .locals 1
    .param p1, "bc"    # Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipher;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CipherInputStream;->currentCipher:Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipher;

    .line 68
    invoke-interface {p1}, Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CipherInputStream;->blockSize:I

    .line 69
    iget v0, p0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CipherInputStream;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CipherInputStream;->buffer:[B

    .line 70
    iget v0, p0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CipherInputStream;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CipherInputStream;->enc:[B

    .line 71
    iget v0, p0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CipherInputStream;->blockSize:I

    iput v0, p0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CipherInputStream;->pos:I

    .line 72
    return-void
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    iget v0, p0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CipherInputStream;->pos:I

    iget v1, p0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CipherInputStream;->blockSize:I

    if-lt v0, v1, :cond_0

    .line 125
    invoke-direct {p0}, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CipherInputStream;->getBlock()V

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CipherInputStream;->buffer:[B

    iget v1, p0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CipherInputStream;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CipherInputStream;->pos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([B)I
    .locals 2
    .param p1, "dst"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CipherInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 5
    .param p1, "dst"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    const/4 v2, 0x0

    .line 105
    .local v2, "count":I
    :goto_0
    if-lez p3, :cond_1

    .line 107
    iget v3, p0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CipherInputStream;->pos:I

    iget v4, p0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CipherInputStream;->blockSize:I

    if-lt v3, v4, :cond_0

    .line 108
    invoke-direct {p0}, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CipherInputStream;->getBlock()V

    .line 110
    :cond_0
    iget v3, p0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CipherInputStream;->blockSize:I

    iget v4, p0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CipherInputStream;->pos:I

    sub-int v0, v3, v4

    .line 111
    .local v0, "avail":I
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 112
    .local v1, "copy":I
    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CipherInputStream;->buffer:[B

    iget v4, p0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CipherInputStream;->pos:I

    invoke-static {v3, v4, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 113
    iget v3, p0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CipherInputStream;->pos:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CipherInputStream;->pos:I

    .line 114
    add-int/2addr p2, v1

    .line 115
    sub-int/2addr p3, v1

    .line 116
    add-int/2addr v2, v1

    .line 117
    goto :goto_0

    .line 118
    .end local v0    # "avail":I
    .end local v1    # "copy":I
    :cond_1
    return v2
.end method

.method public readPlain([BII)I
    .locals 4
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    iget v2, p0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CipherInputStream;->pos:I

    iget v3, p0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CipherInputStream;->blockSize:I

    if-eq v2, v3, :cond_0

    .line 133
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Cannot read plain since crypto buffer is not aligned."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 134
    :cond_0
    const/4 v1, 0x0

    .line 135
    .local v1, "n":I
    :goto_0
    if-ge v1, p3, :cond_2

    .line 137
    add-int v2, p2, v1

    sub-int v3, p3, v1

    invoke-direct {p0, p1, v2, v3}, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CipherInputStream;->internal_read([BII)I

    move-result v0

    .line 138
    .local v0, "cnt":I
    if-gez v0, :cond_1

    .line 139
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Cannot fill buffer, EOF reached."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 140
    :cond_1
    add-int/2addr v1, v0

    .line 141
    goto :goto_0

    .line 142
    .end local v0    # "cnt":I
    :cond_2
    return v1
.end method
