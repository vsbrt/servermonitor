.class public final Lcom/odinnet/servermonitor/ssh/crypto/digest/HMAC;
.super Ljava/lang/Object;
.source "HMAC.java"

# interfaces
.implements Lcom/odinnet/servermonitor/ssh/crypto/digest/Digest;


# instance fields
.field k_xor_ipad:[B

.field k_xor_opad:[B

.field md:Lcom/odinnet/servermonitor/ssh/crypto/digest/Digest;

.field size:I

.field tmp:[B


# direct methods
.method public constructor <init>(Lcom/odinnet/servermonitor/ssh/crypto/digest/Digest;[BI)V
    .locals 6
    .param p1, "md"    # Lcom/odinnet/servermonitor/ssh/crypto/digest/Digest;
    .param p2, "key"    # [B
    .param p3, "size"    # I

    .prologue
    const/16 v5, 0x40

    const/4 v4, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/HMAC;->md:Lcom/odinnet/servermonitor/ssh/crypto/digest/Digest;

    .line 23
    iput p3, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/HMAC;->size:I

    .line 25
    invoke-interface {p1}, Lcom/odinnet/servermonitor/ssh/crypto/digest/Digest;->getDigestLength()I

    move-result v2

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/HMAC;->tmp:[B

    .line 27
    const/16 v0, 0x40

    .line 29
    .local v0, "BLOCKSIZE":I
    new-array v2, v5, [B

    iput-object v2, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/HMAC;->k_xor_ipad:[B

    .line 30
    new-array v2, v5, [B

    iput-object v2, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/HMAC;->k_xor_opad:[B

    .line 32
    array-length v2, p2

    if-le v2, v5, :cond_0

    .line 34
    invoke-interface {p1}, Lcom/odinnet/servermonitor/ssh/crypto/digest/Digest;->reset()V

    .line 35
    invoke-interface {p1, p2}, Lcom/odinnet/servermonitor/ssh/crypto/digest/Digest;->update([B)V

    .line 36
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/HMAC;->tmp:[B

    invoke-interface {p1, v2}, Lcom/odinnet/servermonitor/ssh/crypto/digest/Digest;->digest([B)V

    .line 37
    iget-object p2, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/HMAC;->tmp:[B

    .line 40
    :cond_0
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/HMAC;->k_xor_ipad:[B

    array-length v3, p2

    invoke-static {p2, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 41
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/HMAC;->k_xor_opad:[B

    array-length v3, p2

    invoke-static {p2, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_1

    .line 45
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/HMAC;->k_xor_ipad:[B

    aget-byte v3, v2, v1

    xor-int/lit8 v3, v3, 0x36

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 46
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/HMAC;->k_xor_opad:[B

    aget-byte v3, v2, v1

    xor-int/lit8 v3, v3, 0x5c

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 43
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 48
    :cond_1
    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/HMAC;->k_xor_ipad:[B

    invoke-interface {p1, v2}, Lcom/odinnet/servermonitor/ssh/crypto/digest/Digest;->update([B)V

    .line 49
    return-void
.end method


# virtual methods
.method public final digest([B)V
    .locals 1
    .param p1, "out"    # [B

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/odinnet/servermonitor/ssh/crypto/digest/HMAC;->digest([BI)V

    .line 80
    return-void
.end method

.method public final digest([BI)V
    .locals 3
    .param p1, "out"    # [B
    .param p2, "off"    # I

    .prologue
    .line 84
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/HMAC;->md:Lcom/odinnet/servermonitor/ssh/crypto/digest/Digest;

    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/HMAC;->tmp:[B

    invoke-interface {v0, v1}, Lcom/odinnet/servermonitor/ssh/crypto/digest/Digest;->digest([B)V

    .line 86
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/HMAC;->md:Lcom/odinnet/servermonitor/ssh/crypto/digest/Digest;

    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/HMAC;->k_xor_opad:[B

    invoke-interface {v0, v1}, Lcom/odinnet/servermonitor/ssh/crypto/digest/Digest;->update([B)V

    .line 87
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/HMAC;->md:Lcom/odinnet/servermonitor/ssh/crypto/digest/Digest;

    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/HMAC;->tmp:[B

    invoke-interface {v0, v1}, Lcom/odinnet/servermonitor/ssh/crypto/digest/Digest;->update([B)V

    .line 89
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/HMAC;->md:Lcom/odinnet/servermonitor/ssh/crypto/digest/Digest;

    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/HMAC;->tmp:[B

    invoke-interface {v0, v1}, Lcom/odinnet/servermonitor/ssh/crypto/digest/Digest;->digest([B)V

    .line 91
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/HMAC;->tmp:[B

    const/4 v1, 0x0

    iget v2, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/HMAC;->size:I

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/HMAC;->md:Lcom/odinnet/servermonitor/ssh/crypto/digest/Digest;

    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/HMAC;->k_xor_ipad:[B

    invoke-interface {v0, v1}, Lcom/odinnet/servermonitor/ssh/crypto/digest/Digest;->update([B)V

    .line 94
    return-void
.end method

.method public final getDigestLength()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/HMAC;->size:I

    return v0
.end method

.method public final reset()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/HMAC;->md:Lcom/odinnet/servermonitor/ssh/crypto/digest/Digest;

    invoke-interface {v0}, Lcom/odinnet/servermonitor/ssh/crypto/digest/Digest;->reset()V

    .line 74
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/HMAC;->md:Lcom/odinnet/servermonitor/ssh/crypto/digest/Digest;

    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/HMAC;->k_xor_ipad:[B

    invoke-interface {v0, v1}, Lcom/odinnet/servermonitor/ssh/crypto/digest/Digest;->update([B)V

    .line 75
    return-void
.end method

.method public final update(B)V
    .locals 1
    .param p1, "b"    # B

    .prologue
    .line 58
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/HMAC;->md:Lcom/odinnet/servermonitor/ssh/crypto/digest/Digest;

    invoke-interface {v0, p1}, Lcom/odinnet/servermonitor/ssh/crypto/digest/Digest;->update(B)V

    .line 59
    return-void
.end method

.method public final update([B)V
    .locals 1
    .param p1, "b"    # [B

    .prologue
    .line 63
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/HMAC;->md:Lcom/odinnet/servermonitor/ssh/crypto/digest/Digest;

    invoke-interface {v0, p1}, Lcom/odinnet/servermonitor/ssh/crypto/digest/Digest;->update([B)V

    .line 64
    return-void
.end method

.method public final update([BII)V
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 68
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/HMAC;->md:Lcom/odinnet/servermonitor/ssh/crypto/digest/Digest;

    invoke-interface {v0, p1, p2, p3}, Lcom/odinnet/servermonitor/ssh/crypto/digest/Digest;->update([BII)V

    .line 69
    return-void
.end method
