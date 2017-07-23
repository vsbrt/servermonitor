.class public Lcom/odinnet/servermonitor/ssh/signature/DSASHA1Verify;
.super Ljava/lang/Object;
.source "DSASHA1Verify.java"


# static fields
.field private static final log:Lcom/odinnet/servermonitor/ssh/log/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/odinnet/servermonitor/ssh/signature/DSASHA1Verify;

    invoke-static {v0}, Lcom/odinnet/servermonitor/ssh/log/Logger;->getLogger(Ljava/lang/Class;)Lcom/odinnet/servermonitor/ssh/log/Logger;

    move-result-object v0

    sput-object v0, Lcom/odinnet/servermonitor/ssh/signature/DSASHA1Verify;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeSSHDSAPublicKey([B)Lcom/odinnet/servermonitor/ssh/signature/DSAPublicKey;
    .locals 8
    .param p0, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26
    new-instance v4, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;

    invoke-direct {v4, p0}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;-><init>([B)V

    .line 28
    .local v4, "tr":Lcom/odinnet/servermonitor/ssh/packets/TypesReader;
    invoke-virtual {v4}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object v1

    .line 30
    .local v1, "key_format":Ljava/lang/String;
    const-string v6, "ssh-dss"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 31
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "This is not a ssh-dss public key!"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 33
    :cond_0
    invoke-virtual {v4}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readMPINT()Ljava/math/BigInteger;

    move-result-object v2

    .line 34
    .local v2, "p":Ljava/math/BigInteger;
    invoke-virtual {v4}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readMPINT()Ljava/math/BigInteger;

    move-result-object v3

    .line 35
    .local v3, "q":Ljava/math/BigInteger;
    invoke-virtual {v4}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readMPINT()Ljava/math/BigInteger;

    move-result-object v0

    .line 36
    .local v0, "g":Ljava/math/BigInteger;
    invoke-virtual {v4}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readMPINT()Ljava/math/BigInteger;

    move-result-object v5

    .line 38
    .local v5, "y":Ljava/math/BigInteger;
    invoke-virtual {v4}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->remain()I

    move-result v6

    if-eqz v6, :cond_1

    .line 39
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Padding in DSA public key!"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 41
    :cond_1
    new-instance v6, Lcom/odinnet/servermonitor/ssh/signature/DSAPublicKey;

    invoke-direct {v6, v2, v3, v0, v5}, Lcom/odinnet/servermonitor/ssh/signature/DSAPublicKey;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v6
.end method

.method public static decodeSSHDSASignature([B)Lcom/odinnet/servermonitor/ssh/signature/DSASignature;
    .locals 12
    .param p0, "sig"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x28

    const/4 v7, 0x1

    const/4 v11, 0x0

    const/16 v10, 0x14

    .line 83
    const/4 v1, 0x0

    .line 85
    .local v1, "rsArray":[B
    array-length v6, p0

    if-ne v6, v8, :cond_2

    .line 88
    move-object v1, p0

    .line 111
    :cond_0
    new-array v4, v10, [B

    .line 113
    .local v4, "tmp":[B
    invoke-static {v1, v11, v4, v11, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v7, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 116
    .local v0, "r":Ljava/math/BigInteger;
    invoke-static {v1, v10, v4, v11, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 117
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v7, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 119
    .local v2, "s":Ljava/math/BigInteger;
    sget-object v6, Lcom/odinnet/servermonitor/ssh/signature/DSASHA1Verify;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    invoke-virtual {v6}, Lcom/odinnet/servermonitor/ssh/log/Logger;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 121
    sget-object v6, Lcom/odinnet/servermonitor/ssh/signature/DSASHA1Verify;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    const/16 v7, 0x1e

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "decoded ssh-dss signature: first bytes r("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-byte v9, v1, v11

    and-int/lit16 v9, v9, 0xff

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "), s("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-byte v9, v1, v10

    and-int/lit16 v9, v9, 0xff

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/odinnet/servermonitor/ssh/log/Logger;->log(ILjava/lang/String;)V

    .line 125
    :cond_1
    new-instance v6, Lcom/odinnet/servermonitor/ssh/signature/DSASignature;

    invoke-direct {v6, v0, v2}, Lcom/odinnet/servermonitor/ssh/signature/DSASignature;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v6

    .line 93
    .end local v0    # "r":Ljava/math/BigInteger;
    .end local v2    # "s":Ljava/math/BigInteger;
    .end local v4    # "tmp":[B
    :cond_2
    new-instance v5, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;

    invoke-direct {v5, p0}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;-><init>([B)V

    .line 95
    .local v5, "tr":Lcom/odinnet/servermonitor/ssh/packets/TypesReader;
    invoke-virtual {v5}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object v3

    .line 97
    .local v3, "sig_format":Ljava/lang/String;
    const-string v6, "ssh-dss"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 98
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Peer sent wrong signature format"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 100
    :cond_3
    invoke-virtual {v5}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readByteString()[B

    move-result-object v1

    .line 102
    array-length v6, v1

    if-eq v6, v8, :cond_4

    .line 103
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Peer sent corrupt signature"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 105
    :cond_4
    invoke-virtual {v5}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->remain()I

    move-result v6

    if-eqz v6, :cond_0

    .line 106
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Padding in DSA signature!"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public static encodeSSHDSAPublicKey(Lcom/odinnet/servermonitor/ssh/signature/DSAPublicKey;)[B
    .locals 2
    .param p0, "pk"    # Lcom/odinnet/servermonitor/ssh/signature/DSAPublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    new-instance v0, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;

    invoke-direct {v0}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;-><init>()V

    .line 48
    .local v0, "tw":Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;
    const-string v1, "ssh-dss"

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/odinnet/servermonitor/ssh/signature/DSAPublicKey;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeMPInt(Ljava/math/BigInteger;)V

    .line 50
    invoke-virtual {p0}, Lcom/odinnet/servermonitor/ssh/signature/DSAPublicKey;->getQ()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeMPInt(Ljava/math/BigInteger;)V

    .line 51
    invoke-virtual {p0}, Lcom/odinnet/servermonitor/ssh/signature/DSAPublicKey;->getG()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeMPInt(Ljava/math/BigInteger;)V

    .line 52
    invoke-virtual {p0}, Lcom/odinnet/servermonitor/ssh/signature/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeMPInt(Ljava/math/BigInteger;)V

    .line 54
    invoke-virtual {v0}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->getBytes()[B

    move-result-object v1

    return-object v1
.end method

.method public static encodeSSHDSASignature(Lcom/odinnet/servermonitor/ssh/signature/DSASignature;)[B
    .locals 9
    .param p0, "ds"    # Lcom/odinnet/servermonitor/ssh/signature/DSASignature;

    .prologue
    const/16 v8, 0x28

    const/16 v7, 0x14

    .line 59
    new-instance v5, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;

    invoke-direct {v5}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;-><init>()V

    .line 61
    .local v5, "tw":Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;
    const-string v6, "ssh-dss"

    invoke-virtual {v5, v6}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lcom/odinnet/servermonitor/ssh/signature/DSASignature;->getR()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    .line 64
    .local v1, "r":[B
    invoke-virtual {p0}, Lcom/odinnet/servermonitor/ssh/signature/DSASignature;->getS()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    .line 66
    .local v3, "s":[B
    new-array v0, v8, [B

    .line 70
    .local v0, "a40":[B
    array-length v6, v1

    if-ge v6, v7, :cond_0

    array-length v6, v1

    move v2, v6

    .line 71
    .local v2, "r_copylen":I
    :goto_0
    array-length v6, v3

    if-ge v6, v7, :cond_1

    array-length v6, v3

    move v4, v6

    .line 73
    .local v4, "s_copylen":I
    :goto_1
    array-length v6, v1

    sub-int/2addr v6, v2

    sub-int/2addr v7, v2

    invoke-static {v1, v6, v0, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    array-length v6, v3

    sub-int/2addr v6, v4

    sub-int v7, v8, v4

    invoke-static {v3, v6, v0, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 76
    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6, v8}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeString([BII)V

    .line 78
    invoke-virtual {v5}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->getBytes()[B

    move-result-object v6

    return-object v6

    .end local v2    # "r_copylen":I
    .end local v4    # "s_copylen":I
    :cond_0
    move v2, v7

    .line 70
    goto :goto_0

    .restart local v2    # "r_copylen":I
    :cond_1
    move v4, v7

    .line 71
    goto :goto_1
.end method

.method public static generateSignature([BLcom/odinnet/servermonitor/ssh/signature/DSAPrivateKey;Ljava/security/SecureRandom;)Lcom/odinnet/servermonitor/ssh/signature/DSASignature;
    .locals 9
    .param p0, "message"    # [B
    .param p1, "pk"    # Lcom/odinnet/servermonitor/ssh/signature/DSAPrivateKey;
    .param p2, "rnd"    # Ljava/security/SecureRandom;

    .prologue
    .line 187
    new-instance v2, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;

    invoke-direct {v2}, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;-><init>()V

    .line 188
    .local v2, "md":Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;
    invoke-virtual {v2, p0}, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->update([B)V

    .line 189
    invoke-virtual {v2}, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->getDigestLength()I

    move-result v7

    new-array v6, v7, [B

    .line 190
    .local v6, "sha_message":[B
    invoke-virtual {v2, v6}, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->digest([B)V

    .line 192
    new-instance v1, Ljava/math/BigInteger;

    const/4 v7, 0x1

    invoke-direct {v1, v7, v6}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 194
    .local v1, "m":Ljava/math/BigInteger;
    invoke-virtual {p1}, Lcom/odinnet/servermonitor/ssh/signature/DSAPrivateKey;->getQ()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    .line 198
    .local v3, "qBitLength":I
    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v3, p2}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    .line 200
    .local v0, "k":Ljava/math/BigInteger;
    invoke-virtual {p1}, Lcom/odinnet/servermonitor/ssh/signature/DSAPrivateKey;->getQ()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v7

    if-gez v7, :cond_0

    .line 202
    invoke-virtual {p1}, Lcom/odinnet/servermonitor/ssh/signature/DSAPrivateKey;->getG()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {p1}, Lcom/odinnet/servermonitor/ssh/signature/DSAPrivateKey;->getP()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v7, v0, v8}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {p1}, Lcom/odinnet/servermonitor/ssh/signature/DSAPrivateKey;->getQ()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 204
    .local v4, "r":Ljava/math/BigInteger;
    invoke-virtual {p1}, Lcom/odinnet/servermonitor/ssh/signature/DSAPrivateKey;->getQ()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {p1}, Lcom/odinnet/servermonitor/ssh/signature/DSAPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 206
    invoke-virtual {p1}, Lcom/odinnet/servermonitor/ssh/signature/DSAPrivateKey;->getQ()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 208
    .local v5, "s":Ljava/math/BigInteger;
    new-instance v7, Lcom/odinnet/servermonitor/ssh/signature/DSASignature;

    invoke-direct {v7, v4, v5}, Lcom/odinnet/servermonitor/ssh/signature/DSASignature;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v7
.end method

.method public static verifySignature([BLcom/odinnet/servermonitor/ssh/signature/DSASignature;Lcom/odinnet/servermonitor/ssh/signature/DSAPublicKey;)Z
    .locals 9
    .param p0, "message"    # [B
    .param p1, "ds"    # Lcom/odinnet/servermonitor/ssh/signature/DSASignature;
    .param p2, "dpk"    # Lcom/odinnet/servermonitor/ssh/signature/DSAPublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    new-instance v0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;

    invoke-direct {v0}, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;-><init>()V

    .line 133
    .local v0, "md":Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;
    invoke-virtual {v0, p0}, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->update([B)V

    .line 134
    invoke-virtual {v0}, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->getDigestLength()I

    move-result p0

    .end local p0    # "message":[B
    new-array p0, p0, [B

    .line 135
    .local p0, "sha_message":[B
    invoke-virtual {v0, p0}, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->digest([B)V

    .line 137
    new-instance v0, Ljava/math/BigInteger;

    .end local v0    # "md":Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;
    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 139
    .local v0, "m":Ljava/math/BigInteger;
    invoke-virtual {p1}, Lcom/odinnet/servermonitor/ssh/signature/DSASignature;->getR()Ljava/math/BigInteger;

    move-result-object v2

    .line 140
    .local v2, "r":Ljava/math/BigInteger;
    invoke-virtual {p1}, Lcom/odinnet/servermonitor/ssh/signature/DSASignature;->getS()Ljava/math/BigInteger;

    move-result-object v3

    .line 142
    .local v3, "s":Ljava/math/BigInteger;
    invoke-virtual {p2}, Lcom/odinnet/servermonitor/ssh/signature/DSAPublicKey;->getG()Ljava/math/BigInteger;

    move-result-object p0

    .line 143
    .local p0, "g":Ljava/math/BigInteger;
    invoke-virtual {p2}, Lcom/odinnet/servermonitor/ssh/signature/DSAPublicKey;->getP()Ljava/math/BigInteger;

    move-result-object p1

    .line 144
    .local p1, "p":Ljava/math/BigInteger;
    invoke-virtual {p2}, Lcom/odinnet/servermonitor/ssh/signature/DSAPublicKey;->getQ()Ljava/math/BigInteger;

    move-result-object v1

    .line 145
    .local v1, "q":Ljava/math/BigInteger;
    invoke-virtual {p2}, Lcom/odinnet/servermonitor/ssh/signature/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v4

    .line 147
    .local v4, "y":Ljava/math/BigInteger;
    sget-object p2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 149
    .local p2, "zero":Ljava/math/BigInteger;
    sget-object v5, Lcom/odinnet/servermonitor/ssh/signature/DSASHA1Verify;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    invoke-virtual {v5}, Lcom/odinnet/servermonitor/ssh/log/Logger;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 151
    sget-object v5, Lcom/odinnet/servermonitor/ssh/signature/DSASHA1Verify;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    const/16 v6, 0x3c

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ssh-dss signature: m: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x10

    invoke-virtual {v0, v8}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/odinnet/servermonitor/ssh/log/Logger;->log(ILjava/lang/String;)V

    .line 152
    sget-object v5, Lcom/odinnet/servermonitor/ssh/signature/DSASHA1Verify;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    const/16 v6, 0x3c

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ssh-dss signature: r: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x10

    invoke-virtual {v2, v8}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/odinnet/servermonitor/ssh/log/Logger;->log(ILjava/lang/String;)V

    .line 153
    sget-object v5, Lcom/odinnet/servermonitor/ssh/signature/DSASHA1Verify;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    const/16 v6, 0x3c

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ssh-dss signature: s: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x10

    invoke-virtual {v3, v8}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/odinnet/servermonitor/ssh/log/Logger;->log(ILjava/lang/String;)V

    .line 154
    sget-object v5, Lcom/odinnet/servermonitor/ssh/signature/DSASHA1Verify;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    const/16 v6, 0x3c

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ssh-dss signature: g: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x10

    invoke-virtual {p0, v8}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/odinnet/servermonitor/ssh/log/Logger;->log(ILjava/lang/String;)V

    .line 155
    sget-object v5, Lcom/odinnet/servermonitor/ssh/signature/DSASHA1Verify;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    const/16 v6, 0x3c

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ssh-dss signature: p: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x10

    invoke-virtual {p1, v8}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/odinnet/servermonitor/ssh/log/Logger;->log(ILjava/lang/String;)V

    .line 156
    sget-object v5, Lcom/odinnet/servermonitor/ssh/signature/DSASHA1Verify;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    const/16 v6, 0x3c

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ssh-dss signature: q: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x10

    invoke-virtual {v1, v8}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/odinnet/servermonitor/ssh/log/Logger;->log(ILjava/lang/String;)V

    .line 157
    sget-object v5, Lcom/odinnet/servermonitor/ssh/signature/DSASHA1Verify;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    const/16 v6, 0x3c

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ssh-dss signature: y: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x10

    invoke-virtual {v4, v8}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/odinnet/servermonitor/ssh/log/Logger;->log(ILjava/lang/String;)V

    .line 160
    :cond_0
    invoke-virtual {p2, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v5

    if-gez v5, :cond_1

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v5

    if-gtz v5, :cond_2

    .line 162
    :cond_1
    sget-object p0, Lcom/odinnet/servermonitor/ssh/signature/DSASHA1Verify;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    .end local p0    # "g":Ljava/math/BigInteger;
    const/16 p1, 0x14

    const-string p2, "ssh-dss signature: zero.compareTo(r) >= 0 || q.compareTo(r) <= 0"

    .end local p1    # "p":Ljava/math/BigInteger;
    .end local p2    # "zero":Ljava/math/BigInteger;
    invoke-virtual {p0, p1, p2}, Lcom/odinnet/servermonitor/ssh/log/Logger;->log(ILjava/lang/String;)V

    .line 163
    const/4 p0, 0x0

    .line 182
    .end local v0    # "m":Ljava/math/BigInteger;
    .end local v3    # "s":Ljava/math/BigInteger;
    :goto_0
    return p0

    .line 166
    .restart local v0    # "m":Ljava/math/BigInteger;
    .restart local v3    # "s":Ljava/math/BigInteger;
    .restart local p0    # "g":Ljava/math/BigInteger;
    .restart local p1    # "p":Ljava/math/BigInteger;
    .restart local p2    # "zero":Ljava/math/BigInteger;
    :cond_2
    invoke-virtual {p2, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p2

    .end local p2    # "zero":Ljava/math/BigInteger;
    if-gez p2, :cond_3

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p2

    if-gtz p2, :cond_4

    .line 168
    :cond_3
    sget-object p0, Lcom/odinnet/servermonitor/ssh/signature/DSASHA1Verify;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    .end local p0    # "g":Ljava/math/BigInteger;
    const/16 p1, 0x14

    const-string p2, "ssh-dss signature: zero.compareTo(s) >= 0 || q.compareTo(s) <= 0"

    .end local p1    # "p":Ljava/math/BigInteger;
    invoke-virtual {p0, p1, p2}, Lcom/odinnet/servermonitor/ssh/log/Logger;->log(ILjava/lang/String;)V

    .line 169
    const/4 p0, 0x0

    goto :goto_0

    .line 172
    .restart local p0    # "g":Ljava/math/BigInteger;
    .restart local p1    # "p":Ljava/math/BigInteger;
    :cond_4
    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 174
    .local v3, "w":Ljava/math/BigInteger;
    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    .line 175
    .local p2, "u1":Ljava/math/BigInteger;
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .end local v0    # "m":Ljava/math/BigInteger;
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 177
    .local v0, "u2":Ljava/math/BigInteger;
    invoke-virtual {p0, p2, p1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    .line 178
    .end local p2    # "u1":Ljava/math/BigInteger;
    .local p0, "u1":Ljava/math/BigInteger;
    invoke-virtual {v4, v0, p1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    .line 180
    .end local v0    # "u2":Ljava/math/BigInteger;
    .local p2, "u2":Ljava/math/BigInteger;
    invoke-virtual {p0, p2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    .end local p0    # "u1":Ljava/math/BigInteger;
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    .line 182
    .local p0, "v":Ljava/math/BigInteger;
    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_0
.end method
