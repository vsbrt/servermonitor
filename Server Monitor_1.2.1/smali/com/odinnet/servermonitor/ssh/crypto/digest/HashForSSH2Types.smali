.class public Lcom/odinnet/servermonitor/ssh/crypto/digest/HashForSSH2Types;
.super Ljava/lang/Object;
.source "HashForSSH2Types.java"


# instance fields
.field md:Lcom/odinnet/servermonitor/ssh/crypto/digest/Digest;


# direct methods
.method public constructor <init>(Lcom/odinnet/servermonitor/ssh/crypto/digest/Digest;)V
    .locals 0
    .param p1, "md"    # Lcom/odinnet/servermonitor/ssh/crypto/digest/Digest;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/HashForSSH2Types;->md:Lcom/odinnet/servermonitor/ssh/crypto/digest/Digest;

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, "SHA1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    new-instance v0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;

    invoke-direct {v0}, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;-><init>()V

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/HashForSSH2Types;->md:Lcom/odinnet/servermonitor/ssh/crypto/digest/Digest;

    .line 33
    :goto_0
    return-void

    .line 27
    :cond_0
    const-string v0, "MD5"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29
    new-instance v0, Lcom/odinnet/servermonitor/ssh/crypto/digest/MD5;

    invoke-direct {v0}, Lcom/odinnet/servermonitor/ssh/crypto/digest/MD5;-><init>()V

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/HashForSSH2Types;->md:Lcom/odinnet/servermonitor/ssh/crypto/digest/Digest;

    goto :goto_0

    .line 32
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown algorithm "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getDigest([B)V
    .locals 1
    .param p1, "out"    # [B

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/odinnet/servermonitor/ssh/crypto/digest/HashForSSH2Types;->getDigest([BI)V

    .line 87
    return-void
.end method

.method public getDigest([BI)V
    .locals 1
    .param p1, "out"    # [B
    .param p2, "off"    # I

    .prologue
    .line 91
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/HashForSSH2Types;->md:Lcom/odinnet/servermonitor/ssh/crypto/digest/Digest;

    invoke-interface {v0, p1, p2}, Lcom/odinnet/servermonitor/ssh/crypto/digest/Digest;->digest([BI)V

    .line 92
    return-void
.end method

.method public getDigest()[B
    .locals 2

    .prologue
    .line 79
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/HashForSSH2Types;->md:Lcom/odinnet/servermonitor/ssh/crypto/digest/Digest;

    invoke-interface {v1}, Lcom/odinnet/servermonitor/ssh/crypto/digest/Digest;->getDigestLength()I

    move-result v1

    new-array v0, v1, [B

    .line 80
    .local v0, "tmp":[B
    invoke-virtual {p0, v0}, Lcom/odinnet/servermonitor/ssh/crypto/digest/HashForSSH2Types;->getDigest([B)V

    .line 81
    return-object v0
.end method

.method public getDigestLength()I
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/HashForSSH2Types;->md:Lcom/odinnet/servermonitor/ssh/crypto/digest/Digest;

    invoke-interface {v0}, Lcom/odinnet/servermonitor/ssh/crypto/digest/Digest;->getDigestLength()I

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/HashForSSH2Types;->md:Lcom/odinnet/servermonitor/ssh/crypto/digest/Digest;

    invoke-interface {v0}, Lcom/odinnet/servermonitor/ssh/crypto/digest/Digest;->reset()V

    .line 70
    return-void
.end method

.method public updateBigInt(Ljava/math/BigInteger;)V
    .locals 1
    .param p1, "b"    # Ljava/math/BigInteger;

    .prologue
    .line 64
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/odinnet/servermonitor/ssh/crypto/digest/HashForSSH2Types;->updateByteString([B)V

    .line 65
    return-void
.end method

.method public updateByte(B)V
    .locals 2
    .param p1, "b"    # B

    .prologue
    .line 38
    const/4 v1, 0x1

    new-array v0, v1, [B

    .line 39
    .local v0, "tmp":[B
    const/4 v1, 0x0

    aput-byte p1, v0, v1

    .line 40
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/HashForSSH2Types;->md:Lcom/odinnet/servermonitor/ssh/crypto/digest/Digest;

    invoke-interface {v1, v0}, Lcom/odinnet/servermonitor/ssh/crypto/digest/Digest;->update([B)V

    .line 41
    return-void
.end method

.method public updateByteString([B)V
    .locals 1
    .param p1, "b"    # [B

    .prologue
    .line 58
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/odinnet/servermonitor/ssh/crypto/digest/HashForSSH2Types;->updateUINT32(I)V

    .line 59
    invoke-virtual {p0, p1}, Lcom/odinnet/servermonitor/ssh/crypto/digest/HashForSSH2Types;->updateBytes([B)V

    .line 60
    return-void
.end method

.method public updateBytes([B)V
    .locals 1
    .param p1, "b"    # [B

    .prologue
    .line 45
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/HashForSSH2Types;->md:Lcom/odinnet/servermonitor/ssh/crypto/digest/Digest;

    invoke-interface {v0, p1}, Lcom/odinnet/servermonitor/ssh/crypto/digest/Digest;->update([B)V

    .line 46
    return-void
.end method

.method public updateUINT32(I)V
    .locals 2
    .param p1, "v"    # I

    .prologue
    .line 50
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/HashForSSH2Types;->md:Lcom/odinnet/servermonitor/ssh/crypto/digest/Digest;

    shr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    invoke-interface {v0, v1}, Lcom/odinnet/servermonitor/ssh/crypto/digest/Digest;->update(B)V

    .line 51
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/HashForSSH2Types;->md:Lcom/odinnet/servermonitor/ssh/crypto/digest/Digest;

    shr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    invoke-interface {v0, v1}, Lcom/odinnet/servermonitor/ssh/crypto/digest/Digest;->update(B)V

    .line 52
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/HashForSSH2Types;->md:Lcom/odinnet/servermonitor/ssh/crypto/digest/Digest;

    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    invoke-interface {v0, v1}, Lcom/odinnet/servermonitor/ssh/crypto/digest/Digest;->update(B)V

    .line 53
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/crypto/digest/HashForSSH2Types;->md:Lcom/odinnet/servermonitor/ssh/crypto/digest/Digest;

    int-to-byte v1, p1

    invoke-interface {v0, v1}, Lcom/odinnet/servermonitor/ssh/crypto/digest/Digest;->update(B)V

    .line 54
    return-void
.end method
