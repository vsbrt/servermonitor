.class public Lcom/odinnet/servermonitor/ssh/crypto/cipher/CBCMode;
.super Ljava/lang/Object;
.source "CBCMode.java"

# interfaces
.implements Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipher;


# instance fields
.field blockSize:I

.field cbc_vector:[B

.field doEncrypt:Z

.field tc:Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipher;

.field tmp_vector:[B


# direct methods
.method public constructor <init>(Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipher;[BZ)V
    .locals 3
    .param p1, "tc"    # Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipher;
    .param p2, "iv"    # [B
    .param p3, "doEncrypt"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CBCMode;->tc:Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipher;

    .line 26
    invoke-interface {p1}, Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CBCMode;->blockSize:I

    .line 27
    iput-boolean p3, p0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CBCMode;->doEncrypt:Z

    .line 29
    iget v0, p0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CBCMode;->blockSize:I

    array-length v1, p2

    if-eq v0, v1, :cond_0

    .line 30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IV must be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CBCMode;->blockSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes long! (currently "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_0
    iget v0, p0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CBCMode;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CBCMode;->cbc_vector:[B

    .line 34
    iget v0, p0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CBCMode;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CBCMode;->tmp_vector:[B

    .line 35
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CBCMode;->cbc_vector:[B

    iget v1, p0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CBCMode;->blockSize:I

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36
    return-void
.end method

.method private decryptBlock([BI[BI)V
    .locals 5
    .param p1, "src"    # [B
    .param p2, "srcoff"    # I
    .param p3, "dst"    # [B
    .param p4, "dstoff"    # I

    .prologue
    .line 57
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CBCMode;->tmp_vector:[B

    const/4 v3, 0x0

    iget v4, p0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CBCMode;->blockSize:I

    invoke-static {p1, p2, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CBCMode;->tc:Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipher;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipher;->transformBlock([BI[BI)V

    .line 61
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CBCMode;->blockSize:I

    if-ge v0, v2, :cond_0

    .line 62
    add-int v2, p4, v0

    aget-byte v3, p3, v2

    iget-object v4, p0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CBCMode;->cbc_vector:[B

    aget-byte v4, v4, v0

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p3, v2

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    :cond_0
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CBCMode;->cbc_vector:[B

    .line 67
    .local v1, "swap":[B
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CBCMode;->tmp_vector:[B

    iput-object v2, p0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CBCMode;->cbc_vector:[B

    .line 68
    iput-object v1, p0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CBCMode;->tmp_vector:[B

    .line 69
    return-void
.end method

.method private encryptBlock([BI[BI)V
    .locals 5
    .param p1, "src"    # [B
    .param p2, "srcoff"    # I
    .param p3, "dst"    # [B
    .param p4, "dstoff"    # I

    .prologue
    const/4 v4, 0x0

    .line 45
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CBCMode;->blockSize:I

    if-ge v0, v1, :cond_0

    .line 46
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CBCMode;->cbc_vector:[B

    aget-byte v2, v1, v0

    add-int v3, p2, v0

    aget-byte v3, p1, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 48
    :cond_0
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CBCMode;->tc:Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipher;

    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CBCMode;->cbc_vector:[B

    invoke-interface {v1, v2, v4, p3, p4}, Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipher;->transformBlock([BI[BI)V

    .line 50
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CBCMode;->cbc_vector:[B

    iget v2, p0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CBCMode;->blockSize:I

    invoke-static {p3, p4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 51
    return-void
.end method


# virtual methods
.method public getBlockSize()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CBCMode;->blockSize:I

    return v0
.end method

.method public init(Z[B)V
    .locals 0
    .param p1, "forEncryption"    # Z
    .param p2, "key"    # [B

    .prologue
    .line 20
    return-void
.end method

.method public transformBlock([BI[BI)V
    .locals 1
    .param p1, "src"    # [B
    .param p2, "srcoff"    # I
    .param p3, "dst"    # [B
    .param p4, "dstoff"    # I

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CBCMode;->doEncrypt:Z

    if-eqz v0, :cond_0

    .line 74
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CBCMode;->encryptBlock([BI[BI)V

    .line 77
    :goto_0
    return-void

    .line 76
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CBCMode;->decryptBlock([BI[BI)V

    goto :goto_0
.end method
