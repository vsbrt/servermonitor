.class public Lcom/odinnet/servermonitor/ssh/crypto/dh/DhGroupExchange;
.super Ljava/lang/Object;
.source "DhGroupExchange.java"


# instance fields
.field private e:Ljava/math/BigInteger;

.field private f:Ljava/math/BigInteger;

.field private g:Ljava/math/BigInteger;

.field private k:Ljava/math/BigInteger;

.field private p:Ljava/math/BigInteger;

.field private x:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0
    .param p1, "p"    # Ljava/math/BigInteger;
    .param p2, "g"    # Ljava/math/BigInteger;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/odinnet/servermonitor/ssh/crypto/dh/DhGroupExchange;->p:Ljava/math/BigInteger;

    .line 40
    iput-object p2, p0, Lcom/odinnet/servermonitor/ssh/crypto/dh/DhGroupExchange;->g:Ljava/math/BigInteger;

    .line 41
    return-void
.end method


# virtual methods
.method public calculateH([B[B[B[B[BLcom/odinnet/servermonitor/ssh/DHGexParameters;)[B
    .locals 2
    .param p1, "clientversion"    # [B
    .param p2, "serverversion"    # [B
    .param p3, "clientKexPayload"    # [B
    .param p4, "serverKexPayload"    # [B
    .param p5, "hostKey"    # [B
    .param p6, "para"    # Lcom/odinnet/servermonitor/ssh/DHGexParameters;

    .prologue
    .line 93
    new-instance v0, Lcom/odinnet/servermonitor/ssh/crypto/digest/HashForSSH2Types;

    const-string v1, "SHA1"

    invoke-direct {v0, v1}, Lcom/odinnet/servermonitor/ssh/crypto/digest/HashForSSH2Types;-><init>(Ljava/lang/String;)V

    .line 95
    .local v0, "hash":Lcom/odinnet/servermonitor/ssh/crypto/digest/HashForSSH2Types;
    invoke-virtual {v0, p1}, Lcom/odinnet/servermonitor/ssh/crypto/digest/HashForSSH2Types;->updateByteString([B)V

    .line 96
    invoke-virtual {v0, p2}, Lcom/odinnet/servermonitor/ssh/crypto/digest/HashForSSH2Types;->updateByteString([B)V

    .line 97
    invoke-virtual {v0, p3}, Lcom/odinnet/servermonitor/ssh/crypto/digest/HashForSSH2Types;->updateByteString([B)V

    .line 98
    invoke-virtual {v0, p4}, Lcom/odinnet/servermonitor/ssh/crypto/digest/HashForSSH2Types;->updateByteString([B)V

    .line 99
    invoke-virtual {v0, p5}, Lcom/odinnet/servermonitor/ssh/crypto/digest/HashForSSH2Types;->updateByteString([B)V

    .line 100
    invoke-virtual {p6}, Lcom/odinnet/servermonitor/ssh/DHGexParameters;->getMin_group_len()I

    move-result v1

    if-lez v1, :cond_0

    .line 101
    invoke-virtual {p6}, Lcom/odinnet/servermonitor/ssh/DHGexParameters;->getMin_group_len()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/crypto/digest/HashForSSH2Types;->updateUINT32(I)V

    .line 102
    :cond_0
    invoke-virtual {p6}, Lcom/odinnet/servermonitor/ssh/DHGexParameters;->getPref_group_len()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/crypto/digest/HashForSSH2Types;->updateUINT32(I)V

    .line 103
    invoke-virtual {p6}, Lcom/odinnet/servermonitor/ssh/DHGexParameters;->getMax_group_len()I

    move-result v1

    if-lez v1, :cond_1

    .line 104
    invoke-virtual {p6}, Lcom/odinnet/servermonitor/ssh/DHGexParameters;->getMax_group_len()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/crypto/digest/HashForSSH2Types;->updateUINT32(I)V

    .line 105
    :cond_1
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/crypto/dh/DhGroupExchange;->p:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/crypto/digest/HashForSSH2Types;->updateBigInt(Ljava/math/BigInteger;)V

    .line 106
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/crypto/dh/DhGroupExchange;->g:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/crypto/digest/HashForSSH2Types;->updateBigInt(Ljava/math/BigInteger;)V

    .line 107
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/crypto/dh/DhGroupExchange;->e:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/crypto/digest/HashForSSH2Types;->updateBigInt(Ljava/math/BigInteger;)V

    .line 108
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/crypto/dh/DhGroupExchange;->f:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/crypto/digest/HashForSSH2Types;->updateBigInt(Ljava/math/BigInteger;)V

    .line 109
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/crypto/dh/DhGroupExchange;->k:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/crypto/digest/HashForSSH2Types;->updateBigInt(Ljava/math/BigInteger;)V

    .line 111
    invoke-virtual {v0}, Lcom/odinnet/servermonitor/ssh/crypto/digest/HashForSSH2Types;->getDigest()[B

    move-result-object v1

    return-object v1
.end method

.method public getE()Ljava/math/BigInteger;
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/crypto/dh/DhGroupExchange;->e:Ljava/math/BigInteger;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/crypto/dh/DhGroupExchange;->e:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getK()Ljava/math/BigInteger;
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/crypto/dh/DhGroupExchange;->k:Ljava/math/BigInteger;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Shared secret not yet known, need f first!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/crypto/dh/DhGroupExchange;->k:Ljava/math/BigInteger;

    return-object v0
.end method

.method public init(Ljava/security/SecureRandom;)V
    .locals 3
    .param p1, "rnd"    # Ljava/security/SecureRandom;

    .prologue
    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/crypto/dh/DhGroupExchange;->k:Ljava/math/BigInteger;

    .line 47
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/crypto/dh/DhGroupExchange;->p:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-direct {v0, v1, p1}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/crypto/dh/DhGroupExchange;->x:Ljava/math/BigInteger;

    .line 48
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/crypto/dh/DhGroupExchange;->g:Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/crypto/dh/DhGroupExchange;->x:Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/crypto/dh/DhGroupExchange;->p:Ljava/math/BigInteger;

    invoke-virtual {v0, v1, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/crypto/dh/DhGroupExchange;->e:Ljava/math/BigInteger;

    .line 49
    return-void
.end method

.method public setF(Ljava/math/BigInteger;)V
    .locals 3
    .param p1, "f"    # Ljava/math/BigInteger;

    .prologue
    .line 78
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/crypto/dh/DhGroupExchange;->e:Ljava/math/BigInteger;

    if-nez v1, :cond_0

    .line 79
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Not initialized!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 81
    :cond_0
    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    .line 83
    .local v0, "zero":Ljava/math/BigInteger;
    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gez v1, :cond_1

    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/crypto/dh/DhGroupExchange;->p:Ljava/math/BigInteger;

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gtz v1, :cond_2

    .line 84
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid f specified!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 86
    :cond_2
    iput-object p1, p0, Lcom/odinnet/servermonitor/ssh/crypto/dh/DhGroupExchange;->f:Ljava/math/BigInteger;

    .line 87
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/crypto/dh/DhGroupExchange;->x:Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/crypto/dh/DhGroupExchange;->p:Ljava/math/BigInteger;

    invoke-virtual {p1, v1, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, p0, Lcom/odinnet/servermonitor/ssh/crypto/dh/DhGroupExchange;->k:Ljava/math/BigInteger;

    .line 88
    return-void
.end method
